# Laboratori 7 - Nginx avançat: errors, memòria cau, autenticació i HTTPS
FROM nginx:alpine

# Contingut del lloc web
COPY index.html /usr/share/nginx/html/index.html
COPY 404.html /usr/share/nginx/html/404.html
COPY 50x.html /usr/share/nginx/html/50x.html
COPY css /usr/share/nginx/html/css
COPY fitxers /usr/share/nginx/html/fitxers
COPY privat /usr/share/nginx/html/privat

# Secrets: NO són al repositori, els generes tu a l'apartat 3 abans de construir la imatge
COPY .htpasswd /etc/nginx/.htpasswd
COPY ssl /etc/nginx/ssl

# Configuració de Nginx (substitueix la de per defecte)
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443
