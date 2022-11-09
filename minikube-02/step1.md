Como minikube, kubectl esta instalado en la terminal. 
probaremos como usar terra con helm , instalando nginx.


`kubectl version`{{execute}}

Veremos los nodos

`kubectl get nodes`{{execute}}

Ahora instalamos el helm chart

`git clone https://github.com/mguazzardo/terraform-minikube-helm-istio`{{execute}}

Luego

`cd terraform-minikube-helm-istio/helm-provider`{{execute}}

y Luego, los comandos de rigor

`terraform init && terraform plan && terraform apply --auto-approve`{{execute}}


Y luego hacemos 

`kubectl get po`{{execute}}
