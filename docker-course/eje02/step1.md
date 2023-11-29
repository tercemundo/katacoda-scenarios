Veremos en este ejemplo, como correr un container de mariadb.

En primer momento, vamos a ver que este corriendo el docker engine.
`docker ps`{{execute}}

Vamos a buscar la imagen de mariadb

`docker search mariadb`{{execute}}

Vamos a descargar y correr el contenedor de mariadb, y seteamos la clave de root

`docker run -d --name mariadb -e 'MYSQL_ROOT_PASSWORD=master' mariadb`{{execute}}

Vemos que este corriendo el contenedor de mariadb

`docker ps`{{execute}}

Para poder probar el acceso a la base de datos, lo que vamos a hacer, es instalar el cliente de mariadb

`apt -y update && apt -y install mariadb-client-core-10.0`{{execute}}

Ahora, necesitamos saber la IP del contenedor

`docker inspect mariadb | grep IPAddress`{{execute}}

Una vez que tenemos todo lo necesario, nos conectamos

`mysql -u root -pmaster -h 172.18.0.2`{{execute}}

Con esto podemos ver que tenemos el ejercicio terminado!

Muchas gracias!











