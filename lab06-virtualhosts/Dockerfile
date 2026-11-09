# Laboratori 6 - Amfitrions virtuals (Virtual Hosts) amb Nginx
FROM nginx:alpine

# Contingut de cada lloc web, cadascun a la seva carpeta (serà el "root" del seu bloc server)
COPY web-a /usr/share/nginx/html/web-a
COPY web-b /usr/share/nginx/html/web-b

# Configuració de Nginx amb els dos hosts virtuals (substitueix la de per defecte)
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
