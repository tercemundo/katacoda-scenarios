#Docker y terraform

trataremos de correr terraform usando de provider docker.



Instalamos el cliente de terraform


```
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

```{{execute}}

Lo primero que hacemos es correr terraform init, y vemos que directorios se han generado

vemos nuestro archivo provider.tf. observemos y podemos contestar....

Que tipo de instancia de aws estamos queriendo generar?

Viendo el archivo kube.tf. Podemos decir cual es el nombre del recurso de kubernetes que estamos queriendo usar?


