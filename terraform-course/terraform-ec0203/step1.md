#terraform

Vamos a instalar una ec2, ahora con nginx.

Para eso vamos a hacer una injeccion via user-data

```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
pip install awscli-local
alias awslocal="aws --endpoint-url=http://localhost:4566 --region eu-west-1" >> ~/.bashrc
git clone https://github.com/iAlan02/hello-LocalStack.git && cd hello-LocalStack
docker-compose up -d
mkdir /root/.aws
echo "[default]" > /root/.aws/config
echo "region = us-east-1" >> /root/.aws/config
echo "output = json" >> /root/.aws/config

echo "[default]" > /root/.aws/credentials
echo "aws_access_key_id = foo" >> /root/.aws/credentials
echo "aws_secret_access_key = bar" >> /root/.aws/credentials

```{{execute}}


una vez que este esto, seguimos con el paso que esta debajo.




```
AWS Access Key ID: foo
AWS Secret Access Key: bar
Region: us-east-1
Output: json
```



verificamos el cliente de terraform


```
terraform version

```{{execute}}



Debo fijarme en los specs de amazon, que es esta ami creada, pero lo que si vemos, es que en ningun lado se crea un juego de llaves ssh.

vamos a crearlo!

para eso, primero crearemos un directorio .ssh

```
cd /root
mkdir .ssh
ssh-keygen -t rsa -N "" -f .ssh/cerberus
```{{execute}}




agregamos en el fichero main.tf, la funcion file, para leer el fichero user-data.



```
cd /root && terraform init && terraform plan && terraform apply --auto-approve
```{{execute}}

y luego

```
terraform show
```{{execute}}

Cuando hago el show, debo ver en los outputs, que ip publica tengo.


