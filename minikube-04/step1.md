Vemos si hay pods corriendo.


Esperamos unos segundos y vemos si hay pods corriendo

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

`export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}') &&
echo NODE_PORT=$NODE_PORT`{{execute}}

Ahora podemos probar mediante curl, si la aplicacion responde `curl`

`echo $NODE_PORT`{{execute}}

Como necesito fijar el puerto, primero voy a ejecutar un describe con salida json.

`kubectl get services kubernetes-bootcamp -o json`{{execute}}

Ahora vamos a hacer un pacheo, por que queremos que el puerto este corriendo en el 30080

<img align="right" src="./assets/patch-svc.png" width="800">

`kubectl patch service kubernetes-bootcamp --type='json' --patch='[{"op": "replace", "path": "/spec/ports/0/nodePort", "value":30080}]' `{{execute}}

Y vemos que el servicio esta expuesto.

[DemoBootcampParte1]({{TRAFFIC_HOST1_30080}})
