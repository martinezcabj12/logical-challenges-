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

### free

```bash
# Muestra la memoria ram y swap libre
free
# muestra en forma legible
free -h
# muestra el total de cada columna
free -t
```

### whereis

```bash
# Muestra las posibles ubicaciones de app
whereis
```

### which

```bash
# Muestra cual app corre por defecto
which
```

### clear

```bash
# Limpiar la terminal
clear
```

### hostname

```bash
# Muestra el nombre del Sistema
hostname
# muestra la ip
hostname -I
```

### id

```bash
# muestra los id `UID` `GID`
id
# muestra solamente el id efectiva del usuario
id -u
```

### last

```bash
# Muestra los usuarios que han accedido al Sistema
last
# podesmo utilizar la lista para sacar solo los nombres
last | cut -d -f1
```

### lspci

```bash
# Lista todos los PCI
lspci
```

### lsusb

```bash
# Lista los usb disponibles
lsusb
```

### lsblk

```bash
# Lista los bloques disponibles
lsblk
```

### lsb_release

```bash
# Obteener informacion sobre la distribucion de linux -- (-a) esta opcion muestra toda las informacion disponible sobre la distribucion. Incluyendo la descripcion. El ID de distribucion, la Version, el codigo de nombre y mas
lsb_release
```

### history

```bash
# historia de la terminal
history
```

### man

```bash
# muestra el manual para el comando
man [comando]
# muestra funcion que apropos
man -k [comando]
```

### apropos

```bash
# Buscar nombres y descripciones de una linea de las paginas de manual
apropos [comando]
```

### whatis

```bash
# Muestra descripciones de una linea de las paginas de manual
whatis [comando]
```

## Compresión

```bash
# crear un archivo `tar` llamado file.tar que contiene archivos
tar cf file.tar [archivos]
# Extraer el contenido de file.tar
tar xf file.tar
# crear un tar comprimido con gzip
tar czf file.tar.gz [archivos]
# Extraer un tar que usa gzip
tar xzf file.tar.gz
# comprime `file` u lo renombrara file.gz
gzip file
# descomprime file.gz
gzip -d file.gz
```

## Redes

### ping

```bash
# Ejecuta ping a host y muestra los resultado
ping host
# Descargar un archivo por red
wger [link]
# Continua una descarga pausada
wget -c [link]
# para saber ip publica
curl ifconfig.me
```

## Instalar Software

```bash
# Instalar un paquete [debian]
dpkg -i archivo.deb
# Instalar un paquete [RPM]
rpm -Uvh archivo.rmp
```

## Atajo de Teclado

| Control   | Descripcion    |
|--------------- | --------------- |
| Ctrl+C | Detener el comando actual  |
| Ctrl+Z | Pausa el comando actual, lo resume con `fg`, `bg` al fondo  |
| Ctrl+D | Cierra la seccion, similiar a exit  |
| Ctrl+W | Borra una palabra dela linea actual  |
| Ctrl+U | Borra toda la linea  |
| Ctrl+R | Repite el ultima comando  |
| exit   | Sale de la secion actual  |


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

## Gestión de procesos

### ps

```bash
# Muestra los procesos activo actualmente
ps
```

### top

```bash
# Muestra todos los procesos
top
```

### kill

```bash
# Mata un procesos indicando el PID
kill [id-pid]
# Mata un proceso llamado PROC
killall proc
```

### bg

```bash
# Lista LOS procesos detenidos o trabajando en fondo. Puede resumir proceso
bg
```

### fg

```bash
# Trae el proceso mas reciente al frente
fg
# con el N proceso al frente
fg %
```

## Permisos

| Comando   | Descripcion  |
|--------------- | --------------- |
| grep patron archivos| Buscar en los archivos por el patron   |
| grep -r patron archivos | Buscar en los archivos por el patron   |
| comando \| grep patron | Buscar por el patron de salida de comandopatron |
| locate archivos | Encuentra todas las instancias del archivo  |
| find <donde> <opciones> <que busco> | <donde> punto de origen de la búsqueda  <opciones> filtro de busqueda. Nombre, tipo, fecha de creacion/modificacion del archivo.    <que-busco> patron de busqueda |
| find -type d,f,l -name arch | Busca por tipo de archivo. (f archivo normal, d directorio, l enlace simbolink) |
| find -size 10M | Busca por tamaño de archivo (c:byte; k:kilobytes; M:Megabytes; G:gigabytes) |
| find -name archivo | Busca el archivo con el nombre exacto -iname busca el archivo con el nombre sin tener en cuenta las mayusculas y minusculas |
