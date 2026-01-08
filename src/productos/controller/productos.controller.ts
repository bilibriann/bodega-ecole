import { Body, Controller, Get, Post, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { ProductosService } from '../services/productos.service';
import { JwtAuthGuard } from 'src/common/guards/jwt-auth.guard';
import { RolesGuard } from 'src/common/guards/roles.guard';
import { Roles } from 'src/common/decorators/roles.decorator';
import { CreateProductoDto } from '../dto/create-producto.dto';
import { Rol } from 'src/common/enums/rol.enum';

@ApiTags('Productos')
@ApiBearerAuth()
@UseGuards(JwtAuthGuard)
@Controller('productos')
export class ProductosController {
  constructor(private service: ProductosService) {}

  @Get()
  list() {
    return this.service.findAll();
  }

  @UseGuards(RolesGuard)
  @Roles(Rol.ADMIN)
  @Post()
  create(@Body() dto: CreateProductoDto) {
    return this.service.create(dto);
  }
}
