import {
  Body,
  Controller,
  Get,
  Post,
  Query,
  Req,
  UseGuards,
} from '@nestjs/common';
import { Request } from 'express';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { JwtAuthGuard } from '../../common/guards/jwt-auth.guard';
import { MovimientosService } from '../services/movimientos.service';
import { CrearEntradaDto } from '../dto/crear-entrada.dto';
import { CrearSalidaDto } from '../dto/crear-salida.dto';

@ApiTags('Movimientos')
@ApiBearerAuth()
@UseGuards(JwtAuthGuard)
@Controller('movimientos')
export class MovimientosController {
  constructor(private readonly servicio: MovimientosService) {}

  @Post('entradas')
  crearEntrada(
    @Body() dto: CrearEntradaDto,
    @Req() req: Request & { user: { id: string } },
  ) {
    return this.servicio.crearEntrada(dto, req.user.id);
  }

  @Post('salidas')
  crearSalida(
    @Body() dto: CrearSalidaDto,
    @Req() req: Request & { user: { id: string } },
  ) {
    return this.servicio.crearSalida(dto, req.user.id);
  }

  @Get()
  listar(
    @Query('loteId') loteId?: string,
    @Query('productoId') productoId?: string,
  ) {
    if (loteId) return this.servicio.listarPorLote(loteId);
    if (productoId) return this.servicio.listarPorProducto(productoId);
    return this.servicio.listar();
  }
}
