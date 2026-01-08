import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { PassportStrategy } from '@nestjs/passport';
import { ExtractJwt, Strategy } from 'passport-jwt';
import { Rol } from 'src/common/enums/rol.enum';

export type JwtPayload = { sub: string; email: string; rol: Rol };

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor(cfg: ConfigService) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      secretOrKey: cfg.get<string>('JWT_SECRET')!,
    });
  }

  validate(payload: JwtPayload) {
    return { id: payload.sub, email: payload.email, rol: payload.rol };
  }
}
