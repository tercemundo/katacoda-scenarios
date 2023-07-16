
## Veremos de crear un taint para los pods bee y mosquito.

Tiramos el primer comando para hacer un taint. (afectara al node01)

`kubectl taint nodes node01 spray=mortein:NoSchedule`{{execute}}

Entonces lo que voy a hacer ahora es crear un nuevo pod


`kubectl apply -f mosquito.yaml`{{execute}}

En teoria, no se deberia poder alocar, ni en el controlplane, y ni en el nodo, veremos.


`kubectl get po`{{execute}}


Lo podemos ver aca, que esta quedando en modo pending.


`kubectl get po`{{execute}}

Pedimos mas info, con el siguiente comando

`kubectl describe po mosquito`{{execute}}

Vamos con se ha aplicado el taint.

ahora vamos a crear el pod bee, pero este acepta el nodo1.
veamos...




`kubectl apply -f bee.yaml`{{execute}}

vemos que lo acepto. ejecutamos el comando para estar seguros.

`kubectl get po`{{execute}}

y ahora lo que vamos a hacer es quitarle el taint al controlplane.

`kubectl taint nodes controlplane node-role.kubernetes.io/control-plane:NoSchedule-`{{execute}}


finalmente, vemos que ambos pods estan corriendo, y el CONTROLPLANE puede aceptar pods!


`kubectl get po`{{execute}}



NOTA: Este laboratorio, Ha sido creado por Marcelo Guazzardo.
