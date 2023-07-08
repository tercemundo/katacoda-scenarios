Veremos como correr un pipeline con integración, y pasarlo a nuestro registry


Primero corremos jenkins con una imagen preconfigurada, recordar que el pass es admin:admin

```
docker run -dit -p 8080:8080 --network=host -v /var/run/docker.sock:/var/run/docker.sock --name jenkins-curso mguazzardo/pipe-seg
```{{execute}}


Ahora corremos el registro interno.


```
docker run -d -p 5000:5000 --name registry registry:2
```{{execute}}


Para ingresar al jenkins


[Jenkins]({{TRAFFIC_HOST1_8080}})


Revisamos que al final del plugin, este todo correcto.


```
curl localhost:5000/v2/_catalog
```{{execute}}

