# Laboratori 9 · Gestió de logs amb GoAccess

```
lab09-goaccess/
├── genera-transit.sh     # fa 71 peticions variades (pàgines, CSS, imatge, 404, navegadors)
├── web/                  # servidor principal (apartats 2 a 7)
│   ├── Dockerfile        # RUN rm dels enllaços de log: Nginx escriu fitxers de debò
│   ├── index.html
│   ├── serveis.html
│   ├── contacte.html
│   ├── css/
│   │   └── estils.css
│   └── img/
│       └── logo.png
└── projecte/             # web de l'exercici 2
    ├── Dockerfile        # SENSE el RUN rm: l'has d'afegir tu
    ├── index.html
    ├── galeria.html
    ├── qui-som.html
    └── css/
        └── estils.css
```

Els informes HTML que generis (`informe*.html`) no es pugen al repositori (`.gitignore`).

## Posar-lo en marxa

Totes les ordres s'executen a la VM, des de `~/desplegament-0614/lab09-goaccess`.

```sh
# 1. Imatge del servidor amb els logs en fitxers
docker build -t web-logs:1.0 web

# 2. Volums i servidor web (port 8081)
docker volume create nginx-logs
docker volume create goaccess-informe
docker run -d --name web-logs -p 8081:80 \
  -v nginx-logs:/var/log/nginx \
  -v goaccess-informe:/usr/share/nginx/html/estadistiques:ro web-logs:1.0

# 3. GoAccess en temps real (port 7890)
docker run -d --name goaccess -p 7890:7890 \
  -v nginx-logs:/var/log/nginx:ro -v goaccess-informe:/informe \
  allinurl/goaccess /var/log/nginx/access.log --log-format=COMBINED \
  --real-time-html -o /informe/index.html

# 4. Trànsit de prova i panell
sh genera-transit.sh          # port 8081 per defecte; sh genera-transit.sh 8082 per al segon servidor
```

Panell: <http://localhost:8081/estadistiques/> (cal la regla de VirtualBox dels ports 8081 i 7890).

Neteja:

```sh
docker rm -f goaccess web-logs web-logs-2 web-projecte-logs
docker volume rm nginx-logs nginx-logs-2 projecte-logs goaccess-informe
```
