Veremos en este ejemplo, como generar una imagen desde dockerfile.

En primer momento, vamos a ver que este corriendo el docker engine.
`docker ps`{{execute}}

Ahora vamos a listar los volumenes existentes

`docker volume ls`{{execute}}

Vamos a crear un volumen llamado ubuntu

`docker volume create ubuntu`{{execute}}

Vamos a volver a listar los volumenes

`docker volume ls`{{execute}}

Vamos a correr el contenedor, con el nuevo volumen

`docker run -dit --name ubuntu01 -v ubuntu:/datos ubuntu:latest`{{execute}}

vamos a entrar en el contenedor

`docker exec -it ubuntu01 bash`{{execute}} 

Vamos a hacer un ls

`ls -ld /datos`{{execute}}

Vamos a crear un archivo dentro de la carpeta datos

`touch /datos/texto.txt`{{execute}}

Vamos a chequear que exista

`ls /datos`{{execute}}

Vamos a salir del contenedor 


`exit`{{execute}}

Vamos a ver el nuevo volumen creado, y su contenido en el sistema host

`ls /var/lib/docker/volumes/ubuntu/_data/`{{execute}}

Vamos a crear un nuevo contenedor montando el mismo volumen

`docker run -dit --name ubuntu02 -v ubuntu:/datos ubuntu:latest`{{execute}}

Vamos a entrar en el container

`docker exec -it ubuntu02 bash`{{execute}}

Vamos a listar la raiz, para ver si se creo la carpeta datos

`ls /datos`{{execute}}

Podemos ver que tenemos los mismos archivos que teniamos en el volumen que habiamos usado en el primer contenedor

Ahora vamos a borrar el primer contenedor, para eso antes que nada debemos salir del contenedor

`exit`{{execute}}

`docker rm -fv ubuntu01`{{execute}}

Ahora vamos a borrar el segundo contenedor

`docker rm -fv ubuntu02`{{execute}}

Ahora vamos a borrar el volumen

`docker volume rm ubuntu`{{execute}}

Con esto finalizamos el ejercicio
Muchas gracias!







Muchas gracias!











