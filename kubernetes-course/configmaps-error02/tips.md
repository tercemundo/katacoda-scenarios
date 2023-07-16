
## Crearemos un nuevo deployment

A veces ,cuando tenemos muchas variables, no es muy buen negocio poner todas las variables en el
fichero declarativo yaml, por que seria engorroso.
Para eso vienen los configmaps a nuestra ayuda.
Empezaremos con nuestro proyecto.





Aca empezamos a forjar nuestro configmap

##Declarando los configmaps en forma declarativa



Crearemos el configmap de la manera mas sencilla (Saltamos este paso adrede)




Aplicamos este deployConfig

`kubectl create -f configmaps.yaml`{{execute}}

Pero vemos que sale un error!

`kubectl get po`{{execute}}

Vemos que nos da un error, que en el futuro nos va a servir para debuggear, el famoso ContainerConfigError!.
y es por que nos olvidamos, adrede de definir el configmap!

Lo hacemos.

`kubectl create configmap cm1 --from-literal=MENSAJE1="Hola Busybox" --from-literal=MENSAJE2="Bye Busybox"`{{execute}}

y ahora esperamos, que se regenere!.



Primero vemos los logs 

Me consigo el POD:

`POD=$(kubectl get po | grep -i ru | awk '{print $1}')`{{execute}}

Con esto veo los logs, y luego entro al POD

`kubectl logs $POD`{{execute}}

Ahora vemos las variables de ambiente, para eso entramos al pod

`kubectl exec -it $POD -- sh`{{execute}}

Y adentro del pod

`env | grep MENSAJE1`{{execute}}

Luego salimos

`exit`{{execute}}

El tema es que esto es a veces poco practico, y lo veremos de como levantarlo desde un fichero, con el formato clave valor.

Con esto terminamos nuestro ejercicio
