import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
  Query,
  Req,
  UseGuards,
} from '@nestjs/common';
import { Request } from 'express';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { ProductosService } from '../services/productos.service';
import { CreateProductoDto } from '../dto/create-producto.dto';
import { JwtAuthGuard } from '../../common/guards/jwt-auth.guard';
import { RolesGuard } from '../../common/guards/roles.guard';
import { Roles } from '../../common/decorators/roles.decorator';
import { Rol } from '../../common/enums/rol.enum';
import { CategoriaProducto } from '../entities/producto.entity';
import { UpdateProductoDto } from '../dto/update.producto.dto';

@ApiTags('Productos')
@ApiBearerAuth()
@UseGuards(JwtAuthGuard)
@Controller('productos')
export class ProductosController {
  constructor(private readonly servicio: ProductosService) {}

  @Get()
  listar(
    @Query('nombre') nombre?: string,
    @Query('categoria') categoria?: string,
  ) {
    const categoriaTexto = (categoria ?? '').trim();
    const categoriaValida = (
      Object.values(CategoriaProducto) as string[]
    ).includes(categoriaTexto)
      ? (categoriaTexto as CategoriaProducto)
      : undefined;

    return this.servicio.listar({ nombre, categoria: categoriaValida });
  }

  @UseGuards(RolesGuard)
  @Roles(Rol.ADMIN)
  @Post()
  crear(
    @Body() dto: CreateProductoDto,
    @Req() req: Request & { user: { id: string } },
  ) {
    return this.servicio.crear(dto, req.user.id);
  }

  @UseGuards(RolesGuard)
  @Roles(Rol.ADMIN)
  @Patch(':id')
  actualizar(
    @Param('id') id: string,
    @Body() dto: UpdateProductoDto,
    @Req() req: Request & { user: { id: string } },
  ) {
    return this.servicio.actualizar(id, dto, req.user.id);
  }

  @UseGuards(RolesGuard)
  @Roles(Rol.ADMIN)
  @Delete(':id')
  eliminar(@Param('id') id: string) {
    return this.servicio.eliminar(id);
  }
}
