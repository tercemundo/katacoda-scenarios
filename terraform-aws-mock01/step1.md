#terraform

trataremos de correr terraform aws mock.

vamos a generar el entorno

```
unzip awscliv2.zip
./aws/install
pip install awscli-local
alias awslocal="aws --endpoint-url=http://localhost:4566 --region eu-west-1" >> ~/.bashrc
git clone https://github.com/iAlan02/hello-LocalStack.git && cd hello-LocalStack
docker-compose up -d

```{{execute}}


una vez que este esto, seguimos con el paso que esta debajo.



usaremos para configurar nuestra cuenta "fake", los siguientes datos

```
AWS Access Key ID: foo
AWS Secret Access Key: bar
Region: us-east-1
Output: json
```

Corremos el comando y seteamos esto.

```
aws configure
```{{execute}}


verificamos el cliente de terraform


```
terraform version

```{{execute}}


Y ahora haremos una serie de consultas a IAM.


```
awslocal iam list-users
```{{execute}}

Vemos que no tenemos ningun usuario creado. vamos a crear un usuario llamado walter y luego uno llamado emanuel

```
awslocal iam create-user --user-name emanuel
```{{execute}}

Ahora vamos a crear uno llamado walter

```
awslocal iam create-user --user-name walter
```{{execute}}


y ahora listamos los usuarios.


```
awslocal iam list-users
```{{execute}}


