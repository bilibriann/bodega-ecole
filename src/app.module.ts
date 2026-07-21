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

        // 'synchronize' hace que TypeORM cree las tablas automáticamente a
        // partir de las entidades. En LOCAL es false (usamos Flyway). En la
        // NUBE lo activamos la primera vez con DB_SYNC=true para que cree el
        // esquema en la base nueva de Aiven; luego se puede volver a apagar.
        synchronize: cfg.get<string>('DB_SYNC') === 'true',

        // Las bases de datos en la nube (como Aiven) EXIGEN conexión cifrada
        // (SSL/TLS). En local (Docker) no se usa. Se activa con DB_SSL=true.
        // 'rejectUnauthorized: false' acepta el certificado del proveedor sin
        // tener que incrustar el archivo del certificado (suficiente para un
        // demo).
        ssl:
          cfg.get<string>('DB_SSL') === 'true'
            ? { rejectUnauthorized: false }
            : undefined,
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
