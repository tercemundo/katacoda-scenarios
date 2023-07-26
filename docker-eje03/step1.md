Veremos en este ejemplo, como generar una imagen desde dockerfile.

Vamos a generar una base de datos prepopulada

`docker build -t customsql .`{{EXECUTE}}

Lanzamos la imagen, con la password de root master. La ip por defecto que va a tomar es la 172.17.0.2

`docker run -d --name mysql -p 3306:3306 -e 'MYSQL_ROOT_PASSWORD=master' customsql`{{EXECUTE}}


Ahora vamos a instalar el cliente mysql y conectarnos

``` apt -y install mysql-client
    mysql -u root -pmaster -h 172.17.0.2```{{EXECUTE}}


Ahora vamos a ver las bases de datos, y usar la nuestra

```show databases;
   use myexample;
   show tables;
   ```{{EXECUTE}}

Ahora Listamos todo

`select * from mytable`{{EXECUTE}}

Con esto finalizamos el ejercicio
Muchas gracias!


NOTA: Dedicado al gran hacker de Ignacio SoSa!





Muchas gracias!











