
## Crearemos un nuevo deployment

Crearemos un nuevo deploy con nuestro fichero yaml




`kubectl create -f mariadb-secret.yaml`{{execute}}

Si queremos ver el progreso, lo que hacemos es lo siguiente

`kubectl describe po`{{execute}}

Como vemos , esto lo hice adrede por que esta dando un error caracteristico.

el objetivo del lab es solucionarlo.

Pista. borrar el deploy, crear la secret, volver a correr el deploy


NOTA: Este laboratorio, Ha sido creado por Marcelo Guazzardo.
