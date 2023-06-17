Usaremos una imagen que ya tengo generada con el usuario admin y el pass admin.


`docker run -dit -p 8080:8080 --network=host -v /var/run/docker.sock:/var/run/docker.sock --name jenkins-curso mguazzardo/pipe-seg`{{execute}}

Esperamos un rato

Y ahora lo que vamos a hacer es generar un registry local.



```
docker run -d -p 5000:5000 --name registry registry:2
```{{execute}}



[Jenkins]({{TRAFFIC_HOST1_8080}})

NOTA: Este laboratorio, Ha sido creado por Marcelo Guazzardo.
