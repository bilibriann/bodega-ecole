import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { Type } from 'class-transformer';
import {
  IsEnum,
  IsNumber,
  IsOptional,
  IsString,
  Max,
  MaxLength,
  Min,
  MinLength,
} from 'class-validator';
import { CategoriaProducto, Unidad } from '../entities/producto.entity';

export class CreateProductoDto {
  @ApiProperty({ example: 'Harina' })
  @IsString()
  @MinLength(2)
  @MaxLength(150)
  nombre: string;

  @ApiPropertyOptional({ example: 'Harina sin polvos, ideal para repostería.' })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  descripcion?: string;

  @ApiPropertyOptional({
    enum: CategoriaProducto,
    example: CategoriaProducto.BODEGA_ABARROTES,
  })
  @IsOptional()
  @IsEnum(CategoriaProducto)
  categoria?: CategoriaProducto;

  @ApiProperty({ enum: Unidad, example: Unidad.KG })
  @IsEnum(Unidad)
  unidad: Unidad;

  @ApiPropertyOptional({ example: 10 })
  @IsOptional()
  @Type(() => Number)
  @IsNumber()
  @Min(0)
  @Max(999999999)
  cantidadInicial?: number;

  @ApiPropertyOptional({ example: 'INI-001' })
  @IsOptional()
  @IsString()
  @MaxLength(60)
  codigoLote?: string;

  @ApiPropertyOptional({ example: 'Carga inicial' })
  @IsOptional()
  @IsString()
  @MaxLength(120)
  motivo?: string;
}
