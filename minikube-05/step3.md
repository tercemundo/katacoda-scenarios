Para bajarlo hacia dos replicas, corremos de nuevo el comando `scale`:

`kubectl scale deployments/kubernetes-bootcamp --replicas=2`{{execute}}
 
Listamos los deployments para ver que el cambio haya echo efecto.

`kubectl get deployments`{{execute}}

El numero de replicas bajo a dos, para eso lo podemos ver con  `get pods`:
 
`kubectl get pods -o wide`{{execute}}

Esto nos confirma que en dos se quedo el numero de replicas.

