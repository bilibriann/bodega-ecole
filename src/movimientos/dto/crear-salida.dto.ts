import { Type } from 'class-transformer';
import {
  IsArray,
  IsNumber,
  IsOptional,
  IsPositive,
  IsString,
  IsUUID,
  ValidateNested,
} from 'class-validator';

class SalidaItemDto {
  @IsUUID()
  loteId: string;

  @IsNumber()
  @IsPositive()
  cantidad: number;
}

export class CrearSalidaDto {
  @IsOptional()
  @IsString()
  motivo?: string;

  @IsArray()
  @ValidateNested({ each: true })
  @Type(() => SalidaItemDto)
  items: SalidaItemDto[];
}
