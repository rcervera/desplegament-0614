# Laboratori 7 · Nginx avançat: errors, memòria cau, autenticació i HTTPS

```
lab07-nginx-avancat/
├── Dockerfile
├── default.conf          # blocs 80 (HTTP) i 443 (HTTPS)
├── index.html            # pàgina principal amb enllaços a cada prova
├── 404.html              # pàgina d'error personalitzada
├── 50x.html              # pàgina d'error del servidor
├── css/
│   └── estils.css
├── fitxers/              # carpeta amb llistat automàtic (autoindex)
│   ├── nota.txt
│   └── normes.txt
├── privat/               # zona protegida amb usuari i contrasenya
│   └── index.html
└── FITXA_SEGURETAT.md    # plantilla del lliurable
```

`.htpasswd` i `ssl/` **no** són al repositori (són secrets): els generes tu abans de construir la imatge.

## Posar-lo en marxa

```sh
# 1. Secrets (només el primer cop)
echo "alumne:$(openssl passwd -apr1 contrasenya123)" > .htpasswd
mkdir -p ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout ssl/server.key -out ssl/server.crt -subj "/CN=localhost"

# 2. Imatge i contenidor
docker build -t nginx-avancat:1.0 .
docker run -d --name nginx-avancat -p 8090:80 -p 8443:443 nginx-avancat:1.0

curl -I http://localhost:8090/
curl -k https://localhost:8443/
```

Neteja: `docker rm -f nginx-avancat`
