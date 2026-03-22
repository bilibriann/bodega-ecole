import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { DataSource, Repository } from 'typeorm';

import { Lote } from '../../lotes/entities/lote.entity';
import { CrearEntradaDto } from '../dto/crear-entrada.dto';
import { CrearSalidaDto } from '../dto/crear-salida.dto';
import { Movimiento, TipoMovimiento } from '../entities/movimiento.entity';

export type CrearEntradaResponse = {
  movimiento: Movimiento;
  loteStockActual: number;
};

export type CrearSalidaResponse = {
  movimientos: Movimiento[];
};

@Injectable()
export class MovimientosService {
  constructor(
    private readonly dataSource: DataSource,
    @InjectRepository(Lote)
    private readonly lotesRepo: Repository<Lote>,
    @InjectRepository(Movimiento)
    private readonly movRepo: Repository<Movimiento>,
  ) {}

  async crearEntrada(
    dto: CrearEntradaDto,
    usuarioId: string,
  ): Promise<CrearEntradaResponse> {
    const lote = await this.lotesRepo.findOne({ where: { id: dto.loteId } });

    if (!lote || !lote.activo) {
      throw new NotFoundException('Lote no encontrado o inactivo');
    }

    lote.cantidadActual = lote.cantidadActual + dto.cantidad;
    await this.lotesRepo.save(lote);

    const movimiento = this.movRepo.create({
      tipo: TipoMovimiento.ENTRADA,
      cantidad: dto.cantidad,
      motivo: dto.motivo,
      usuarioId,
      loteId: lote.id,
      productoId: lote.productoId,
    });

    const movimientoGuardado = await this.movRepo.save(movimiento);
    return {
      movimiento: movimientoGuardado,
      loteStockActual: lote.cantidadActual,
    };
  }

  async crearSalida(
    dto: CrearSalidaDto,
    usuarioId: string,
  ): Promise<CrearSalidaResponse> {
    if (!dto.items?.length) {
      throw new BadRequestException('La salida debe tener items');
    }

    const cantidadesPorLote = new Map<string, number>();
    for (const item of dto.items) {
      cantidadesPorLote.set(
        item.loteId,
        (cantidadesPorLote.get(item.loteId) ?? 0) + item.cantidad,
      );
    }

    const loteIds = [...cantidadesPorLote.keys()];

    return this.dataSource.transaction(async (manager) => {
      const loteRepo = manager.getRepository(Lote);
      const movimientoRepo = manager.getRepository(Movimiento);

      const lotes = await loteRepo
        .createQueryBuilder('l')
        .setLock('pessimistic_write')
        .where('l.id IN (:...ids)', { ids: loteIds })
        .getMany();

      if (lotes.length !== loteIds.length) {
        throw new BadRequestException('Uno o mas lotes no existen');
      }

      for (const lote of lotes) {
        if (!lote.activo) {
          throw new BadRequestException(
            `Lote ${lote.codigoLote} esta inactivo`,
          );
        }
      }

      for (const lote of lotes) {
        const cantidadPedida = cantidadesPorLote.get(lote.id);
        if (cantidadPedida === undefined) continue;

        if (cantidadPedida > lote.cantidadActual) {
          throw new BadRequestException(
            `Stock insuficiente en lote ${lote.codigoLote}`,
          );
        }
      }

      for (const lote of lotes) {
        const cantidadPedida = cantidadesPorLote.get(lote.id);
        if (cantidadPedida === undefined) continue;

        lote.cantidadActual = lote.cantidadActual - cantidadPedida;
        await loteRepo.save(lote);
      }

      const movimientos: Movimiento[] = [];

      for (const item of dto.items) {
        const lote = lotes.find((loteActual) => loteActual.id === item.loteId);
        if (!lote) {
          throw new BadRequestException('Lote no encontrado en transaccion');
        }

        const movimiento = movimientoRepo.create({
          tipo: TipoMovimiento.SALIDA,
          cantidad: item.cantidad,
          motivo: dto.motivo,
          usuarioId,
          loteId: lote.id,
          productoId: lote.productoId,
        });

        movimientos.push(await movimientoRepo.save(movimiento));
      }

      return { movimientos };
    });
  }

  async listar(): Promise<Movimiento[]> {
    return this.movRepo.find({ order: { fecha: 'DESC' } });
  }

  async listarPorLote(loteId: string): Promise<Movimiento[]> {
    return this.movRepo.find({
      where: { loteId },
      order: { fecha: 'DESC' },
    });
  }

  async listarPorProducto(productoId: string): Promise<Movimiento[]> {
    return this.movRepo.find({
      where: { productoId },
      order: { fecha: 'DESC' },
    });
  }
}
