import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { Producto } from '../../productos/entities/producto.entity';
import { decimalTransformer } from '../../common/transformers/decimal.transformer';

@Entity('lotes')
export class Lote {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column()
  productoId: string;

  @ManyToOne(() => Producto, { eager: true })
  @JoinColumn({ name: 'productoId' })
  producto: Producto;

  @Column({ length: 60 })
  codigoLote: string;

  @Column({ type: 'date', nullable: true })
  fechaVencimiento?: string | null;

  @Column({
    type: 'decimal',
    precision: 10,
    scale: 2,
    default: 0,
    transformer: decimalTransformer,
  })
  cantidadActual: number;

  @Column({ default: true })
  activo: boolean;
}
