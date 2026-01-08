import { ApiProperty } from '@nestjs/swagger';
import { IsEmail, IsString, MinLength } from 'class-validator';

export class LoginDto {
  @ApiProperty({ example: 'admin@bodega.cl' })
  @IsEmail()
  email: string;

  @ApiProperty({ example: 'Admin1234!' })
  @IsString()
  @MinLength(4)
  password: string;
}
