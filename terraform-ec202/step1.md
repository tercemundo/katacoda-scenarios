#terraform

trataremos de correr terraform aws mock.

vamos a generar el entorno

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





verificamos que todo este ok credo , con el siguiente comando

```
terraform show

```{{execute}}


Vemos que lo que hemos creado acá, es lo siguiente


```
variable "ami" {
  default = "ami-06178cf087598769c"
}

variable "instance_type" {
  default = "m5.large"
}

variable "region" {
  default = "eu-west-2"
}

resource "aws_instance" "cerberus" {
  ami           = var.ami
  instance_type = var.instance_type
}

```


Debo fijarme en los specs de amazon, que es esta ami creada, pero lo que si vemos, es que en ningun lado se crea un juego de llaves ssh.

vamos a crearlo!

para eso, primero crearemos un directorio .ssh

```
mkdir .ssh
ssh-keygen -t rsa -N "" -f .ssh/cerberus
```{{execute}}


y Luego de que esto esta generado, vemos de correr los comandos para lanzar la ec2

Agregamos este bloque para el sshkey

```
resource "aws_instance" "cerberus" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "cerberus"
}
```


```
cd /root && terraform init && terraform plan && terraform apply --auto-approve
```{{execute}}

y luego

```
terraform show
```{{execute}}


