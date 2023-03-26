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


Y ahora crearemos un usuario via archivos tf, con el uso de variables. fijarse el archivo variable.tf

Hacemos un cat al archivo variable.tf, y vemos que esta vacio, adrede.

```
cat /root/variable.tf

```{{execute}}

```
cd /root && terraform init && terraform validate && terraform plan -var "nombre=qqmelo" && terraform apply -var "nombre=qqmelo" --auto-approve
```{{execute}}




```
awslocal iam list-users
```{{execute}}


