En este ejercicio nos generaremos una imagen de react
nos clonamos el repo.

`git clone https://github.com/mguazzardo/MovieApp.git`{{execute}}


entramos al directorio correspondiente :

`cd MovieApp/react-rmdb`{{execute}}

Y ahora compilamos la imagen.

`docker build -t react . `{{execute}}

si observamos el Dockerfile vemos que se expone el port 3000, a ese puerto iremos


`docker run -d --net=host --name pelis react`{{execute}}


Y ahora vemos si todo anduvo bien!

[DemoBootcampParte1]({{TRAFFIC_HOST1_3000}})


