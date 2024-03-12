# Comandos

```bash

```

## Manejo de Archivos

### ls

```bash
ls # Lista el contenido de la ubicacion que le indiquemos

# Mostrar tambien archivos ocultos
ls -a

# Mostrar el contenido tambien de las subdirectorios (Recursiva)
ls -R

# Mostrar en forma de lista completa con mas información
ls -l
```

### cd

```bash
# Acceder a un directorio
cd [directorio]
```

### pwd

```bash
# Crear un directorio
mkdir [name-directorio]
# Crear de manera Recursiva
mkdir -p hola/{pepe/roble,tomas,ariel}
# Por cada directorio creado mostrara un mensaje
mkdir -v [name-directorio]
```

### Borrar archivo

```bash
# Borrar archivo
rm [name-archivo]
# Borrar directorio con contenido o sin
rm -r [name-directorio]
# Forzar borrar archivo
rm -f [name-archivo]
# Pregunta ante de borrar cada archivo
rm -i [name-archivo]
# Borrar directorio vacios
rm -d [name-directorio]
```

### cp

```bash
# Copiar
cp [archivo] [ubicacion]
# Copiar el directorio y su contenido
cp [directorio] [ubicacion]
# Copiar y renombra
cp [archivo] [ubicacion/name-archivo]
```

### mv

```bash
# Mover archivos o directorios
mv [archivo] [archivo] [ubicacion]
# renombra archivo o directorio
mv [archivo] [directorio]
# Mover un directorio con su contenido
mv -r [archivo] [ubicacion]
```
### ln

```bash
# Crear un archivo simbolink
ln -s [archivo] [name-link]
```

### touch

```bash
# Crear archivo
touch [name-archivo]
# Actualizar la fecha de modificacion
touch -d '15 Nov' [archivo]
```

### Cat

```bash
# Leer un archivo
cat [archivo]
# redirrecionar
cat < [archivo]
# Informacion del cpu
cat /proc/cpuinfo
# informacion de la memoria
cat /proc/meminfo
```

### file

```bash
# ver el que tipo de archivo
file [archivo]
# Ver solamente el tipo de archivo
file -b [archivo]
```

### cmp

```bash
# Verifica si los archivos son identico si es asi no muestra salida
cmd arch1 arch2
```

## Informción del Sistema

### cal
```bash
# Muestra el calendario
cal
```

### uptime

```bash
# Mostrar el tiempo que esta en ejecución el Sistema
uptime
# Mostrar solamente el tiempo que lleva el Sistema ejecutando
uptime -p
# Desde aquihora esta prendido el Sistema
uptime -s
```

### w

```bash
# Muestra quien esta conecto al Sistema
w
```

### date

```bash
# Muestra la fecha y hora del Sistema
date
# Personalizar
date +%dd/%mm/%YY-%HH:%mm
```

### whoami

```bash
# Muestra el nombre de usuario asociado al identificador de usuario efectivo actual. Equivale a id -un
whoami
```

### uname

```bash
# Muestra el nombre del equipo
uname
# muestra informacion del kernel
uname -a
# muestra la ip
uname -I
```

### df

```bash
# Muestra el uso del disco
df
```

### du

```bash
# estima el uso de espacio de ficheros
du
# produce un total de los archivo/directorio que le indiquemos
du -c archivo directorio
# Mostrar en un formato legible
du -h archivo directorio
# somo contara el contenido del nivel 1 sin los subdirectorios que podria encontrar
du -S
# Mostrar breve el resulta del contenido que le indiquemos
du -s
```

## Filtro

### more

- Descripcion: More es un filtro para hojear de pantalla en pantalla. Version primitiva

```bash
more [archivo]
```

### less

- Descripcion: no tiene que leer todo el fichero de entrada antes de comenzar a mostrar pantalla a pantalla el archivo

```bash
less [archivo]
```

### head

- Descripcion: Muestra las 10 primeras lineas. Si procesa mas de un ARCHIVO, procederá cada uno con uno encabezado con su nombre

```bash
head [archivo]
```


