#terraform

trataremos de correr terraform aws mock.

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
echo "aws_access_key_id = foo" >> /root/.aws/credentials
echo "aws_secret_access_key = bar" >> /root/.aws/credentials

```{{execute}}


una vez que este esto, seguimos con el paso que esta debajo.





verificamos el cliente de terraform


```
terraform version

```{{execute}}


Y ahora crearemos un usuario via archivos tf.


```
cd /root && terraform init && terraform validate && terraform plan && terraform apply --auto-approve
```{{execute}}



y ahora listamos los usuarios.


```
awslocal iam list-users
```{{execute}}


Pero ahora vamos a ver el problema de generar otro usuario en otro directorio.

para eso, generamos un nuevo directorio

```
mkdir /root/user2
cd /root/user2
```{{execute}}


vamos a generar un usuario qq, en este nuevo directorio

```
cat <<EOF > /root/user2/user-iam.tf
resource "aws_iam_user" "users" {
     name = "qq"
}

```{{execute}}


Ahora me copio de root el main.tf


```
cp /root/main.tf /root/user2
```{{execute}}


Inicializo el directorio para que me agregue el backend


```
cd /root/user2
terraform init

```{{execute}}

una vez inicializado, lo de siempre del ciclo de vida

```
cd /root/user2
terraform plan
terraform apply --auto-approve

```


ahora vemos si se crearon los usuarios.



```
awslocal iam list-users
```{{execute}}


como vemos los usuarios se crearon correctamente , peero, si corro....

```
terraform execute

```{{execute}}

vemos el usuario que se creo en este directorio, lo cual es un gran problema, por que yo necesito generar un archivo consolidado de tfstate.

vamos a hacerlo.

Primero. creamos un directorio vacio.


```
mkdir /root/final

```{{execute}}


vamos a definir el directorio /root como source state y el directorio /root/user2 como destination.

para eso

```
cd /root
terraform state pull > /root/final/source.tfstate
cd /root/user2
terraform state pull > /root/final/destination.state

```{{execute}}


vamos al directorio final


copiamos el archivo main.tf (Para que tenga los recursos y el backend)

```
cd /root/final
cp /root/main.tf .

```{{execute}}


Corremos el siguiente comando para la consolidacion

```
cd /root/final
terraform state mv -state=source.tfstate -state-out=destination.tfstate aws_iam_user.users aws_iam_user.foo

```{{execute}}


subimos el estado

```
cd /root/final
terraform init
terraform state push destination.tfstate
```{{execute}}


corremos el terraform show

```

cd /root/final
terraform show
```{{execute}}


finalmente corremos

```
 awslocal iam list-users
```{{execute}}


