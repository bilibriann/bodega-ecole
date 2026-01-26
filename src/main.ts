import { ValidationPipe } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { AppModule } from './app.module';
import { UsersService } from './users/services/users.service';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // ✅ CORS para el front (Vite usa 5173/5174)
  app.enableCors({
    origin: ['http://localhost:5173', 'http://localhost:5174'],
    methods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization'],
    credentials: true,
  });

  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      transform: true,
      forbidNonWhitelisted: true,
    }),
  );

  const config = new DocumentBuilder()
    .setTitle('bodega-ecole API')
    .setDescription(
      'API de bodega con lotes fijos, entradas/salidas y trazabilidad por movimientos.',
    )
    .setVersion('1.0.0')
    .addBearerAuth()
    .build();

  const doc = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('docs', app, doc);

  // Seed admin (si no existe)
  const usersService = app.get(UsersService);
  await usersService.ensureAdminFromEnv();

  await app.listen(process.env.PORT || 3000);
}
bootstrap();
