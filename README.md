# Laboratorio HTTP · Grupo 6

Sitio de Redes de Computadoras sobre HTTP en la capa de aplicación del modelo OSI.
La portada enlaza las biografías y los resúmenes de los integrantes.

## Archivos del proyecto

| Archivo o carpeta | Función |
|---|---|
| `index.html` | Portada con la explicación de HTTP y los enlaces a los aportes. |
| `integrantes/` | Una página HTML por integrante, con su biografía y resumen del curso. |
| `img/` | Diagrama local del intercambio HTTP. |
| `Dockerfile` | Usa Nginx como servidor y copia los archivos del sitio. |
| `docker-compose.yml` | Define el servicio y la conexión del puerto 8001 al puerto 80. |

## Antes de entregar

- Editar cada página de `integrantes/` con su nombre, biografía y resumen del curso.
- Ajustar los nombres de los enlaces en `index.html`.
- Se incluyeron tres páginas siguiendo la estructura sugerida de la guía. Si el grupo tiene otra cantidad, ajustar los archivos y sus enlaces.
- Probar el sitio y compartir el enlace del repositorio con el profesor.

## Ejecutar en otra computadora

En Windows, abre Docker Desktop y espera a que arranque. En PowerShell, ubícate
en la carpeta del proyecto donde está el Dockerfile. Si lo recibiste por
GitHub, puedes descargarlo con **Code → Download ZIP**, extraerlo y abrir
PowerShell en la carpeta extraída.

```powershell
docker compose up -d --build
docker compose ps
```

Abre <http://localhost:8001> y revisa cada enlace. Para ver el estado y los
encabezados de una respuesta HTTP, ejecuta:

```powershell
curl.exe -I http://localhost:8001/
```

Se espera un estado `200 OK` y una cabecera `Content-Type` con `text/html`.
La opción `-I` usa el método HEAD, que pide los encabezados de la respuesta.
Para ver el HTML que devuelve una solicitud GET, usa `curl.exe http://localhost:8001/`.

Docker publica el puerto 8001 de la computadora y lo conecta con el puerto 80
del contenedor. El Dockerfile copia los archivos del sitio a la carpeta pública
de Nginx. Si cambias el HTML, reconstruye el sitio con el primer comando.

Para detenerlo, ejecuta:

```powershell
docker compose down
```

## Subir el proyecto a GitHub

1. Crea un repositorio nuevo con el nombre `grupo-6-laboratorio-http`.
2. Usa la opción **uploading an existing file** si el repositorio está vacío, o
   **Add file → Upload files** si ya tiene contenido.
3. Sube los archivos y carpetas que están dentro de `grupo-6-laboratorio-http`.
   Conserva las carpetas `img` e `integrantes`. El archivo oculto
   `.dockerignore` también se incluye para excluir material auxiliar del
   contexto de Docker.
4. Pulsa **Commit changes**. Verifica que aparezcan `index.html`,
   `Dockerfile` y `README.md` al abrir el repositorio.
5. Copia la dirección del repositorio y adjúntala a la entrega de Moodle.
   Si el repositorio es privado, verifica que el profesor pueda acceder.

## Referencia de clase

Se conservaron el Dockerfile, la configuración de Docker Compose y el
archivo .dockerignore del ejemplo docente. La portada y los aportes del
Grupo 6 usan HTML puro.

[Repositorio de referencia del profesor](https://github.com/danfelun/IRYCIP-Sitio-HTML)
