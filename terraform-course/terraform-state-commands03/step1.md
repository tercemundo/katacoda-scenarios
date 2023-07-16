#terraform

Crearemos una configuracion para correrla localmente.

vamos a generar el entorno

```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
pip install awscli-local
alias awslocal="aws --endpoint-url=http://localhost:4566 --region eu-west-1" >> ~/.bashrc
git clone https://github.com/tercemundo/hello-localstack && cd hello-localstack
docker-compose up -d
mkdir /root/.aws
echo "[default]" > /root/.aws/config
echo "region = us-east-1" >> /root/.aws/config
echo "output = json" >> /root/.aws/config

echo "[default]" > /root/.aws/credentials
echo "aws_access_key_id = minioadmin" >> /root/.aws/credentials
echo "aws_secret_access_key = minioadmin" >> /root/.aws/credentials

```{{execute}}


una vez que este esto, seguimos con el paso que esta debajo.





verificamos el cliente de terraform


```
terraform version

```{{execute}}


Crearemos el server de minio.


```
wget https://dl.min.io/server/minio/release/linux-amd64/archive/minio_20221111034420.0.0_amd64.deb -O minio.deb
dpkg -i minio.deb
mkdir ~/minio
nohup  minio server ~/minio --console-address :30080 &
```{{execute}}



Ahora lo mismo para la linea de comandos de minio.

```
wget https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x mc
mv mc /usr/local/bin/mc
mc alias set local http://172.30.1.2:9000 minioadmin minioadmin
mc admin info local

```{{execute}}


Creamos un bucket llamado remote-state

```
mc mb local/remote-state
```{{execute}}

Ejecutamos el server de s3, user minionadmin pass minionadmin

[S3 server]({{TRAFFIC_HOST1_30080}})


```
cd /root && terraform init && terraform validate && terraform plan && terraform apply --auto-approve
```{{execute}}


Ahora vemos que si corremos los comandos de state, corren, pero sin tener un archivo state, pues este esta corriendo remoto.


```
terraform state list
```{{execute}}


