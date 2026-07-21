# ============================================================================
#  Dockerfile multi-stage (dos etapas) — Proyecto "Ecole"
#
#  Idea: compilar en una etapa "builder" con TODAS las herramientas, y luego
#  copiar SOLO lo necesario a una imagen final liviana y sin dependencias
#  de desarrollo. Menos peso y menos vulnerabilidades en producción.
# ============================================================================

# ----------------------------------------------------------------------------
#  ETAPA 1 · "builder": aquí se compila el proyecto.
#  Instala TODAS las dependencias (incluidas las de desarrollo) porque
#  se necesitan para compilar TypeScript -> JavaScript.
# ----------------------------------------------------------------------------
FROM node:20-alpine AS builder

WORKDIR /app

# Copiamos solo los manifiestos primero para aprovechar la caché de Docker:
# si package.json no cambia, no reinstala dependencias en cada build.
COPY package*.json ./
RUN npm ci

# Ahora sí el resto del código y compilamos (genera la carpeta dist/).
COPY . .
RUN npm run build

# 'npm prune --omit=dev' ELIMINA las dependencias de desarrollo de
# node_modules, pero conserva las de producción ya instaladas (incluyendo
# módulos nativos ya compilados como bcrypt). Así no reinstalamos nada.
RUN npm prune --omit=dev

# ----------------------------------------------------------------------------
#  ETAPA 2 · "runtime": la imagen final que corre en producción.
#  Parte limpia de node:20-alpine y solo recibe lo imprescindible.
# ----------------------------------------------------------------------------
FROM node:20-alpine AS runtime

WORKDIR /app

# Marca el entorno como producción (algunas librerías se optimizan con esto).
ENV NODE_ENV=production

# Parcha vulnerabilidades conocidas del sistema operativo base
# (por ejemplo, actualizaciones de openssl/libcrypto).
RUN apk --no-cache upgrade

# Copiamos SOLO el resultado de la etapa builder:
#   - node_modules ya "podado" (solo dependencias de producción)
#   - dist/ (el JavaScript compilado)
#   - package.json (por si se necesita en tiempo de ejecución)
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist
COPY package*.json ./

EXPOSE 3000

# Buena práctica de seguridad: NO correr como root. La imagen de node
# ya trae un usuario sin privilegios llamado 'node'.
USER node

# Arrancamos directamente con node (equivale a tu script start:prod).
CMD ["node", "dist/main"]
