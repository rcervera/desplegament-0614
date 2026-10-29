# Laboratori 5 - Protocol HTTP amb Nginx
FROM nginx:alpine

# Pàgines HTML (qualsevol fitxer .html de la carpeta, també els que afegeixis als exercicis)
COPY *.html /usr/share/nginx/html/

# Full d'estils compartit
COPY css/ /usr/share/nginx/html/css/

# Configuració de Nginx amb les rutes de prova (substitueix la de per defecte)
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
