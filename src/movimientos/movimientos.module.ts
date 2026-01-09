import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

import { Lote } from '../lotes/entities/lote.entity';
import { Movimiento } from './entities/movimiento.entity';

import { MovimientosController } from './controller/movimientos.controller';
import { MovimientosService } from './services/movimientos.service';

@Module({
  imports: [TypeOrmModule.forFeature([Lote, Movimiento])],
  controllers: [MovimientosController],
  providers: [MovimientosService],
})
export class MovimientosModule {}
