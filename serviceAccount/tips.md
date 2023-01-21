
## Crearemos un nuevo deployment de un dashboard de google, y trataremos de asignarle una sa.

Creamos el deploy con el siguiente comando.

`kubectl create deployment k8s --image=gcr.io/kodekloud/customimage/my-kubernetes-dashboard`{{execute}}

Ahora lo exponemos , para que nos de un  servicio.


`kubectl expose deployment k8s --port=8080`{{execute}}

Con esto , tenemos que hacer un edit para exportarlo por el puerto 30080


`kubectl edit svc k8s`{{execute}}


Lo podemos ver aca, aunque estaria dando errores.

[DASHBOARD UI]({{TRAFFIC_HOST1_30200}})

Creamos una service account (Por que como el dashboard es un servicio la necesitamo

kubectl create serviceaccount dashboard-sa

`kubectl create serviceaccount dashboard-sa`{{execute}}

Ahora debemos aplicar los dos roles , que lo haremos de la siguiente manera

`kubectl apply -f dashboard-sa-role-binding.yml`{{execute}}

Vamos con el segundo manifiesto

`kubectl apply -f pod-reader.yml`{{execute}}

Ahora generamos un token para la sa, que vamos a pegar en el dashboard

`kubectl create token dashboard-sa`{{execute}}

y ahora aplicamos para que quede persistente.

`kubectl apply -f fichero.yaml`{{execute}}


NOTA: Este laboratorio, Ha sido creado por Marcelo Guazzardo.
