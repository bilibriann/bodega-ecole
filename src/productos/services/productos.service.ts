import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { DataSource, Repository } from 'typeorm';

import { Producto, CategoriaProducto } from '../entities/producto.entity';
import { CreateProductoDto } from '../dto/create-producto.dto';
import { Lote } from '../../lotes/entities/lote.entity';
import {
  Movimiento,
  TipoMovimiento,
} from '../../movimientos/entities/movimiento.entity';

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
}
