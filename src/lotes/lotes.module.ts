import { Module } from '@nestjs/common';
import { LotesController } from './controller/lotes.controller';
import { LotesService } from './services/lotes.service';

@Module({
  controllers: [LotesController],
  providers: [LotesService],
})
export class LotesModule {}
