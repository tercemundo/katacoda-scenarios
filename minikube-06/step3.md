Lanzamos otro deploy y tagueamos la imagen con and deploy `v10` :

`kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=gcr.io/google-samples/kubernetes-bootcamp:v10`{{execute}}

Usamos `get deployments` Para ver el estado:

`kubectl get deployments`{{execute}}

vemos los pods

`kubectl get pods`{{execute}}

Vemos que algunos pods tienen como   status  `ImagePullBackOff`. 

Para obtener mas informacion de esto, lanzamos `describe pods`: 

`kubectl describe pods`{{execute}}

En la seccion de  `Events` vemos que la imagen v10 no existe en el repositorio. Ahora tenemos un problema, por que no nos anda nada. Necesitamos volver a la ultima version conocida andando.

Para ello, nos salva el comando `rollout undo`:

`kubectl rollout undo deployments/kubernetes-bootcamp`{{execute}}

El `rollout undo` commando nos revierte hacia la v2. La ultima buena conocida.

Use the `get pods` commands to list the Pods again:

`kubectl get pods`{{execute}}

Cuatro pods estan corriendo, para ver la imagen que usan corremos `describe pods`.

`kubectl describe pods`{{execute}}

El deployment esta nuevamente corriendo la version (v2). El rollback fue exitoso.
