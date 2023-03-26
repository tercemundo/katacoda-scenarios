#terraform

Veremos en este escenario los famosos modulos.
traeremos como ejemplo el modulo de iam-users, y pasaremos como unico required el nombre del modulo.







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

Y ahora hacemos uso de nuestro modulo.

NOTA IMPORTANTE:

Podremos ver como son los parametros y mas informacion de nuestro modulo en el siguiente link.

https://github.com/terraform-aws-modules/terraform-aws-iam

```
cd /root && terraform init && terraform validate && terraform plan  && terraform apply  --auto-approve
```{{execute}}




```
awslocal iam list-users
```{{execute}}


