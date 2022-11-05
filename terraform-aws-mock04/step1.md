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





verificamos el cliente de terraform


```
terraform version

```{{execute}}


Y definimos los users a crear

```
joacocry
demischichon
facu
qqmelo
tokado
pomaster
```


```
awslocal iam list-users
```{{execute}}

Vemos que no tenemos ningun usuario creado. vamos a crear un los siguientes usuarios, usando una lista. 

Lanzamos los comandos de terra

```
cd /root && terraform init && terraform validate && terraform plan && terraform apply --auto-approve
```{{execute}}


y ahora listamos los usuarios.


```
awslocal iam list-users
```{{execute}}


