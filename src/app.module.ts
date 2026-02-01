import { Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';

import { Usuario } from './users/entities/usuario.entity';
import { Producto } from './productos/entities/producto.entity';
import { Lote } from './lotes/entities/lote.entity';
import { Movimiento } from './movimientos/entities/movimiento.entity';

import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';
import { ProductosModule } from './productos/productos.module';
import { LotesModule } from './lotes/lotes.module';
import { MovimientosModule } from './movimientos/movimientos.module';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true, envFilePath: '.env' }),

    TypeOrmModule.forRootAsync({
      inject: [ConfigService],
      useFactory: (cfg: ConfigService) => ({
        type: 'mysql',
        host: cfg.get<string>('DB_HOST'),
        port: Number(cfg.get<string>('DB_PORT')),
        username: cfg.get<string>('DB_USER'),
        password: cfg.get<string>('DB_PASS'),
        database: cfg.get<string>('DB_NAME'),
        entities: [Usuario, Producto, Lote, Movimiento],
        synchronize: false,
      }),
    }),

    AuthModule,
    UsersModule,
    ProductosModule,
    LotesModule,
    MovimientosModule,
  ],
})
export class AppModule {}
