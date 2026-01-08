import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { Lote } from '../../lotes/entities/lote.entity';

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

  @Column({ type: 'enum', enum: Unidad })
  unidad: Unidad;

  @OneToMany(() => Lote, (l) => l.producto)
  lotes: Lote[];
}
