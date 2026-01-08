import { ApiProperty } from '@nestjs/swagger';
import { IsEnum, IsString, MinLength } from 'class-validator';
import { Unidad } from '../entities/producto.entity';

export class CreateProductoDto {
  @ApiProperty({ example: 'Harina' })
  @IsString()
  @MinLength(2)
  nombre: string;

  @ApiProperty({ enum: Unidad, example: Unidad.KG })
  @IsEnum(Unidad)
  unidad: Unidad;
}
