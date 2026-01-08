import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { PassportModule } from '@nestjs/passport';
import { UsersModule } from '../users/users.module';

import { AuthController } from './controller/auth.controller';
import { JwtStrategy } from './jwt/jwt.strategy';
import { AuthService } from './services/auth.service';

@Module({
  imports: [UsersModule, PassportModule, ConfigModule],
  controllers: [AuthController],
  providers: [AuthService, JwtStrategy],
})
export class AuthModule {}
