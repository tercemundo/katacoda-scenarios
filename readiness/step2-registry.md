Necesitaremos un registro para construir, pushear y deployar. Si bien existen registros publicos y privados, lo haremos con uno propio. 

Si bien existen muchas opciones para empezar, preferimos la solucion integral de kubernetes, al cual lo instalaremos via helm, [stable Helm chart](https://github.com/helm/charts/tree/master/stable/docker-registry#docker-registry-helm-chart).

Agregamos el repo de helm estable.

`helm repo add stable https://charts.helm.sh/stable`{{execute}}

Luego instalamos nuestro registro de docker.

`helm install registry stable/docker-registry --namespace kube-system --set service.type=NodePort --set service.nodePort=31500`{{execute}}

El registro esta disponible como  servicio. Lo listamos listed.

`kubectl get service --namespace kube-system`{{execute}}

Asignamos una variable para acceder despues al registro.
Recordemos que lo usamos en localhost para no tener problemas con los certificados por ahora.

`export REGISTRY=127.0.0.1:31500`{{execute}}


Esto demorara unos momentos hasta que el registro diga que esta  _Available_.

`kubectl get deployments registry-docker-registry --namespace kube-system`{{execute}}

