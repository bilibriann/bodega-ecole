import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Producto } from '../entities/producto.entity';
import { CreateProductoDto } from '../dto/create-producto.dto';

@Injectable()
export class ProductosService {
  constructor(@InjectRepository(Producto) private repo: Repository<Producto>) {}

  findAll() {
    return this.repo.find({ order: { categoria: 'ASC', nombre: 'ASC' } });
  }

  create(dto: CreateProductoDto) {
    return this.repo.save(this.repo.create(dto));
  }
}
