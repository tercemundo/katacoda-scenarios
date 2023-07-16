Vamos a deployar nuestra primera aplicacion de kubernetes con el siguiente comando `kubectl create deployment`. Necesitamos proveer el nombre del deployment y la ubicacion de la imagen , incluido el repo, si este esta por ejemplo en dockerhub. 

`kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1`{{execute}}

Bien, ya tenemos nuestra primera aplicacion.

Ahora listaremos los deployments que tenemos corriendo con el siguiente comando.


`kubectl get deployments`{{execute}}

vemos que tenemos  1 deployment corriendo en una sola instancia de la aplicacion . Esta instancia esta corriendo un contenedor de docker.
