import {
  Body,
  Controller,
  Get,
  Post,
  Query,
  Req,
  UseGuards,
} from '@nestjs/common';
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
  constructor(private service: MovimientosService) {}

  @Post('entradas')
  crearEntrada(@Body() dto: CrearEntradaDto, @Req() req: any) {
    return this.service.crearEntrada(dto, req.user.id);
  }

  @Post('salidas')
  crearSalida(@Body() dto: CrearSalidaDto, @Req() req: any) {
    return this.service.crearSalida(dto, req.user.id);
  }

  @Get()
  listar(
    @Query('loteId') loteId?: string,
    @Query('productoId') productoId?: string,
  ) {
    if (loteId) return this.service.listarPorLote(loteId);
    if (productoId) return this.service.listarPorProducto(productoId);
    return this.service.listar();
  }
}
