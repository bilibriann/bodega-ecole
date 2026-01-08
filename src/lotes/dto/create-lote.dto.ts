import { ApiProperty } from '@nestjs/swagger';
import {
  IsBoolean,
  IsDateString,
  IsOptional,
  IsString,
  IsUUID,
} from 'class-validator';

export class CreateLoteDto {
  @ApiProperty()
  @IsUUID()
  productoId: string;

  @ApiProperty({ example: 'A12' })
  @IsString()
  codigoLote: string;

  @ApiProperty({ required: false, example: '2026-03-01' })
  @IsOptional()
  @IsDateString()
  fechaVencimiento?: string;

  @ApiProperty({ required: false, example: true })
  @IsOptional()
  @IsBoolean()
  activo?: boolean;
}
