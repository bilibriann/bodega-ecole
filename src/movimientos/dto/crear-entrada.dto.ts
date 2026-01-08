import {
  IsNumber,
  IsOptional,
  IsPositive,
  IsString,
  IsUUID,
} from 'class-validator';

export class CrearEntradaDto {
  @IsUUID()
  loteId: string;

  @IsNumber()
  @IsPositive()
  cantidad: number;

  @IsOptional()
  @IsString()
  motivo?: string;
}
