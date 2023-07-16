NOS BASAMOS EN ESTO PARA SOLUCIONAR EL PROBLEMA: https://stackoverflow.com/questions/62432961/how-to-use-nodeport-with-kind
https://medium.com/cp-massive-programming/deploying-devtron-in-a-local-k8s-kind-cluster-using-terraform-cea9d4d9636
https://developer.hashicorp.com/terraform/tutorials/kubernetes/kubernetes-provider


en este modulo lo que haremos es instalar kind con terraform 

para ello, nos vamos a root e inicializamos el directorio

```
terraform init && terraform plan && terraform apply --auto-approve
```{{execute`}}


`kubectl version`{{execute}}

Veremos los nodos

`kubectl get nodes`{{execute}}


Lanzamos un deploy de nginx, con su servicio, todo "terrafoneado"

```
terraform plan && terraform apply --auto-approve
```{{execute}}



[NGINX]({{TRAFFIC_HOST1_30080}})

