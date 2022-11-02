#Docker y terraform

trataremos de correr terraform usando de provider docker.



Instalamos el cliente de terraform


```
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

```{{execute}}

Corremos terraform init y terraform plan

` cd /root && terraform init && terraform plan ` {{execute}}

finalmente, corremos el apply

`terraform apply --auto-approve` {{execute}}

para revisar que todo salio como queriamos, ejecutamos 

`docker ps `{{execute}}
