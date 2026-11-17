# 🌐 Proyecto Final · Capa 7 del Modelo OSI

![HTML5](https://img.shields.io/badge/HTML5-puro-orange?logo=html5)
![Docker](https://img.shields.io/badge/Docker-ready-blue?logo=docker)
![Nginx](https://img.shields.io/badge/Nginx-alpine-green?logo=nginx)

Sitio web **100 % HTML** para la asignatura **INTERNET: Redes y Comunicaciones IP** (Universidad de Ibagué).
El repositorio incluye un `Dockerfile` para replicar el sitio en cualquier máquina usando un servidor web Nginx.

---

##  Integrantes

| Integrante | Página | Tema del resumen |
|---|---|---|
| Alejandro Arana | `integrantes/integrante1.html` | Modelos OSI y TCP/IP |
| Integrante 2 | `integrantes/integrante2.html` | Direccionamiento IP y subneteo |
| Integrante 3 | `integrantes/integrante3.html` | Servicios de la capa de aplicación |

Cada página contiene una **biografía personal** y un **resumen de lo aprendido**, usando etiquetas HTML como
`<h1>`, `<p>`, `<img>`, `<ul>`, `<ol>`, `<table>`, `<a>`, `<dl>`, `<pre>` y `<blockquote>`.

---

##  Estructura

```text
repo-grupo/
├── README.md
├── Dockerfile
├── docker-compose.yml
├── index.html
├── css/
│   └── estilos.css
├── img/
│   ├── red.svg
│   └── avatar1.svg … avatar3.svg
└── integrantes/
    ├── integrante1.html
    ├── integrante2.html
    └── integrante3.html
```

---

##  Requisitos

- [Git](https://git-scm.com/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (incluye Docker Compose)


---

##  Cómo replicar el sitio

### 1. Clonar el repositorio

```bash
git clone https://github.com/Nixon-Tovar/-Laboratorio-HTTP
cd -Laboratorio-HTTP

```

### 2a. Con Docker Compose (recomendado)

```bash
docker compose up -d --build
```

### 2b. Solo con Docker

```bash
docker build -t proyecto-capa7-html .
docker run -d -p 8001:80 --name proyecto-capa7-html proyecto-capa7-html
```

### 3. Abrir en el navegador

```text
http://localhost:8001
```

---

##  Comandos útiles

| Acción | Comando |
|---|---|
| Ver estado | `docker compose ps` |
| Ver logs (peticiones HTTP) | `docker compose logs -f` |
| Detener | `docker compose down` |
| Reconstruir tras cambios | `docker compose up -d --build` |
| Ver cabeceras HTTP | `curl -I http://localhost:8001` |

---

##  Relación con la Capa 7

1. El navegador (cliente HTTP) envía `GET /index.html` al puerto **8001** del equipo.
2. Docker redirige el puerto 8001 del anfitrión al puerto **80** del contenedor.
3. **Nginx** (servidor HTTP) responde `200 OK` con el archivo HTML.

En `docker compose logs -f` se puede observar cada petición HTTP que recibe el servidor.

---


