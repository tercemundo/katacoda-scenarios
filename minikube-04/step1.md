Vemos si hay pods corriendo.

`kubectl get pods`{{execute}}

Nuevamente, si no hay pods corriendo esperamos.

Ahora vemos si hay servicios corriendo

`kubectl get services`{{execute}}

Tenemos un servicio llamado  kubernetes que ha sido creado cuando se inicio el cluster.
Para crear un nuevo servicio y exponer el trafico usaremos el comando expose con el parametro NodePort. (Minikube soporta loadbalancer en su ultima version pero corriendo directo, usando metal-lb)

`kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080`{{execute}}

vemos los `get services`:

`kubectl get services`{{execute}}

Vemos que tenemos un servicio llamado kubernetes-bootcamp. Aquie es cuando ese servicio recibe una ip llamada Cluster IP, que puede accederse desde el cluster.

Para encontrar que puerto ha sido abierto (Mediante la opcion  NodePort )  corremos  `describe service`:

`kubectl describe services/kubernetes-bootcamp`{{execute}}

Creamos una variable de ambiente llamada  NODE_PORT con el valor asignado:

`export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT`{{execute}}

Ahora podemos probar mediante curl, si la aplicacion responde `curl`

`curl $(minikube ip):$NODE_PORT`{{execute}}

Y vemos que el servicio esta expuesto.
