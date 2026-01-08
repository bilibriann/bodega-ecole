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
    @InjectRepository(Usuario) private repo: Repository<Usuario>,
    private cfg: ConfigService,
  ) {}

  findByEmail(email: string) {
    return this.repo.findOne({ where: { email } });
  }

  findById(id: string) {
    return this.repo.findOne({ where: { id } });
  }

  async createUser(email: string, passwordPlain: string, rol: Rol = Rol.USER) {
    const hash = await bcrypt.hash(passwordPlain, 10);
    const user = this.repo.create({ email, password: hash, rol });
    return this.repo.save(user);
  }

  async ensureAdminFromEnv() {
    const email = this.cfg.get<string>('ADMIN_EMAIL');
    const pass = this.cfg.get<string>('ADMIN_PASSWORD');
    if (!email || !pass) return;

    const exists = await this.findByEmail(email);
    if (exists) return;

    await this.createUser(email, pass, Rol.ADMIN);
  }
}
