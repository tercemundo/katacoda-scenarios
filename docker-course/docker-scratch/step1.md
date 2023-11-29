Veremos en este ejemplo, como generar una imagen de docker desde scratch

En primer momento, vamos a ver que este corriendo el docker engine. `docker ps`{{execute}}

Utilizaremos como punto de partida una imagen llamada scratch

Luego clonaremos un repo, para nuestro proposito

`git clone https://github.com/tercemundo/centos7-from-scratch`{{execute}}

nos posicionamos en el directorio correcto

`cd centos7-from-scratch`{{execute}}

Vamos a crear la imagen

`docker build -t centos-scratch .`{{execute}}

y luego la corremos, recordemos que al ser una imagen de un os, hay que correrla con itd.



`docker run -itd --name centos centos-scratch`{{execute}}

vamos a ver que este corriendo 

`docker ps`{{execute}}

todo anduvo bien, nos vamos!

Muchas gracias!


- Laboratorio creado por Marcelo Guazzardo

if you wanna contact me, please send email mguazzardo76@gmail.com
