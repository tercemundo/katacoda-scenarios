Para borrar servicios  `delete service` command. Los labels tambien pueden usarse aca:

`kubectl delete service -l app=kubernetes-bootcamp`{{execute}}

Vemos que todo haya salido.

`kubectl get services`{{execute}}

Esto deja de exponer nuestra app. veremos.

`curl $(minikube ip):$NODE_PORT`{{execute}}

La app no esta sirviendo fuera del cluster. Pero podemos probar que esta siga sirviendo dentro del pod.

`kubectl exec -ti $POD_NAME -- curl localhost:8080`{{execute}}

Vemos que la app esta arriba , esto es por que el deploymente esta manejando la app. Para bajar la aplicacion, y bajar el pod que corre en ella, debemos borrar el deployment, quien es quien vela por los pods. 
