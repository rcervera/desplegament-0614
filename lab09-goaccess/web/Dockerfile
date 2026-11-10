# Laboratori 9 - Servidor web amb els logs en fitxers (per analitzar-los amb GoAccess)
FROM nginx:alpine

# Els logs de la imatge oficial són enllaços a la sortida de Docker (docker logs):
# els esborrem perquè Nginx escrigui fitxers de debò a /var/log/nginx
RUN rm -f /var/log/nginx/access.log /var/log/nginx/error.log

# Contingut del lloc web
COPY *.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY img/ /usr/share/nginx/html/img/

EXPOSE 80
