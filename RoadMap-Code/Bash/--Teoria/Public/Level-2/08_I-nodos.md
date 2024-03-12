# I-nodes


En GNU/Linux, cada archivo en el sistema de archivos tiene un número único llamado i-nodo, que es una estructura de datos que almacena información esencial sobre el archivo, como permisos, propietario, ubicación en el disco duro y fecha de creación. Para visualizar estos i-nodos, se utiliza el comando "ls -i".

### Enlaces o links

- Son referencia a archivos.
- Se usan:
    - para evitar crear multiples copias de un archivo
    - para compartir información
    - para ahorrar espacio en disco y tareas de administración de copias de archivos

### Enlaces duros o hard links

- Un enlace duro es un archivo que comparte el mismo contenido almacenado en disco que el archivo original, ya que ambos apuntan al mismo inodo. A diferencia de una copia, el enlace duro no duplica el archivo. Puede crearse en la misma partición del disco, ya que cada partición tiene su propia tabla de inodos.
- Los atributos del enlace duro, como permisos y propietario, son idénticos a los del archivo original, haciendo que ambos sean equivalentes. Los cambios realizados en cualquier enlace duro se reflejan en todos los demás enlaces duros y en el archivo original.
- Es importante destacar que los enlaces duros solo pueden hacerse entre archivos y no entre directorios. Además, eliminar un enlace duro no afecta a los demás; todos persisten, incluido el archivo original, ya que comparten la misma categoría de enlaces duros

<aside>
💡 Un enlace duro en GNU/Linux es un archivo que comparte el mismo contenido que el original, ya que ambos apuntan al mismo inodo. A diferencia de una copia, no duplica el archivo y comparte los mismos atributos, como permisos y propietario. Los cambios hechos en un enlace duro se reflejan en todos los demás, y se pueden borrar individualmente sin afectar a los demás enlaces duros ni al archivo original.

</aside>

```bash
# Crear un enlace duro o hard link
ln archivo nombre_enlace

```

### Enlaces simbólicos o soft links

- Un soft link (enlace simbólico) es un puntero indirecto a un archivo que contiene la ruta al archivo existente, apuntando al nombre del archivo original que a su vez está asociado con un contenido almacenado en el disco duro. A diferencia de los hard links, cada soft link tiene su propio i-nodo, distinto al del archivo original.
- Las diferencias clave con los hard links incluyen la capacidad de crear soft links hacia archivos no existentes o en otros sistemas de archivos. Estos enlaces se identifican en una lista mediante el comando "ls -l". Si se elimina el archivo original, los soft links ya no funcionarán, ya que solo contienen la ruta al archivo original, quedando apuntando a un archivo inexistente.
- La eliminación de un enlace simbólico no afecta al archivo original, ya que los soft links son independientes.

<aside>
💡 Un soft link (enlace simbólico) en GNU/Linux es un puntero a un archivo que contiene la ruta al archivo existente. A diferencia de los hard links, cada soft link tiene su propio i-nodo y puede apuntar a archivos no existentes o en otros sistemas de archivos. Se identifican con "ls -l". Si se borra el archivo original, los soft links apuntan a un archivo inexistente, y borrar un enlace simbólico no afecta al archivo original.

</aside>

```bash
# Crear un enlace simbólico o soft link
ln -s archivo nombre_simbolico.sym
```
