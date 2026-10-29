# Laboratori 5 · Protocol HTTP amb Nginx

```
lab05-http/
├── Dockerfile
├── default.conf      # rutes de prova (301, 403, 405, 500, GET/POST...)
├── index.html
├── perfil.html       # posa-hi les teves dades
├── formulari.html    # formularis GET i POST
└── css/
    └── estils.css
```

## Posar-lo en marxa

```sh
docker build -t http-lab:1.0 .
docker run -d --name http-lab -p 8090:80 http-lab:1.0
curl -i http://localhost:8090/
```

Neteja: `docker rm -f http-lab`
