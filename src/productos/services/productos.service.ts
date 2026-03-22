import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { DataSource, Repository } from 'typeorm';
import { Producto, CategoriaProducto } from '../entities/producto.entity';
import { CreateProductoDto } from '../dto/create-producto.dto';
import { Lote } from '../../lotes/entities/lote.entity';
import {
  Movimiento,
  TipoMovimiento,
} from '../../movimientos/entities/movimiento.entity';
import { UpdateProductoDto } from '../dto/update.producto.dto';

type ParametrosListaProductos = {
  nombre?: string;
  categoria?: CategoriaProducto;
};

export type ProductoResumen = {
  id: string;
  nombre: string;
  descripcion: string | null;
  categoria: CategoriaProducto;
  cantidad: number;
  unidad: string;
  ultimaActualizacion: Date;
};

type FilaProductoResumen = {
  id: string;
  nombre: string;
  descripcion: string | null;
  categoria: CategoriaProducto;
  cantidad: string | number | null;
  unidad: string;
  ultimaActualizacion: string | Date | null;
};

@Injectable()
export class ProductosService {
  constructor(
    private readonly dataSource: DataSource,
    @InjectRepository(Producto) private readonly repo: Repository<Producto>,
  ) {}

  async listar(
    parametros: ParametrosListaProductos = {},
  ): Promise<ProductoResumen[]> {
    const consulta = this.repo
      .createQueryBuilder('p')
      .leftJoin('p.lotes', 'l')
      .leftJoin(Movimiento, 'm', 'm.productoId = p.id')
      .select('p.id', 'id')
      .addSelect('p.nombre', 'nombre')
      .addSelect('p.descripcion', 'descripcion')
      .addSelect('p.categoria', 'categoria')
      .addSelect('p.unidad', 'unidad')
      .addSelect('COALESCE(SUM(l.cantidadActual), 0)', 'cantidad')
      .addSelect('COALESCE(MAX(m.fecha), p.updatedAt)', 'ultimaActualizacion')
      .groupBy('p.id')
      .addGroupBy('p.nombre')
      .addGroupBy('p.descripcion')
      .addGroupBy('p.categoria')
      .addGroupBy('p.unidad')
      .addGroupBy('p.updatedAt')
      .orderBy('p.nombre', 'ASC');

    if (parametros.nombre?.trim()) {
      consulta.andWhere('LOWER(p.nombre) LIKE :nombre', {
        nombre: `%${parametros.nombre.trim().toLowerCase()}%`,
      });
    }

    if (parametros.categoria) {
      consulta.andWhere('p.categoria = :categoria', {
        categoria: parametros.categoria,
      });
    }

    const filas = await consulta.getRawMany<FilaProductoResumen>();

    return filas.map((fila) => ({
      id: fila.id,
      nombre: fila.nombre,
      descripcion: fila.descripcion ?? null,
      categoria: fila.categoria,
      cantidad: Number(fila.cantidad ?? 0),
      unidad: fila.unidad,
      ultimaActualizacion: new Date(
        fila.ultimaActualizacion ?? new Date().toISOString(),
      ),
    }));
  }

  async crear(dto: CreateProductoDto, usuarioId: string) {
    return this.dataSource.transaction(async (manager) => {
      const productoRepo = manager.getRepository(Producto);
      const loteRepo = manager.getRepository(Lote);
      const movimientoRepo = manager.getRepository(Movimiento);

      const producto = productoRepo.create({
        nombre: dto.nombre.trim(),
        unidad: dto.unidad,
        descripcion: dto.descripcion?.trim() ? dto.descripcion.trim() : null,
        categoria: dto.categoria ?? CategoriaProducto.BODEGA_ABARROTES,
      });

      const productoGuardado = await productoRepo.save(producto);
      const cantidadInicial = Number(dto.cantidadInicial ?? 0);

      if (cantidadInicial > 0) {
        const codigoLote =
          dto.codigoLote?.trim() || `INI-${productoGuardado.id.slice(0, 8)}`;

        const lote = loteRepo.create({
          productoId: productoGuardado.id,
          codigoLote,
          fechaVencimiento: null,
          activo: true,
          cantidadActual: cantidadInicial,
        });

        const loteGuardado = await loteRepo.save(lote);

        const movimiento = movimientoRepo.create({
          tipo: TipoMovimiento.ENTRADA,
          cantidad: cantidadInicial,
          motivo: dto.motivo?.trim() || 'Stock inicial',
          usuarioId,
          loteId: loteGuardado.id,
          productoId: productoGuardado.id,
        });

        await movimientoRepo.save(movimiento);
      }

      return productoGuardado;
    });
  }

