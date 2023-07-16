Necesitaremos un registro para construir, pushear y deployar. Si bien existen registros publicos y privados, lo haremos con uno propio. 

Si bien existen muchas opciones para empezar, preferimos la solucion integral de kubernetes, al cual lo instalaremos via helm, [stable Helm chart](https://github.com/helm/charts/tree/master/stable/docker-registry#docker-registry-helm-chart).


`helm repo add stable https://charts.helm.sh/stable`{{execute}}

Agregamos el repo, y ahora hacemos el install del registry

`helm install registry stable/docker-registry --namespace kube-system --set service.type=NodePort --set service.nodePort=31500`{{execute}}

El registro esta disponible como  servicio. Lo listamos listed.

`kubectl get service --namespace kube-system`{{execute}}

Asignamos una variable para accesar a este registry.

`export REGISTRY=[[HOST_SUBDOMAIN]]-31500-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

Esto demorara unos momentos hasta que el registro diga que esta  _Available_.

`kubectl get deployments registry-docker-registry --namespace kube-system`{{execute}}

Una vez que el registro este sirviendo, lo que hacemos es inspeccionarlo.

`curl $REGISTRY/v2/_catalog`{{execute}}
