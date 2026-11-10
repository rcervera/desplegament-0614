# Laboratori 9 - Exercici 2: projecte web que vols afegir al panell de GoAccess
FROM nginx:alpine

# EXERCICI 2: afegeix aquí la instrucció de l'apartat 2 perquè Nginx escrigui
# els logs en fitxers. Sense aquesta línia, els logs van a docker logs i GoAccess no els veu.

# Contingut del lloc web
COPY *.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/

EXPOSE 80
