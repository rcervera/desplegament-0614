# Laboratori 6 · Amfitrions virtuals (Virtual Hosts) amb Nginx

```
lab06-virtualhosts/
├── Dockerfile
├── default.conf      # dos blocs server: web-a.local i web-b.local
├── web-a/            # contingut del Lloc A (root del primer host)
│   ├── index.html
│   └── css/
│       └── estils.css
└── web-b/            # contingut del Lloc B (root del segon host)
    ├── index.html
    └── css/
        └── estils.css
```

## Posar-lo en marxa

```sh
docker build -t vhosts-lab:1.0 .
docker run -d --name vhosts-lab -p 8095:80 vhosts-lab:1.0
curl -H "Host: web-a.local" http://localhost:8095
curl -H "Host: web-b.local" http://localhost:8095
```

Per fer servir directament els noms de domini, afegeix a `/etc/hosts`:

```
127.0.0.1 web-a.local
127.0.0.1 web-b.local
```

Neteja: `docker rm -f vhosts-lab`
