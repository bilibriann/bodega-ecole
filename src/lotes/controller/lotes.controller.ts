import {
  Body,
  Controller,
  Get,
  Param,
  Patch,
  Post,
  UseGuards,
} from '@nestjs/common';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { LotesService } from '../services/lotes.service';
import { CreateLoteDto } from '../dto/create-lote.dto';
import { UpdateLoteDto } from '../dto/update-lote.dto';
import { JwtAuthGuard } from 'src/common/guards/jwt-auth.guard';
import { RolesGuard } from 'src/common/guards/roles.guard';
import { Roles } from 'src/common/decorators/roles.decorator';
import { Rol } from 'src/common/enums/rol.enum';

@ApiTags('Lotes')
@ApiBearerAuth()
@UseGuards(JwtAuthGuard)
@Controller('lotes')
export class LotesController {
  constructor(private service: LotesService) {}

  @Get()
  list() {
    return this.service.findAll();
  }

  @UseGuards(RolesGuard)
  @Roles(Rol.ADMIN)
  @Post()
  create(@Body() dto: CreateLoteDto) {
    return this.service.create(dto);
  }

  @UseGuards(RolesGuard)
  @Roles(Rol.ADMIN)
  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UpdateLoteDto) {
    return this.service.update(id, dto);
  }
}
