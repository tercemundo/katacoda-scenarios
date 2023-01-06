
## Crearemos un nuevo deployment

Empezaremos por crear un deploy de mysql




Aca empezamos a forjar nuestro configmap

##Declarando los configmaps en forma declarativa
`kubectl create deploy mydb --image=mariadb`{{execute}}

Solo a nivel ilustrativo, escalamos a dos el deploy


`kubectl scale deploy mydb --replicas=2`{{execute}}

Listamos los objetos


`kubectl get all --selector app=mydb`{{execute}}

Vemos que esta dando un error..... por que no se definieron las vars.


Creamos un config

`{kubectl get all --selector app=mydb`{{execute}}


Vemos el config

`kubectl describe cm mydbvar`{{execute}}

Hacemos un environment variable update con

`kubectl set env deploy/mydb --from=configmap/mydbvar`{{execute}}

vemos como quedo el deployment


`kubectl get deploy mydb -o yaml`{{execute}}

finalmente vemos los pods corriendo!

`kubectl get po`{{execute}}

Con esto terminamos nuestro ejercicio
