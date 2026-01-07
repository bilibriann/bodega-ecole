import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';
import { ProductosModule } from './productos/productos.module';
import { LotesModule } from './lotes/lotes.module';
import { MovimientosModule } from './movimientos/movimientos.module';

@Module({
  imports: [
    AuthModule,
    UsersModule,
    ProductosModule,
    LotesModule,
    MovimientosModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
