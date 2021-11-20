Chequearemos que los servicios esten balanceando el trafico. Para eso primero corremos.

`kubectl describe services/kubernetes-bootcamp`{{execute}}

Creamos una variable de ambiente llamada NODE_PORT

`export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT`{{execute}}

Ahora hacemos un curl varias veces, y veremos como va cambiando la ip, y le pega a distinto pod cada vez.

`curl $(minikube ip):$NODE_PORT`{{execute}}

Esto demuestra que load-balancing esta funcionando, pero si lo queremos hacer mejor, hacemos lo siguiente.

`for i in {1..100}; do curl $(minikube ip):$NODE_PORT;done`{{execute}}

Y aca lo vemos aun mejor
