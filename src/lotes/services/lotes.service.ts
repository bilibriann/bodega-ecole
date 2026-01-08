import {
  ConflictException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Lote } from '../entities/lote.entity';
import { CreateLoteDto } from '../dto/create-lote.dto';
import { UpdateLoteDto } from '../dto/update-lote.dto';

@Injectable()
export class LotesService {
  constructor(@InjectRepository(Lote) private repo: Repository<Lote>) {}

  findAll() {
    return this.repo.find({ order: { codigoLote: 'ASC' } });
  }

  async create(dto: CreateLoteDto) {
    const dup = await this.repo.findOne({
      where: { productoId: dto.productoId, codigoLote: dto.codigoLote },
    });
    if (dup)
      throw new ConflictException('Ese lote ya existe para ese producto');

    const lote = this.repo.create({
      productoId: dto.productoId,
      codigoLote: dto.codigoLote,
      fechaVencimiento: dto.fechaVencimiento ?? null,
      activo: dto.activo ?? true,
      cantidadActual: 0,
    });

    return this.repo.save(lote);
  }

  async update(id: string, dto: UpdateLoteDto) {
    const lote = await this.repo.findOne({ where: { id } });
    if (!lote) throw new NotFoundException('Lote no encontrado');

    Object.assign(lote, {
      ...dto,
      fechaVencimiento: dto.fechaVencimiento ?? lote.fechaVencimiento,
    });

    return this.repo.save(lote);
  }
}
