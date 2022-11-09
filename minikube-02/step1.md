Como minikube, kubectl esta instalado en la terminal. 
probaremos como usar terra con helm , instalando nginx.


`kubectl version`{{execute}}

Veremos los nodos

`kubectl get nodes`{{execute}}

Instalamos el cliente de terraform

```
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/                                                share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://                                                apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.                                                list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```{{execute}}


Ahora instalamos el helm chart

`git clone https://github.com/mguazzardo/terraform-minikube-helm-istio`{{execute}}

Luego

`cd terraform-minikube-helm-istio/helm-provider`{{execute}}

y Luego, los comandos de rigor

`terraform init && terraform plan && terraform apply --auto-approve`{{execute}}


Y luego hacemos 

`kubectl get po`{{execute}}
