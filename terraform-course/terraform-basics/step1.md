#Docker y terraform

trataremos de correr terraform usando de provider docker.



Instalamos el cliente de terraform


```
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

```{{execute}}

Lo primero que hacemos es correr terraform init, y vemos que directorios se han generado

` cd /root && terraform init `{{execute}}

Podriamos ver en los directorios que se han generado cual es la version del recurso local que estamos corriendo?

Podriamos decir cuantos proveedores estamos utilizando?

Podriamos decir cuantos recursos estamos usando?

Ahora lo que vamos a hacer es correr el plan.

`terraform plan`{{execute}}`

Analizamos el plan, y finalmente vemos de correr el apply.

`terraform apply --auto-approve`{{execute}}

Revisamos que todo este ok.

