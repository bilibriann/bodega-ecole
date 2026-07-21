import { ValidationPipe } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { AppModule } from './app.module';
import { LoggingInterceptor } from './common/interceptors/logging.interceptor';
import { UsersService } from './users/services/users.service';
import helmet from 'helmet';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  app.use(helmet());

  // Orígenes permitidos (qué webs pueden llamar a esta API desde el navegador).
  // Por defecto, el desarrollo local con Vite. En producción se agregan más
  // vía la variable CORS_ORIGINS (separados por coma), por ejemplo la URL del
  // frontend en Vercel — así NO hay que tocar el código para agregarla.
  const corsOrigins = (
    process.env.CORS_ORIGINS ?? 'http://localhost:5173,http://localhost:5174'
  )
    .split(',')
    .map((origin) => origin.trim());

  app.enableCors({
    origin: corsOrigins,
    methods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization'],
    credentials: true,
  });

  app.useGlobalInterceptors(new LoggingInterceptor());

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
  // Documentación interactiva disponible en la ruta /docs.
  // Antes se ocultaba en producción; para el demo público la dejamos visible,
  // que es justo lo que se muestra en el CV. (Se puede volver a ocultar más
  // adelante si la app pasa a ser un producto real con datos sensibles.)
  SwaggerModule.setup('docs', app, doc);

  const usersService = app.get(UsersService);
  await usersService.ensureAdminFromEnv();

  await app.listen(process.env.PORT || 3000);
}
void bootstrap();
