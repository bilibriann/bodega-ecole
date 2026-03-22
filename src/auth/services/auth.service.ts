import {
  ConflictException,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import * as bcrypt from 'bcrypt';
import * as jwt from 'jsonwebtoken';
import { UsersService } from '../../users/services/users.service';
import { Rol } from '../../common/enums/rol.enum';

@Injectable()
export class AuthService {
  constructor(
    private readonly usersService: UsersService,
    private readonly configService: ConfigService,
  ) {}

  async registrar(email: string, password: string) {
    const usuarioExistente = await this.usersService.buscarPorEmail(email);
    if (usuarioExistente) {
      throw new ConflictException('Email ya registrado');
    }

    const usuario = await this.usersService.crearUsuario(
      email,
      password,
      Rol.USER,
    );

    return { id: usuario.id, email: usuario.email, rol: usuario.rol };
  }

  async iniciarSesion(email: string, password: string) {
    const usuario = await this.usersService.buscarPorEmail(email);
    if (!usuario) {
      throw new UnauthorizedException('Credenciales invalidas');
    }

    const passwordValida = await bcrypt.compare(password, usuario.password);
    if (!passwordValida) {
      throw new UnauthorizedException('Credenciales invalidas');
    }

    const token = jwt.sign(
      { sub: usuario.id, email: usuario.email, rol: usuario.rol },
      this.configService.get<string>('JWT_SECRET')!,
      { expiresIn: '8h' },
    );

    return { access_token: token };
  }
}
