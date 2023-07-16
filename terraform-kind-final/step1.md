NOS BASAMOS EN ESTO PARA SOLUCIONAR EL PROBLEMA: https://stackoverflow.com/questions/62432961/how-to-use-nodeport-with-kind

en este modulo lo que haremos es instalar kind con terraform 

para ello, nos vamos a root e inicializamos el directorio

```
terraform init && terraform plan && terraform apply --auto-approve
```{{execute`}}


`kubectl version`{{execute}}

Veremos los nodos

`kubectl get nodes`{{execute}}


Lanzamos un deploy de nginx

```
kubectl create deploy nginx --image=nginx
```{{execute}}


Vemos que esto haya quedado ok!
```
kubectl get po -o wide
```{{execute}}


exponemos el deploy

Vemos que esto haya quedado ok!
```
kubectl apply -f svc-patch.yaml
```{{execute}}


[NGINX]({{TRAFFIC_HOST1_30000}})

