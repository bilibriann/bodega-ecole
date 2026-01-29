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
  constructor(private service: ProductosService) {}

  @Get()
  list(
    @Query('nombre') nombre?: string,
    @Query('categoria') categoria?: string,
  ) {
    const cat = (Object.values(CategoriaProducto) as string[]).includes(
      (categoria ?? '').trim(),
    )
      ? (categoria as unknown as CategoriaProducto)
      : undefined;

    return this.service.findAll({ nombre, categoria: cat });
  }

  @UseGuards(RolesGuard)
  @Roles(Rol.ADMIN)
  @Post()
  create(
    @Body() dto: CreateProductoDto,
    @Req() req: Request & { user: { id: string } },
  ) {
    return this.service.create(dto, req.user.id);
  }

  @UseGuards(RolesGuard)
  @Roles(Rol.ADMIN)
  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() dto: UpdateProductoDto,
    @Req() req: Request & { user: { id: string } },
  ) {
    return this.service.update(id, dto, req.user.id);
  }

  // ✅ DELETE /productos/:id
  @UseGuards(RolesGuard)
  @Roles(Rol.ADMIN)
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.service.remove(id);
  }
}
