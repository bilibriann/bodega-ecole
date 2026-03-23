# Bodega Ecole Backend

API REST desarrollada con NestJS para gestionar inventario, productos, lotes, movimientos de stock y autenticacion con JWT.

## Stack

- NestJS 11
- TypeORM
- MySQL 8
- Flyway para migraciones
- Swagger para documentacion
- Docker Compose para levantar el entorno completo

## Funcionalidades

- Login con JWT.
- Registro de usuarios protegido para administradores.
- CRUD de productos.
- Gestion de lotes.
- Registro de entradas y salidas de stock.
- Historial de movimientos por producto o por lote.
- Creacion automatica de usuario administrador desde variables de entorno.
- Documentacion interactiva en `/docs`.

## Modulos principales

- `src/auth`: autenticacion, login y registro.
- `src/users`: usuarios y bootstrap del admin inicial.
- `src/productos`: catalogo, filtros y mantenimiento de productos.
- `src/lotes`: lotes asociados a productos.
- `src/movimientos`: entradas, salidas y trazabilidad.
- `flyway/sql`: migraciones de base de datos.
- `flyway/seed`: carga inicial de inventario.

## Requisitos

- Node.js 20 o superior recomendado
- npm
- MySQL 8

## Variables de entorno

Crea un archivo `.env` en la raiz con valores como estos:

```env
PORT=3000

DB_HOST=localhost
DB_PORT=3306
DB_NAME=bodega_ecole
DB_USER=root
DB_PASS=tu_clave

DB_USERNAME=root
DB_PASSWORD=tu_clave
DB_PORT_EXTERNAL=3306

JWT_SECRET=secreto_seguro

ADMIN_EMAIL=admin@bodega.cl
ADMIN_PASSWORD=123456
```

Notas:

- La aplicacion Nest usa `DB_HOST`, `DB_PORT`, `DB_NAME`, `DB_USER` y `DB_PASS`.
- `docker-compose.yml` tambien usa `DB_USERNAME`, `DB_PASSWORD` y `DB_PORT_EXTERNAL`.
- Si defines `ADMIN_EMAIL` y `ADMIN_PASSWORD`, el backend intenta asegurar la existencia del admin al iniciar.

## Instalacion local

```bash
npm install
```

## Ejecutar en desarrollo

```bash
npm run start:dev
```

La API queda disponible en `http://localhost:3000` y Swagger en `http://localhost:3000/docs`.

## Scripts disponibles

```bash
npm run start
npm run start:dev
npm run start:debug
npm run build
npm run start:prod
npm run lint
npm run test
npm run test:watch
npm run test:cov
```

## Levantar con Docker Compose

Este proyecto incluye servicios para:

- `mysql`: base de datos MySQL 8.
- `flyway`: ejecucion de migraciones.
- `api`: backend NestJS.
- `seed_inventario`: carga inicial de inventario una sola vez.

Para levantar todo:

```bash
docker compose up --build
```

## Endpoints principales

### Auth

- `POST /auth/login`
- `POST /auth/register` solo admin

### Productos

- `GET /productos`
- `POST /productos` solo admin
- `PATCH /productos/:id` solo admin
- `DELETE /productos/:id` solo admin

Filtros disponibles:

- `nombre`
- `categoria`

### Lotes

- `GET /lotes`
- `POST /lotes` solo admin
- `PATCH /lotes/:id` solo admin

### Movimientos

- `GET /movimientos`
- `POST /movimientos/entradas`
- `POST /movimientos/salidas`

Filtros disponibles:

- `loteId`
- `productoId`

## Frontend esperado

El backend tiene CORS habilitado para:

- `http://localhost:5173`
- `http://localhost:5174`

Eso coincide con un frontend Vite ejecutandose en desarrollo.

## Notas de desarrollo

- `synchronize` esta deshabilitado en TypeORM, por lo que la estructura de base de datos debe gestionarse con Flyway.
- La carpeta `dist` se genera en build y no es necesario versionarla manualmente.
- En `tsconfig.build.json` se excluye `bodega-ecole-web`, lo que sugiere que backend y frontend viven como proyectos separados.
