Primero chequeamos que la app este corriendo . Para encontrar la IP expuesta corremos `describe service`

`kubectl describe services/kubernetes-bootcamp`{{execute}}

Creamos una variable llamada `NODE_PORT` 

`export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT`{{execute}}

Ahora hacemos uni `curl` hacia la ip y puerto expuesto:

`curl $(minikube ip):$NODE_PORT`{{execute}}

Cad vez que corremos `curl` vemos que nos asigna una ip nueva y un diferente pod, todos corriendo la version v2.

Ud puede confirmar que el update esta corriendo con el siguiente comando `rollout status`:

`kubectl rollout status deployments/kubernetes-bootcamp`{{execute}}

Para ver la actual imagen del Pod, corremos `describe pods`:

`kubectl describe pods`{{execute}}

En el campo `Image` de la salida, verificamos que estemos corriendo la ultima version (v2).
