Veremos en este ejemplo, la iniciación a docker.

En primer momento, vamos a ver que este corriendo el docker engine. `docker ps`{{execute}}

Nos vamos a clonar el repo de la aplicacion

`git clone https://github.com/mguazzardo/flaskapi`{{execute}}

nos posicionamos en el directorio correcto

`cd flaskapi`{{execute}}

Vamos a crear nuestro primer Container

`docker build -t flaskapi .`{{execute}}


`docker run -d --name flaskapi flaskapi`{{execute}}

vamos a ver que este corriendo 

`docker ps`{{execute}}

Vamos a ver si está todo corriendo en orden, averiguamos la IP del contenedor.

`IP=$(docker inspect flaskapi | grep IPAddress | tail -1 | awk -F":" '{print $2}' | awk -F\" '{print $2}')`{{execute}}

y ahora, le hacemos un curl al port 8080, a los dos endpoints / y /products

`curl $IP:8080/`{{execute}}

y ahora al /other

`curl $IP:8080/products`{{execute}}

todo anduvo bien, nos vamos!

Muchas gracias!

`exit`{{execute}}

