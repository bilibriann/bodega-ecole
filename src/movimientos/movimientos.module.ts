import { Module } from '@nestjs/common';
import { MovimientosController } from './controller/movimientos.controller';
import { MovimientosService } from './services/movimientos.service';

@Module({
  controllers: [MovimientosController],
  providers: [MovimientosService],
})
export class MovimientosModule {}
