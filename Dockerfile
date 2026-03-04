FROM nginx:alpine

# Creamos el directorio para los certificados
RUN mkdir -p /etc/nginx/ssl

# Copiamos nuestra configuración a la ruta correcta de auto-lectura de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiamos los certificados generados temporalmente durante el Jenkinsfile
COPY cert.crt /etc/nginx/ssl/nginx-selfsigned.crt
COPY cert.key /etc/nginx/ssl/nginx-selfsigned.key