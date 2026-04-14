import { ApiProperty } from '@nestjs/swagger';
import { IsEmail, IsString, MinLength } from 'class-validator';

export class RegisterDto {
  @ApiProperty({ example: 'user@bodega.cl' })
  @IsEmail()
  email: string;

  @ApiProperty({ example: 'User1234!' })
  @IsString()
  @MinLength(8)
  password: string;
}
