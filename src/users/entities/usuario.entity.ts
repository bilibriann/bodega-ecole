import {
  Column,
  CreateDateColumn,
  Entity,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { Rol } from '../../common/enums/rol.enum';
import { Movimiento } from '../../movimientos/entities/movimiento.entity';

@Entity('usuarios')
export class Usuario {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ unique: true, length: 120 })
  email: string;

  @Column({ length: 255 })
  password: string;

  @Column({ type: 'enum', enum: Rol, default: Rol.USER })
  rol: Rol;

  @CreateDateColumn()
  createdAt: Date;

  @OneToMany(() => Movimiento, (m) => m.usuario)
  movimientos: Movimiento[];
}
