#!/bin/sh
# genera-transit.sh - fa peticions variades a un servidor web per omplir el log
# Ús: sh genera-transit.sh [port]      (si no indiques el port, fa servir el 8081)
PORT=${1:-8081}
WEB=http://localhost:$PORT

for i in $(seq 1 30); do curl -s -o /dev/null $WEB/; done
for i in $(seq 1 5);  do curl -s -o /dev/null $WEB/serveis.html; done
for i in $(seq 1 5);  do curl -s -o /dev/null $WEB/contacte.html; done
for i in $(seq 1 10); do curl -s -o /dev/null $WEB/css/estils.css; done
for i in $(seq 1 10); do curl -s -o /dev/null $WEB/img/logo.png; done
for i in $(seq 1 8);  do curl -s -o /dev/null $WEB/no-existeix-$i.html; done
curl -s -o /dev/null -A "Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1" $WEB/
curl -s -o /dev/null -A "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:131.0) Gecko/20100101 Firefox/131.0" $WEB/
curl -s -o /dev/null -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0 Safari/537.36" $WEB/

echo "Fet: 71 peticions enviades a $WEB"
