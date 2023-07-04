
Desplegamos una imagen que tenemos generada, para esta ocasion.




`docker run -dit -p 8080:8080 --network=host -v /var/run/docker.sock:/var/run/docker.sock --name jenkins-curso docker.io/mguazzardo/pipe-seg`{{execute}}

Esperamos un rato

Intentamos ingresar a Jenkins.

El usuario es admin y el password es admin.



[Jenkins]({{TRAFFIC_HOST1_8080}})

NOTA: Este laboratorio, Ha sido creado por Marcelo Guazzardo.
