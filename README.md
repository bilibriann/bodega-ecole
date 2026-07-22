<h1 align="center">📦 Bodega Ecole — Backend API</h1>

<p align="center">
  API REST para la gestión de inventario: productos, lotes, movimientos de stock
  y trazabilidad, con autenticación JWT y una documentación interactiva en <code>/docs</code>.
</p>

<p align="center">
  <a href="https://github.com/bilibriann/bodega-ecole/actions/workflows/ci.yml">
    <img src="https://github.com/bilibriann/bodega-ecole/actions/workflows/ci.yml/badge.svg" alt="CI" />
  </a>
  <a href="https://github.com/bilibriann/bodega-ecole/actions/workflows/codeql.yml">
    <img src="https://github.com/bilibriann/bodega-ecole/actions/workflows/codeql.yml/badge.svg" alt="CodeQL" />
  </a>
</p>

<p align="center">
  <a href="https://bodega-eco.onrender.com/docs">
    <img src="https://img.shields.io/badge/API%20en%20vivo-Swagger%20%2Fdocs-85EA2D?logo=swagger&logoColor=black" alt="Demo en vivo" />
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/NestJS-11-E0234E?logo=nestjs&logoColor=white" alt="NestJS" />
  <img src="https://img.shields.io/badge/TypeScript-5-3178C6?logo=typescript&logoColor=white" alt="TypeScript" />
  <img src="https://img.shields.io/badge/MySQL-8-4479A1?logo=mysql&logoColor=white" alt="MySQL" />
  <img src="https://img.shields.io/badge/TypeORM-0.3-FE0803?logo=typeorm&logoColor=white" alt="TypeORM" />
  <img src="https://img.shields.io/badge/Docker-multi--stage-2496ED?logo=docker&logoColor=white" alt="Docker" />
  <img src="https://img.shields.io/badge/Swagger-OpenAPI-85EA2D?logo=swagger&logoColor=black" alt="Swagger" />
</p>

---

## 📑 Tabla de contenidos

