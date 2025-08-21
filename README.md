# Base-de-Datos-de-Empleados
BD de Empleados
# 🗂️ Base de Datos de Empleados

¡Bienvenido! 👋 Este repositorio contiene el diseño y los scripts SQL para una Base de Datos de Empleados: diagramas ER, scripts para crear tablas y ejemplos de consultas. Este README está adaptado para PostgreSQL.

---

## 🧭 Tabla de contenidos
- 🔍 [Descripción](#-descripción)
- 📁 [Estructura del proyecto](#-estructura-del-proyecto)
- 🛠️ [Requisitos](#-requisitos)
- ⚙️ [Instalación e importación (PostgreSQL)](#%EF%B8%8F-instalación-e-importación-postgresql)
- 🐳 [Opción con Docker](#-opción-con-docker)
- 📌 [Ejemplos de uso / consultas](#-ejemplos-de-uso--consultas)
- 🧾 [Diagrama ER](#-diagrama-er)
- 🤝 [Contribuciones](#-contribuciones)
- 📜 [Licencia](#-licencia)
- 👤 [Autor / Contacto](#-autor--contacto)

---

## 🔍 Descripción
Este proyecto agrupa recursos para modelar y crear una base de datos de empleados para PostgreSQL: scripts SQL para crear esquema, poblado de datos de ejemplo y diagramas de Entidad-Relación para entender las relaciones entre las tablas.

---

## 📁 Estructura del proyecto
- Diagrama Entidad Relacion/ 🗺️ — Diagramas del modelo ER (imágenes o archivos del diagrama).
- SQL/ 💾 — Scripts SQL (creación de tablas, relaciones, datos de ejemplo). Los scripts están preparados para PostgreSQL; revisa los archivos si vas a migrar a otro SGBD.
- LICENSE 📄 — Licencia del proyecto (MIT).
- README.md 📘 — Este archivo.

---

## 🛠️ Requisitos
- PostgreSQL (recomendado >= 12). 🐘  
- Cliente psql (incluido en la instalación de PostgreSQL).  
- Opcional: pgAdmin, DBeaver u otro GUI para administrar la base de datos. 💻

---

## ⚙️ Instalación e importación (PostgreSQL)
1. Clona el repositorio:
bash
git clone https://github.com/JuaninJuan999/Base-de-Datos-de-Empleados.git
cd Base-de-Datos-de-Empleados


2. Crea la base de datos (ejemplo con usuario postgres):
bash
# Como usuario del sistema o con privilegios:
sudo -u postgres psql -c "CREATE DATABASE empleados_db WITH ENCODING 'UTF8';"

O usando psql con un usuario PostgreSQL:
bash
psql -U postgres -c "CREATE DATABASE empleados_db WITH ENCODING 'UTF8';"


3. Importa los scripts SQL (ajusta el nombre del archivo según esté en SQL/):
bash
# Importar esquema
psql -U postgres -d empleados_db -f SQL/crear_esquema.sql

# Importar datos de ejemplo (si existe)
psql -U postgres -d empleados_db -f SQL/poblar_datos.sql


4. Si tienes un volcado en formato custom (.dump) usa pg_restore:
bash
createdb -U postgres empleados_db
pg_restore -U postgres -d empleados_db SQL/backup_empleados.dump


Nota: si tu instalación usa otro usuario/host/puerto, añade -h host -p puerto -U usuario según corresponda.

---

## 🐳 Opción con Docker
Si prefieres levantar un contenedor PostgreSQL rápido:
bash
docker run --name pg-empleados -e POSTGRES_PASSWORD=mi_contraseña -e POSTGRES_DB=empleados_db -d postgres:15
# Luego copia los scripts al contenedor y ejecútalos con psql, o conéctate desde el host:
docker cp SQL/crear_esquema.sql pg-empleados:/crear_esquema.sql
docker exec -it pg-empleados psql -U postgres -d empleados_db -f /crear_esquema.sql


---

## 📌 Ejemplos de uso / consultas
- Listar todos los empleados:
sql
SELECT * FROM empleados;


- Buscar empleados por departamento:
sql
SELECT e.nombre, d.nombre AS departamento
FROM empleados e
JOIN departamentos d ON e.departamento_id = d.id
WHERE d.nombre = 'Ventas';


- Contar empleados por puesto:
sql
SELECT puesto, COUNT(*) AS total
FROM empleados
GROUP BY puesto;


Ajusta nombres de tablas/columnas según los scripts que estén en SQL/.

---

## 🧾 Diagrama ER
En la carpeta Diagrama Entidad Relacion/ encontrarás imágenes o archivos del modelo ER que muestran las entidades principales (empleados, departamentos, puestos, etc.) y sus relaciones. Úsalos para entender el diseño y documentar cambios.

---

## 🤝 Contribuciones
¡Contribuciones bienvenidas! ✨
- Abre un issue para proponer cambios o reportar problemas.
- Crea un fork, haz tus cambios y envía un Pull Request.
- Describe claramente los cambios en el PR y añade ejemplos si modifica scripts SQL.

Si vas a migrar los scripts a otro SGBD (p. ej. MySQL), crea una carpeta SQL/migrations/ y documenta las diferencias.

---

## 📜 Licencia
Este proyecto está bajo la licencia *MIT*. Consulta el archivo LICENSE para más detalles. 🧾

---

## 👤 Autor / Contacto
Proyecto original por: *JuaninJuan999* (GitHub).  
Si deseas contactarme o colaborar: abre un issue o PR en este repositorio. 🔗