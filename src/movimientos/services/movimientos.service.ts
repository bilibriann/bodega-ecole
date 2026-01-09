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

    const mov = this.movRepo.create({
      tipo: TipoMovimiento.ENTRADA,
      cantidad: dto.cantidad,
      motivo: dto.motivo,
      usuarioId,
      loteId: lote.id,
      productoId: lote.productoId,
    });

    const saved = await this.movRepo.save(mov);
    return { movimiento: saved, loteStockActual: lote.cantidadActual };
  }

  async crearSalida(
    dto: CrearSalidaDto,
    usuarioId: string,
  ): Promise<CrearSalidaResponse> {
    if (!dto.items?.length) {
      throw new BadRequestException('La salida debe tener items');
    }

    // Agrupar por loteId (por si repiten lote en el body)
    const porLote = new Map<string, number>();
    for (const it of dto.items) {
      porLote.set(it.loteId, (porLote.get(it.loteId) ?? 0) + it.cantidad);
    }
    const loteIds = [...porLote.keys()];

    return this.dataSource.transaction(async (manager) => {
      const loteRepo = manager.getRepository(Lote);
      const movimientoRepo = manager.getRepository(Movimiento);

      // Lock pesimista para evitar doble descuento en concurrencia
      const lotes = await loteRepo
        .createQueryBuilder('l')
        .setLock('pessimistic_write')
        .where('l.id IN (:...ids)', { ids: loteIds })
        .getMany();

      if (lotes.length !== loteIds.length) {
        throw new BadRequestException('Uno o más lotes no existen');
      }

      for (const l of lotes) {
        if (!l.activo) {
          throw new BadRequestException(`Lote ${l.codigoLote} está inactivo`);
        }
      }

      // Validar stock (usando total agrupado)
      for (const l of lotes) {
        const requerido = porLote.get(l.id);
        if (requerido === undefined) continue;

        if (requerido > l.cantidadActual) {
          throw new BadRequestException(
            `Stock insuficiente en lote ${l.codigoLote}`,
          );
        }
      }

      // 1) descontar una vez por lote (usando el total)
      for (const l of lotes) {
        const requerido = porLote.get(l.id);
        if (requerido === undefined) continue;

        l.cantidadActual = l.cantidadActual - requerido;
        await loteRepo.save(l);
      }

      // 2) crear movimientos por item original (trazabilidad fiel al request)
      const movimientos: Movimiento[] = [];

      for (const it of dto.items) {
        const lote = lotes.find((x) => x.id === it.loteId);
        if (!lote) {
          throw new BadRequestException('Lote no encontrado en transacción');
        }

        const mov = movimientoRepo.create({
          tipo: TipoMovimiento.SALIDA,
          cantidad: it.cantidad,
          motivo: dto.motivo,
          usuarioId,
          loteId: lote.id,
          productoId: lote.productoId,
        });

        movimientos.push(await movimientoRepo.save(mov));
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
