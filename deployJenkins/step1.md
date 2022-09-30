Vemos si hay pods corriendo.


vamos al directorio que esta corriendo jenkins

`cd flaskapi/jenkins`{{execute}}


Ahora vamos a generar nuestra imagen de Jenkins

`docker build -t jenkins-it .`{{execute}}

Generaremos una imagen de jenkins. Cuando termine la lanzamos.

`bash levantar-jenkins.sh`{{execute}}

vamos a necesitar el password de admin `Admin Password`:

`bash initial-pass.sh`{{execute}}

Empezara a correr el Jenkins en el puerto 8080. hacemos los seteos necesarios.

`echo "root:master" | chpasswd `{{execute}}




