# Desplegament d'aplicacions web (0614)

Codi dels laboratoris del mòdul 0614 (CFGS DAW · Institut Vidal i Barraquer).

## Com descarregar-lo

Des de la màquina virtual Alpine:

```sh
su -c "apk add git"        # només la primera vegada
git clone https://github.com/rcervera/desplegament-0614.git
cd desplegament-0614
```

Si ja el tens clonat, actualitza'l amb `git pull`.

Sense git:

```sh
wget -O lab.zip https://github.com/rcervera/desplegament-0614/archive/refs/heads/main.zip
unzip lab.zip && cd desplegament-0614-main
```

## Laboratoris

| Carpeta | Laboratori |
|---|---|
| [`lab05-http`](lab05-http) | Laboratori 5 · Protocol HTTP amb Nginx |
