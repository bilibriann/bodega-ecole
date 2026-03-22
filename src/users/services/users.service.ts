import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { ConfigService } from '@nestjs/config';
import * as bcrypt from 'bcrypt';
import { Repository } from 'typeorm';
import { Usuario } from '../entities/usuario.entity';
import { Rol } from '../../common/enums/rol.enum';

@Injectable()
export class UsersService {
  constructor(
    @InjectRepository(Usuario) private readonly repo: Repository<Usuario>,
    private readonly configService: ConfigService,
  ) {}

  buscarPorEmail(email: string) {
    return this.repo.findOne({ where: { email } });
  }

  buscarPorId(id: string) {
    return this.repo.findOne({ where: { id } });
  }

  async crearUsuario(
    email: string,
    passwordPlano: string,
    rol: Rol = Rol.USER,
  ) {
    const passwordHash = await bcrypt.hash(passwordPlano, 10);
    const usuario = this.repo.create({ email, password: passwordHash, rol });
    return this.repo.save(usuario);
  }

  async ensureAdminFromEnv() {
    const email = this.configService.get<string>('ADMIN_EMAIL');
    const password = this.configService.get<string>('ADMIN_PASSWORD');
    if (!email || !password) return;

    const adminExistente = await this.buscarPorEmail(email);
    if (adminExistente) return;

    await this.crearUsuario(email, password, Rol.ADMIN);
  }
}
