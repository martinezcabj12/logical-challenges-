### Tipos de Directorios

---

- Estáticos: Sólo `root` puede modificarlos. Estos archivos están disponibles para su lectura por cualquier otro usuario del sistema. (/bin, /sbin/, /opt, /boot, /usr/bin, …)
- Dinamicos: Son directorios cuyos archivos no son estáticos, es decir, cambian. Están disponibles tanto para ser leídos como para ser escritos (algunos sólo por el usuario propietario y por root). De estos tipos de directorios se suele hacer copias de seguridad más a menudo que de los directorios Estáticos. ( /var/mail, /var/spool, /home, …)
- Compartibles: Pueden compartirse a través de red, estar en un ordenador y ser usados desde otro. Ejemplos de esta categoría son: /usr/bin, /opt
- Restringidos: Son directorios y archivos que no se pueden compartir, su acceso y modificación están restingidos a root (/etc, /boot, /var/run, /var/lock, …)
