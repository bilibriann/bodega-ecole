import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { Lote } from '../../lotes/entities/lote.entity';

export enum Unidad {
  KG = 'KG',
  LT = 'LT',
  UNIDAD = 'UNIDAD',
}

export enum CategoriaProducto {
  CARNES_ROJAS = 'CARNES_ROJAS',
  PESCADOS_Y_MARISCOS = 'PESCADOS_Y_MARISCOS',
  ABARROTES = 'ABARROTES',
}

@Entity('productos')
export class Producto {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ length: 150 })
  nombre: string;

  @Column({ type: 'enum', enum: Unidad })
  unidad: Unidad;

  @Column({
    type: 'enum',
    enum: CategoriaProducto,
    default: CategoriaProducto.ABARROTES,
  })
  categoria: CategoriaProducto;

  @OneToMany(() => Lote, (l) => l.producto)
  lotes: Lote[];
}