- [Demo en vivo](#-demo-en-vivo)
- [Descripción](#-descripción)
- [Stack tecnológico](#-stack-tecnológico)
- [Seguridad (DevSecOps)](#-seguridad-devsecops)
- [CI/CD con GitHub Actions](#-cicd-con-github-actions)
- [Despliegue en la nube](#-despliegue-en-la-nube)
- [Arquitectura del proyecto](#-arquitectura-del-proyecto)
- [Variables de entorno](#-variables-de-entorno)
- [Ejecución local](#-ejecución-local)
- [Levantar con Docker Compose](#-levantar-con-docker-compose)
- [Endpoints principales](#-endpoints-principales)
- [Estado del proyecto](#-estado-del-proyecto)

---

## 🌐 Demo en vivo

La API está desplegada y funcionando en la nube:

| | |
|---|---|
| **Documentación interactiva** | **https://bodega-eco.onrender.com/docs** |
| **URL base de la API** | `https://bodega-eco.onrender.com` |
| **Infraestructura** | Imagen Docker en [Render](https://render.com) + MySQL gestionado en [Aiven](https://aiven.io) (conexión SSL) |

Desde `/docs` se pueden probar todos los endpoints directamente en el navegador:
autenticarse con `POST /auth/login`, pulsar **Authorize** con el token devuelto y
llamar al resto de las rutas protegidas.

> ⏳ El servicio corre en el plan gratuito, por lo que se suspende tras un rato sin uso:
> **la primera petición puede tardar ~30 segundos** mientras el contenedor despierta.
> Las siguientes responden con normalidad.

---

## 🚀 Descripción

**Bodega Ecole** es el backend de un sistema de gestión de bodega/inventario. Permite
administrar un catálogo de productos, gestionar lotes, registrar entradas y salidas de
stock, y consultar el historial de movimientos con trazabilidad por producto o por lote.

La autenticación se realiza con **JWT**, el registro de usuarios está protegido para
administradores, y el usuario administrador inicial se crea automáticamente a partir de
variables de entorno al arrancar la aplicación.

La API expone documentación interactiva con **Swagger** en la ruta `/docs`.

---

## 🧰 Stack tecnológico

| Categoría | Tecnología | Uso |
|---|---|---|
| **Lenguaje** | TypeScript 5 | Tipado estático sobre Node.js 20 |
| **Framework** | NestJS 11 | Arquitectura modular, inyección de dependencias |
| **ORM** | TypeORM 0.3 | Mapeo de entidades a MySQL |
| **Base de datos** | MySQL 8 | Persistencia relacional |
| **Migraciones** | Flyway | Versionado del esquema y carga inicial (seed) |
| **Autenticación** | Passport + JWT | Login y protección de rutas |
| **Validación** | class-validator / class-transformer | Validación y transformación de DTOs |
| **Seguridad HTTP** | Helmet | Cabeceras de seguridad |
| **Documentación** | Swagger (OpenAPI) | Documentación interactiva en `/docs` |
| **Contenedores** | Docker (multi-stage) + Docker Compose | Entorno reproducible |
| **Testing** | Jest | Framework de pruebas |
| **Calidad** | ESLint + Prettier | Estilo y detección de errores |

---

## 🔐 Seguridad (DevSecOps)

Este proyecto no es solo una API: incorpora una **cadena de seguridad automatizada** que
se ejecuta en cada cambio, siguiendo un enfoque **DevSecOps** (seguridad integrada en el
ciclo de desarrollo, no como un paso posterior).

### Seguridad en el pipeline (se ejecuta sola en cada push / PR)

| Herramienta | Qué protege |
|---|---|
| 🔑 **Gitleaks** | Escanea **todo el historial** de git buscando secretos filtrados (contraseñas, tokens, llaves). Falla el pipeline si detecta una fuga real. |
| 🐳 **Trivy** | Escanea la **imagen Docker** en busca de vulnerabilidades conocidas (CVEs) en el sistema base y las dependencias. |
| 🕵️ **CodeQL** | Análisis estático de seguridad (SAST) del código TypeScript: detecta patrones peligrosos (inyección, datos sin validar, etc.). |
| 🤖 **Dependabot** | Vigila las dependencias (npm, Docker, GitHub Actions) y abre Pull Requests automáticos para actualizar librerías vulnerables. |
| 🧹 **ESLint** | Detecta errores y malas prácticas antes de que lleguen a producción. |

### Seguridad en la imagen Docker

- **Build multi-stage:** la imagen final **no incluye dependencias de desarrollo**
  (menos peso y muchísimas menos vulnerabilidades).
- **Parcheo del sistema base** (`apk upgrade`) para reducir CVEs del sistema operativo.
- **Ejecución sin privilegios:** el contenedor corre como usuario `node`, **no como root**.

### Seguridad en la aplicación

- **Autenticación JWT** con rutas protegidas por rol (registro solo para admins).
- **Helmet** para cabeceras HTTP seguras.
- **ValidationPipe** con `whitelist` y `forbidNonWhitelisted`: rechaza cualquier campo
  no esperado en las peticiones.
- **CORS configurable** por variable de entorno.
- **Conexión cifrada (SSL/TLS)** a la base de datos en la nube.

---

## ⚙️ CI/CD con GitHub Actions

El repositorio usa **GitHub Actions** para automatizar la integración continua. En cada
`push` o `pull request` a `main` se ejecuta el workflow [`ci.yml`](.github/workflows/ci.yml),
que corre estos pasos **en orden**:

```
1. Checkout del código (historial completo)
2. 🔑 Gitleaks .............. escaneo de secretos
3. Instalación de dependencias (npm ci)
4. 🧹 ESLint ................ linter
5. Jest .................... tests
6. 🐳 Docker build ......... construcción de la imagen
7. 🐳 Trivy ................ escaneo de vulnerabilidades de la imagen
```

En paralelo, el workflow [`codeql.yml`](.github/workflows/codeql.yml) ejecuta el análisis
de seguridad **CodeQL**, cuyos resultados aparecen en la pestaña **Security** del repositorio.

> El principio es **"fallar rápido"**: si algo de seguridad o calidad no cumple, el
> pipeline se detiene antes de continuar.

---

## ☁️ Despliegue en la nube

El backend **está desplegado** en **[Render](https://render.com)** a partir de la imagen
Docker del repositorio, con una base de datos **MySQL gestionada** en
[Aiven](https://aiven.io) y conexión cifrada por SSL.

```
GitHub (push a main)  →  Render construye el Dockerfile  →  Contenedor en producción
                                                                    │
                                                      SSL           ▼
                                                            MySQL gestionado (Aiven)
```

Cada `push` a `main` dispara automáticamente un nuevo despliegue.

La aplicación está lista para la nube:

- Respeta el puerto que asigna la plataforma (`process.env.PORT`).
- Soporta **conexión SSL** a la base de datos (`DB_SSL=true`).
- Puede **crear el esquema** en el primer arranque (`DB_SYNC=true`).
- Permite añadir el origen del frontend vía `CORS_ORIGINS` **sin tocar el código**.

> 🗓️ El frontend web (proyecto aparte) se publicará en **[Vercel](https://vercel.com)**
> y consumirá esta API. Bastará con añadir su URL a `CORS_ORIGINS`.

---

## 🗂️ Arquitectura del proyecto

Estructura modular de NestJS, un módulo por dominio:

```
src/
├── auth/          Autenticación: login, registro y estrategia JWT
├── users/         Usuarios y bootstrap del administrador inicial
├── productos/     Catálogo, filtros y mantenimiento de productos
├── lotes/         Lotes asociados a productos
├── movimientos/   Entradas, salidas y trazabilidad de stock
└── common/        Interceptores y utilidades compartidas

flyway/
├── sql/           Migraciones de base de datos (versionadas)
└── seed/          Carga inicial de inventario
```

---

## 🔑 Variables de entorno

Crea un archivo `.env` en la raíz. **Los valores de abajo son solo ejemplos: reemplázalos
por los tuyos** (y usa valores fuertes y únicos en producción).

```env
# --- App ---
PORT=3000
NODE_ENV=development

# --- Base de datos (la app Nest usa DB_USER / DB_PASS) ---
DB_HOST=localhost
DB_PORT=3306
DB_NAME=bodega_ecole
DB_USER=root
DB_PASS=<define-una-clave-segura>

# docker-compose usa además estas:
DB_USERNAME=root
DB_PASSWORD=<define-una-clave-segura>
DB_PORT_EXTERNAL=3306

# --- Opciones para la nube (en local déjalas en false) ---
DB_SSL=false          # true al usar una base gestionada (Aiven, etc.)
DB_SYNC=false         # true la 1ª vez en la nube para crear las tablas

# --- Autenticación ---
JWT_SECRET=<usa-un-texto-largo-y-aleatorio>

# --- Admin inicial (creado automáticamente al arrancar) ---
ADMIN_EMAIL=admin@bodega.cl
ADMIN_PASSWORD=<define-una-clave-fuerte>

# --- CORS: webs autorizadas a llamar a la API (separadas por coma) ---
CORS_ORIGINS=http://localhost:5173,http://localhost:5174
```

> ⚠️ **Nunca subas tu `.env` real al repositorio.** Ya está protegido por `.gitignore`,
> y **Gitleaks** vigila que no se filtre ningún secreto por error.

---

## 💻 Ejecución local

```bash
# Instalar dependencias
npm install

# Modo desarrollo (recarga automática)
npm run start:dev
```

La API queda disponible en `http://localhost:3000` y la documentación Swagger en
`http://localhost:3000/docs`.

**Scripts disponibles:**

```bash
npm run start        # producción (requiere build previo)
npm run start:dev    # desarrollo con watch
npm run build        # compila a dist/
npm run lint         # ESLint con auto-fix
npm run test         # tests con Jest
npm run test:cov     # tests con cobertura
```

---

## 🐳 Levantar con Docker Compose

El proyecto incluye los servicios necesarios para un entorno completo:

- `mysql` — base de datos MySQL 8
- `flyway` — ejecuta las migraciones
- `api` — el backend NestJS
- `seed_inventario` — carga inicial de inventario (una sola vez)

```bash
docker compose up --build
```

---

## 📡 Endpoints principales

### Auth
- `POST /auth/login`
- `POST /auth/register` *(solo admin)*

### Productos
- `GET /productos` — filtros: `nombre`, `categoria`
- `POST /productos` *(solo admin)*
- `PATCH /productos/:id` *(solo admin)*
- `DELETE /productos/:id` *(solo admin)*

### Lotes
- `GET /lotes`
- `POST /lotes` *(solo admin)*
- `PATCH /lotes/:id` *(solo admin)*

### Movimientos
- `GET /movimientos` — filtros: `loteId`, `productoId`
- `POST /movimientos/entradas`
- `POST /movimientos/salidas`

> 📖 La lista completa, con parámetros y ejemplos, está en Swagger (`/docs`).

---

## 📌 Estado del proyecto

| Área | Estado |
|---|---|
| API REST (NestJS) | ✅ Funcional |
| Autenticación JWT | ✅ |
| Documentación Swagger | ✅ |
| Pipeline CI (lint + test + build) | ✅ |
| Seguridad: Gitleaks · Trivy · CodeQL · Dependabot | ✅ |
| Imagen Docker multi-stage endurecida | ✅ |
| Despliegue en Render + MySQL en Aiven | ✅ [En vivo](https://bodega-eco.onrender.com/docs) |
| Frontend web en Vercel | 🗓️ Planificado |

---

<p align="center">
  Desarrollado como proyecto de práctica full-stack con enfoque en <strong>calidad y seguridad</strong>.
</p>
