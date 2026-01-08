import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Producto } from './entities/producto.entity';
import { ProductosService } from './services/productos.service';
import { ProductosController } from './controller/productos.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Producto])],
  controllers: [ProductosController],
  providers: [ProductosService],
  exports: [TypeOrmModule],
})
export class ProductosModule {}
