FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Solo se copian las páginas .html: así nunca viaja al servidor nada más de la
# carpeta del repositorio (por ejemplo .git, Dockerfile o notas).
COPY *.html /usr/share/nginx/html/
