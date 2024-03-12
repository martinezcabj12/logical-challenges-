## Permisos

Los permisos de los archivos son propiedad que se utiliza para garantizar que ciertos usuarios o grupos de usuarios puedan realizar acciones sobre estos archivos

Lectura (r)

- Archivo: Leer contenido
- Directorio: Listar contenido

Escritura (w)

- Archivo: Escribir y modificar
- Directorio: Crear, borrar archivos

Ejecucion (x)

- Archivo: Ejecutar programa
- Directorio: Acceder, ir (cd)

### propietario del archivo

Es el usuario que genera o crea un archivo/directorio dentro de su directorio de personal o de trabajo, o en algún otro directorio sobre el que tenga derechos

### Grupo de archivo (g)

Definen el alcance que tienen agrupaciones de usuarios y sirven para acotar las opciones que pueden realizar éstos sin necesidad de tener que realizar configuraciones de manera individual.

### Resto de usuario del sistema (o)

Usuarios que no son el propietario, ni pertenecen al grupo de trabajo en el que está el archivo


drwxr-xr-x 2 darosmd darosmd 4096 mar  8 04:08 Level-1
`1`            `2`      `3`

Referencia

1: Tipos de archivos y permisos. Cada archivo queda identificado por 10 caracteres a los que se les denomina máscara.
2: Usuario dueño
3: Grupo

```bash
d rwx rwx rwx
1  2   3   4
```

Referencia:
1: Tipo de archivo:
    - d directorio
    - - archivo
    - l link

2: Permisos de propietario

3: Permisos de Grupo

4: Permisos de Otros usuarios


### Comando

```bash
chmod [quien][operación][permisos][archivo/directorio]
.        1        2         3             4

# Referencia:

# 1:
#   u:propietario
#   g:grupo
#   o:otro
# 2:
#   +(agregar)
#   -(quitar)
#   =(asigna)
# 3:
#   r
#   w
#   x
# 4:
#   archivos
#      y/o
#   directorios
```

## Octal






