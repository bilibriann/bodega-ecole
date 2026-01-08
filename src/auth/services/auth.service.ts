import {
  ConflictException,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import * as bcrypt from 'bcrypt';
import * as jwt from 'jsonwebtoken';
import { UsersService } from 'src/users/services/users.service';
import { Rol } from 'src/common/enums/rol.enum';
@Injectable()
export class AuthService {
  constructor(
    private users: UsersService,
    private cfg: ConfigService,
  ) {}

  async register(email: string, password: string) {
    const exists = await this.users.findByEmail(email);
    if (exists && !(exists instanceof Error))
      throw new ConflictException('Email ya registrado');

    const user = await this.users.createUser(email, password, Rol.USER);
    return { id: user.id, email: user.email, rol: user.rol };
  }

  async login(email: string, password: string) {
    const user = await this.users.findByEmail(email);
    if (!user) throw new UnauthorizedException('Credenciales inválidas');

    const ok = await bcrypt.compare(password, user.password);
    if (!ok) throw new UnauthorizedException('Credenciales inválidas');

    const token = jwt.sign(
      { sub: user.id, email: user.email, rol: user.rol },
      this.cfg.get<string>('JWT_SECRET')!,
      { expiresIn: '8h' },
    );

    return { access_token: token };
  }
}
