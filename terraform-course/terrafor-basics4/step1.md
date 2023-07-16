#terraform

trataremos de correr terraform usando de provider docker.



Instalamos el cliente de terraform


```
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

```{{execute}}


Lo que haremos en este ejercicio es crear un recurso con los siguientes requerimientos.

```
Resource name = iac_code
File name = /opt/practice
Content = Setting up infrastructure as code
```

Debemos generar el archivo tf correspondiente, y correr los pasos correspondientes.




