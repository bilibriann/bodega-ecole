import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Lote } from './entities/lote.entity';
import { LotesService } from './services/lotes.service';
import { LotesController } from './controller/lotes.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Lote])],
  controllers: [LotesController],
  providers: [LotesService],
  exports: [TypeOrmModule],
})
export class LotesModule {}