  async actualizar(id: string, dto: UpdateProductoDto, usuarioId: string) {
    return this.dataSource.transaction(async (manager) => {
      const productoRepo = manager.getRepository(Producto);
      const loteRepo = manager.getRepository(Lote);
      const movimientoRepo = manager.getRepository(Movimiento);

      const producto = await productoRepo.findOne({ where: { id } });
      if (!producto) throw new NotFoundException('Producto no existe');

      if (dto.nombre !== undefined) producto.nombre = dto.nombre.trim();
      if (dto.descripcion !== undefined) {
        producto.descripcion = dto.descripcion?.trim()
          ? dto.descripcion.trim()
          : null;
      }
      if (dto.categoria !== undefined) producto.categoria = dto.categoria;
      if (dto.unidad !== undefined) producto.unidad = dto.unidad;

      await productoRepo.save(producto);

      if (dto.cantidad !== undefined) {
        const cantidadDeseada = Number(dto.cantidad ?? 0);
        const totalActual = await loteRepo
          .createQueryBuilder('l')
          .select('COALESCE(SUM(l.cantidadActual), 0)', 'total')
          .where('l.productoId = :id', { id })
          .getRawOne<{ total: string | number }>();

        const cantidadActual = Number(totalActual?.total ?? 0);
        const diferencia = Number(
          (cantidadDeseada - cantidadActual).toFixed(2),
        );
        const motivo = dto.motivo?.trim() || 'Ajuste por edicion';

        if (diferencia > 0) {
          await this.sumarStock(
            loteRepo,
            movimientoRepo,
            id,
            diferencia,
            motivo,
            usuarioId,
          );
        }

        if (diferencia < 0) {
          await this.restarStock(
            loteRepo,
            movimientoRepo,
            id,
            Math.abs(diferencia),
            motivo,
            usuarioId,
          );
        }
      }

      return { ok: true };
    });
  }

  async eliminar(id: string) {
    return this.dataSource.transaction(async (manager) => {
      const productoRepo = manager.getRepository(Producto);
      const loteRepo = manager.getRepository(Lote);
      const movimientoRepo = manager.getRepository(Movimiento);

      const producto = await productoRepo.findOne({ where: { id } });
      if (!producto) throw new NotFoundException('Producto no existe');

      await movimientoRepo.delete({ productoId: id });
      await loteRepo.delete({ productoId: id });
      await productoRepo.delete({ id });

      return { ok: true };
    });
  }

  private async sumarStock(
    loteRepo: Repository<Lote>,
    movimientoRepo: Repository<Movimiento>,
    productoId: string,
    cantidad: number,
    motivo: string,
    usuarioId: string,
  ) {
    const codigoLote = `AJUSTE-${productoId.slice(0, 8)}`;

    let lote = await loteRepo.findOne({
      where: { productoId, codigoLote },
    });

    if (!lote) {
      lote = loteRepo.create({
        productoId,
        codigoLote,
        fechaVencimiento: null,
        activo: true,
        cantidadActual: 0,
      });
      lote = await loteRepo.save(lote);
    }

    lote.cantidadActual = Number(lote.cantidadActual) + cantidad;
    await loteRepo.save(lote);

    await movimientoRepo.save(
      movimientoRepo.create({
        tipo: TipoMovimiento.ENTRADA,
        cantidad,
        motivo,
        usuarioId,
        loteId: lote.id,
        productoId,
      }),
    );
  }

  private async restarStock(
    loteRepo: Repository<Lote>,
    movimientoRepo: Repository<Movimiento>,
    productoId: string,
    cantidad: number,
    motivo: string,
    usuarioId: string,
  ) {
    let cantidadPorRestar = cantidad;

    const lotes = await loteRepo
      .createQueryBuilder('l')
      .where('l.productoId = :id', { id: productoId })
      .andWhere('l.cantidadActual > 0')
      .orderBy('CASE WHEN l.fechaVencimiento IS NULL THEN 1 ELSE 0 END', 'ASC')
      .addOrderBy('l.fechaVencimiento', 'ASC')
      .addOrderBy('l.id', 'ASC')
      .getMany();

    const totalDisponible = lotes.reduce(
      (acumulado, lote) => acumulado + Number(lote.cantidadActual ?? 0),
      0,
    );

    if (totalDisponible + 1e-9 < cantidadPorRestar) {
      throw new BadRequestException('Stock insuficiente para ajustar');
    }

    for (const lote of lotes) {
      if (cantidadPorRestar <= 0) break;

      const disponible = Number(lote.cantidadActual ?? 0);
      if (disponible <= 0) continue;

      const cantidadTomada = Math.min(disponible, cantidadPorRestar);
      lote.cantidadActual = Number((disponible - cantidadTomada).toFixed(2));
      await loteRepo.save(lote);

      await movimientoRepo.save(
        movimientoRepo.create({
          tipo: TipoMovimiento.SALIDA,
          cantidad: cantidadTomada,
          motivo,
          usuarioId,
          loteId: lote.id,
          productoId,
        }),
      );

      cantidadPorRestar = Number(
        (cantidadPorRestar - cantidadTomada).toFixed(2),
      );
    }
  }
}
