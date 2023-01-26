
Creamos una imagen de Jenkins pero sin el wizard. Aprovechando que esto es bastante rapido.


`docker build -t qqjenkins .`{{execute}}

y una vez que la tenemos, lanzamos el contenedor, usando el modo Host para que se pueda accesar luego.

`docker run -dit -p 8080:8080 --network=host -v /var/run/docker.sock:/var/run/docker.sock --name jenkins-curso qqjenkins`{{execute}}

Esperamos un rato

Y ahora podemos jugar con nuestro playground! 

Ahora Lanzamos el sonarqube

`docker run -dit -p 9000:9000 --network=host --name sonar sonarqube:lts`{{execute}}

Y esperamos....



[Jenkins]({{TRAFFIC_HOST1_8080}})

[Sonarqube]({{TRAFFIC_HOST1_8080}})

NOTA: Este laboratorio, Ha sido creado por Marcelo Guazzardo.
