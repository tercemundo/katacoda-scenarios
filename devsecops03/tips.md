
Creamos una imagen de Jenkins pero sin el wizard. Aprovechando que esto es bastante rapido.


`docker build -t qqjenkins .`{{execute}}

y una vez que la tenemos, lanzamos el contenedor, usando el modo Host para que se pueda accesar luego.

`docker run -dit -p 8080:8080 --network=host -v /var/run/docker.sock:/var/run/docker.sock --name jenkins-curso qqjenkins`{{execute}}

Esperamos un rato

Ahora lo que vamos a hacer, es clonar un repo

`git clone https://github.com/mguazzardo/devopsNinja`{{execute}}

y luego nos vamos al directorio

`cd devopsNinja/CentosDocker/DebianSSH`{{execute}}

y ahi generamos la imagen de docker con ssh, y luego la lanzamos

`docker build -t debian .`{{execute}}

y la lanzamos

`docker run -d --name debian debian`{{execute}}


Luego probamos de entrar por ssh, el pass es master

`ssh devops@172.17.0.2`{{execute}}




[Jenkins]({{TRAFFIC_HOST1_8080}})

NOTA: Este laboratorio, Ha sido creado por Marcelo Guazzardo.
