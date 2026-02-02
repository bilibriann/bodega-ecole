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

type FindAllParams = { nombre?: string; categoria?: CategoriaProducto };

export type ProductoResumen = {
  id: string;
  nombre: string;
  descripcion: string | null;
  categoria: CategoriaProducto;
  cantidad: number;
  unidad: string;
  ultimaActualizacion: Date;
};

type RawProductoResumenRow = {
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

  async findAll(params: FindAllParams = {}): Promise<ProductoResumen[]> {
    const qb = this.repo
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

    if (params.nombre?.trim()) {
      qb.andWhere('LOWER(p.nombre) LIKE :nombre', {
        nombre: `%${params.nombre.trim().toLowerCase()}%`,
      });
    }

    if (params.categoria) {
      qb.andWhere('p.categoria = :categoria', { categoria: params.categoria });
    }

    const rows = await qb.getRawMany<RawProductoResumenRow>();

    return rows.map((r) => ({
      id: r.id,
      nombre: r.nombre,
      descripcion: r.descripcion ?? null,
      categoria: r.categoria,
      cantidad: Number(r.cantidad ?? 0),
      unidad: r.unidad,
      ultimaActualizacion: new Date(
        r.ultimaActualizacion ?? new Date().toISOString(),
      ),
    }));
  }

  async create(dto: CreateProductoDto, usuarioId: string) {
    return this.dataSource.transaction(async (manager) => {
      const productoRepo = manager.getRepository(Producto);
      const loteRepo = manager.getRepository(Lote);
      const movRepo = manager.getRepository(Movimiento);

      const producto = productoRepo.create({
        nombre: dto.nombre.trim(),
        unidad: dto.unidad,
        descripcion: dto.descripcion?.trim() ? dto.descripcion.trim() : null,
        categoria: dto.categoria ?? CategoriaProducto.BODEGA_ABARROTES,
      });

      const savedProducto = await productoRepo.save(producto);

      const cantidadInicial = Number(dto.cantidadInicial ?? 0);

      if (cantidadInicial > 0) {
        const codigoLote =
          dto.codigoLote?.trim() || `INI-${savedProducto.id.slice(0, 8)}`;

        const lote = loteRepo.create({
          productoId: savedProducto.id,
          codigoLote,
          fechaVencimiento: null,
          activo: true,
          cantidadActual: cantidadInicial,
        });

        const savedLote = await loteRepo.save(lote);

        const mov = movRepo.create({
          tipo: TipoMovimiento.ENTRADA,
          cantidad: cantidadInicial,
          motivo: dto.motivo?.trim() || 'Stock inicial',
          usuarioId,
          loteId: savedLote.id,
          productoId: savedProducto.id,
        });

        await movRepo.save(mov);
      }

      return savedProducto;
    });
  }

  // ✅ UPDATE (si ya lo tienes, puedes mantener el tuyo; este funciona con tu front)
  async update(id: string, dto: UpdateProductoDto, usuarioId: string) {
    return this.dataSource.transaction(async (manager) => {
      const productoRepo = manager.getRepository(Producto);
      const loteRepo = manager.getRepository(Lote);
      const movRepo = manager.getRepository(Movimiento);

      const producto = await productoRepo.findOne({ where: { id } });
      if (!producto) throw new NotFoundException('Producto no existe');

      if (dto.nombre !== undefined) producto.nombre = dto.nombre.trim();
      if (dto.descripcion !== undefined)
        producto.descripcion = dto.descripcion?.trim()
          ? dto.descripcion.trim()
          : null;
      if (dto.categoria !== undefined) producto.categoria = dto.categoria;
      if (dto.unidad !== undefined) producto.unidad = dto.unidad;

      await productoRepo.save(producto);

      if (dto.cantidad !== undefined) {
        const desired = Number(dto.cantidad ?? 0);

        const raw = await loteRepo
          .createQueryBuilder('l')
          .select('COALESCE(SUM(l.cantidadActual), 0)', 'total')
          .where('l.productoId = :id', { id })
          .getRawOne<{ total: string | number }>();

        const current = Number(raw?.total ?? 0);
        const delta = Number((desired - current).toFixed(2));
        const motivo = dto.motivo?.trim() || 'Ajuste por edición';

        if (delta > 0) {
          const codigoLote = `AJUSTE-${id.slice(0, 8)}`;

          let lote = await loteRepo.findOne({
            where: { productoId: id, codigoLote },
          });

          if (!lote) {
            lote = loteRepo.create({
              productoId: id,
              codigoLote,
              fechaVencimiento: null,
              activo: true,
              cantidadActual: 0,
            });
            lote = await loteRepo.save(lote);
          }

          lote.cantidadActual = Number(lote.cantidadActual) + delta;
          await loteRepo.save(lote);

          await movRepo.save(
            movRepo.create({
              tipo: TipoMovimiento.ENTRADA,
              cantidad: delta,
              motivo,
              usuarioId,
              loteId: lote.id,
              productoId: id,
            }),
          );
        }

        if (delta < 0) {
          let toRemove = Math.abs(delta);

          const lots = await loteRepo
            .createQueryBuilder('l')
            .where('l.productoId = :id', { id })
            .andWhere('l.cantidadActual > 0')
            .orderBy(
              'CASE WHEN l.fechaVencimiento IS NULL THEN 1 ELSE 0 END',
              'ASC',
            )
            .addOrderBy('l.fechaVencimiento', 'ASC')
            .addOrderBy('l.id', 'ASC')
            .getMany();

          const totalDisponible = lots.reduce(
            (acc, l) => acc + Number(l.cantidadActual ?? 0),
            0,
          );

          if (totalDisponible + 1e-9 < toRemove) {
            throw new BadRequestException('Stock insuficiente para ajustar');
          }

          for (const lote of lots) {
            if (toRemove <= 0) break;

            const disponible = Number(lote.cantidadActual ?? 0);
            if (disponible <= 0) continue;

            const take = Math.min(disponible, toRemove);
            lote.cantidadActual = Number((disponible - take).toFixed(2));
            await loteRepo.save(lote);

            await movRepo.save(
              movRepo.create({
                tipo: TipoMovimiento.SALIDA,
                cantidad: take,
                motivo,
                usuarioId,
                loteId: lote.id,
                productoId: id,
              }),
            );

            toRemove = Number((toRemove - take).toFixed(2));
          }
        }
      }

      return { ok: true };
    });
  }

  // ✅ DELETE (borra movimientos + lotes + producto)
  async remove(id: string) {
    return this.dataSource.transaction(async (manager) => {
      const productoRepo = manager.getRepository(Producto);
      const loteRepo = manager.getRepository(Lote);
      const movRepo = manager.getRepository(Movimiento);

      const producto = await productoRepo.findOne({ where: { id } });
      if (!producto) throw new NotFoundException('Producto no existe');

      // 1) primero movimientos (porque referencian lote y producto)
      await movRepo.delete({ productoId: id });

      // 2) después lotes
      await loteRepo.delete({ productoId: id });

      // 3) finalmente producto
      await productoRepo.delete({ id });

      return { ok: true };
    });
  }
}
