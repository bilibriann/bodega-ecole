import { Body, Controller, Post, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { AuthService } from '../services/auth.service';
import { RegisterDto } from '../dto/register.dto';
import { LoginDto } from '../dto/login.dto';
import { JwtAuthGuard } from '../../common/guards/jwt-auth.guard';
import { RolesGuard } from '../../common/guards/roles.guard';
import { Roles } from '../../common/decorators/roles.decorator';
import { Rol } from '../../common/enums/rol.enum';

@ApiTags('Auth')
@Controller('auth')
export class AuthController {
  constructor(private readonly servicio: AuthService) {}

  @Post('register')
  @ApiBearerAuth()
  @UseGuards(JwtAuthGuard, RolesGuard)
  @Roles(Rol.ADMIN)
  registrar(@Body() dto: RegisterDto) {
    return this.servicio.registrar(dto.email, dto.password);
  }

  @Post('login')
  iniciarSesion(@Body() dto: LoginDto) {
    return this.servicio.iniciarSesion(dto.email, dto.password);
  }
}
