import { IsBoolean, IsDateString, IsOptional, IsString } from 'class-validator';

export class UpdateLoteDto {
  @IsOptional()
  @IsString()
  codigoLote?: string;

  @IsOptional()
  @IsDateString()
  fechaVencimiento?: string;

  @IsOptional()
  @IsBoolean()
  activo?: boolean;
}
