import { ApiPropertyOptional } from '@nestjs/swagger';
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

export class UpdateProductoDto {
  @ApiPropertyOptional({ example: 'Harina' })
  @IsOptional()
  @IsString()
  @MinLength(2)
  @MaxLength(150)
  nombre?: string;

  @ApiPropertyOptional({ example: 'Descripción opcional' })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  descripcion?: string | null;

  @ApiPropertyOptional({ enum: CategoriaProducto })
  @IsOptional()
  @IsEnum(CategoriaProducto)
  categoria?: CategoriaProducto;

  @ApiPropertyOptional({ enum: Unidad })
  @IsOptional()
  @IsEnum(Unidad)
  unidad?: Unidad;

  @ApiPropertyOptional({ example: 25 })
  @IsOptional()
  @Type(() => Number)
  @IsNumber()
  @Min(0)
  @Max(999999999)
  cantidad?: number;

  @ApiPropertyOptional({ example: 'Ajuste por edición' })
  @IsOptional()
  @IsString()
  @MaxLength(120)
  motivo?: string;
}
