# Imagen base: servidor web Nginx sobre Alpine Linux (liviana)
FROM nginx:alpine

# Copiar el sitio HTML al directorio que Nginx publica
COPY . /usr/share/nginx/html

# Puerto HTTP del contenedor (Capa 7)
EXPOSE 80
