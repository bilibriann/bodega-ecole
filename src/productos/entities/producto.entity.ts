import {
  Column,
  CreateDateColumn,
  Entity,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from 'typeorm';
import { Lote } from '../../lotes/entities/lote.entity';

export enum CategoriaProducto {
  BODEGA_ABARROTES = 'Bodega Abarrotes',
  LACTEOS = 'Inventario Lacteos',
  ENBUTIDOS = 'Enbutidos',
  VINO_LICORES = 'Vino Y Licores',
  PESCADOS_MARISCOS = 'Pescados y Mariscos',
  CARNES_BLANCAS = 'Carnes Blancas',
  CARNES_ROJAS = 'Carnes Rojas',
  PULPAS_FRUTAS_CONGELADAS = 'Pulpas y Frutas Congeladas',
  OTROS = 'Otros',
}

export enum Unidad {
  KG = 'KG',
  LT = 'LT',
  UNIDAD = 'UNIDAD',
}

@Entity('productos')
export class Producto {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ length: 150 })
  nombre: string;

  @Column({ type: 'varchar', length: 255, nullable: true })
  descripcion?: string | null;

  @Column({
    type: 'varchar',
    length: 60,
    default: CategoriaProducto.BODEGA_ABARROTES,
  })
  categoria: CategoriaProducto;

  @Column({ type: 'enum', enum: Unidad })
  unidad: Unidad;

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;

  @OneToMany(() => Lote, (lote) => lote.producto)
  lotes: Lote[];
}
