# Redireccionamiento

Como la entrada estándar y la salida estándar y de error son archivos, pueden ser capturados por la terminal y redireccionados (trasladados) a otros archivos utilizados símbolos en la línea de comandos.

## Redirección de Salida estándar

```bash
ls -l /etc/*.conf > archivo.txt

# Observaciones:
	# Se utiliza el caracter: >
	# La salida del comando es guardada en el archivo indicado.
	# Si el archivo no existe, es creado
	# Si el archivo existe, se sobrescribe su contenido, incluso si el comando tecleado no es correcto.
```

### Redirección no destructiva

```bash
ls -l /etc/*.conf > archivo.txt
date >> archivo.txt
# Observaciones:
	# Es posible redireccionar la salida estándar sin sobrescribir el archivo de salida (se añaden los datos al final del archivos)
	# Se utiliza el caracter: >>
```

### Redireccion de error estándar

```bash
ls -l /root 2> archivo.error
# Observacion:
	# Se utiliza el caracter: 2>
	# La salida de error del comando es guardada en el archivo indicado
	# Si el archivo no existe, es creado
	# Si el archivo existe, se sobrescribe su contenido, incluso si el comando tecleado no es correcto
```

### Redirección de salida y error al mismo archivo

```bash
ls -l /etc/*.conf > archivo.txt 2>&1
# Observaciones:
	# Se redirige la salida y el error a un mismo archivo.
	# 2>&1 Significa que el error(2) se redirige a la salida estándar(1), y como la salida estándar
#se redirige al archivo. entonces ambas van al archivo.
	# Tambien puede escribirse como:
ls -l /etc/*.conf &> archivo.txt
```

### Redirección de entrada estándar

```bash
wc < archivos.config
sort < items.txt
# Observaciones:
	# LOs comandos que esperan datos desde el teclado, pueden recibir datos desde un archivo
	# Se utiliza el caracter: <
```
