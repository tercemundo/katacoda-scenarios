Veremos de empezar armando las cosas de a poco.
Por empezar generaremos un usuario anna, con privilegios de sudo.

```
sudo useradd -m -G sudo -s /bin/bash anna
echo "anna ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
snap install kubectx --classic 
su - anna
```{{execute}}


Continuamos con el user de anna, para generar los certificacdos

```
mkdir .certs
cd .certs
openssl genrsa -out anna.key 2048
sudo sed -i "/^RANDFILE/d" /etc/ssl/openssl.cnf
openssl req -new -key anna.key -out anna.csr -subj "/CN=anna"
sudo openssl x509 -req -in anna.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out anna.crt -days 600
sudo -i
```{{execute`}}


Ahora volvemos a root para hacer algunas configuraciones
