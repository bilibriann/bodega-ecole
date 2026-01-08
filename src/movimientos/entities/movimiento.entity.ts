import {
  Column,
  CreateDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { decimalTransformer } from '../../common/transformers/decimal.transformer';
import { Usuario } from '../../users/entities/usuario.entity';
import { Producto } from '../../productos/entities/producto.entity';
import { Lote } from '../../lotes/entities/lote.entity';

export enum TipoMovimiento {
  ENTRADA = 'ENTRADA',
  SALIDA = 'SALIDA',
}

@Entity('movimientos')
export class Movimiento {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'enum', enum: TipoMovimiento })
  tipo: TipoMovimiento;

  @Column({
    type: 'decimal',
    precision: 10,
    scale: 2,
    transformer: decimalTransformer,
  })
  cantidad: number;

  @Column({ length: 120, nullable: true })
  motivo?: string;

  @CreateDateColumn()
  fecha: Date;

  @Column()
  usuarioId: string;

  @ManyToOne(() => Usuario, { eager: true })
  @JoinColumn({ name: 'usuarioId' })
  usuario: Usuario;

  @Column()
  productoId: string;

  @ManyToOne(() => Producto, { eager: true })
  @JoinColumn({ name: 'productoId' })
  producto: Producto;

  @Column()
  loteId: string;

  @ManyToOne(() => Lote, { eager: true })
  @JoinColumn({ name: 'loteId' })
  lote: Lote;
}
