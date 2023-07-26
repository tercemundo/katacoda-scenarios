Veremos en este ejemplo, como generar una imagen desde dockerfile.

Vamos a generar una base de datos prepopulada

`docker build -t customsql .`{{execute}}

Lanzamos la imagen, con la password de root master. La ip por defecto que va a tomar es la 172.17.0.2

`docker run -d --name mysql -p 3306:3306 -e 'MYSQL_ROOT_PASSWORD=master' customsql`{{execute}}


Ahora vamos a instalar el cliente mysql y conectarnos

``` 
apt -y install mysql-client
mysql -u root -pmaster -h 172.17.0.2 
```{{execute}}


Ahora vamos a ver las bases de datos, y usar la nuestra

```
show databases;
use myexample;
show tables;
   ```{{execute}}

Ahora Listamos todo

`select * from mytable;`{{execute}}

Con esto finalizamos el ejercicio
Muchas gracias!


NOTA: Dedicado al gran hacker de Ignacio SoSa!





Muchas gracias!











