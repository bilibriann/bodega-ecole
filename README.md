# Bodega Ecole Backend

API hecha con NestJS para manejar productos, lotes, movimientos y usuarios de una bodega.

## Lo que hace

- Registro e inicio de sesion con JWT.
- CRUD basico de productos.
- Manejo de lotes por producto.
- Entradas y salidas de stock.
- Historial de movimientos.
- Documentacion Swagger en `/docs`.

## Estructura simple

- `src/auth`: login, registro y seguridad.
- `src/users`: usuarios.
- `src/productos`: productos del inventario.
- `src/lotes`: lotes de cada producto.
- `src/movimientos`: entradas y salidas.
- `flyway/sql`: migraciones.
- `flyway/seed`: datos de apoyo.

## Requisitos

- Node.js
- MySQL
- npm

## Instalar

```bash
npm install
```

## Variables de entorno

Crear un archivo `.env` con valores como estos:

```env
PORT=3000
DB_HOST=localhost
DB_PORT=3306
DB_USER=root
DB_PASS=tu_clave
DB_NAME=bodega_ecole
JWT_SECRET=secreto_seguro
ADMIN_EMAIL=admin@demo.cl
ADMIN_PASSWORD=123456
```

## Ejecutar

```bash
npm run start:dev
```

## Compilar

```bash
npm run build
```

## Probar lint

```bash
npm run lint
```

## Notas

- El admin se crea automaticamente si existe `ADMIN_EMAIL` y `ADMIN_PASSWORD`.
- La base de datos se prepara con los scripts de `flyway`.
- La carpeta `dist` se puede borrar porque se vuelve a generar al compilar.
