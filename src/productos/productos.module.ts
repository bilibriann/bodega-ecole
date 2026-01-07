import { Module } from '@nestjs/common';
import { ProductosController } from './controller/productos.controller';
import { ProductosService } from './services/productos.service';

@Module({
  controllers: [ProductosController],
  providers: [ProductosService],
})
export class ProductosModule {}
