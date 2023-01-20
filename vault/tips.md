
## Crearemos un nuevo deployment

Clonamos este repo.




`git clone https://github.com/pruebasmg/vault01`{{execute}}

Instalamos kubens

`snap install kubectx --classic`{{execute}}

Empezando


```
cd vault01
helm repo add hashicorp https://helm.releases.hashicorp.com
helm install vault hashicorp/vault --namespace vault --create-namespace -f hashicorp-vault/values.yaml
```{{execute}}


Vamos al destino vault, y corremos

```
kubens vault
nohup kubectl port-forward vault-0 8200:8200 -n vault &
```{{execute}}

Darle enter...

Ahora cambiamos de clusterIP a nodeport el servicio (Para acceder desde afuera).
Me mande un hack para no tener que editar el fichero...

```
kubectl apply -f /root/vault01/svc-modificado.yml
```{{execute}}


Ahora hay que entrar al pod 

`kubectl exec -it vault-0 -- sh`{{execute}}

Nota: el token de root es root

```
export VAULT_TOKEN="root"
export VAULT_ADDR='http://127.0.0.1:8200'

vault login -address=http://127.0.0.1:8200 -tls-skip-verify
```{{execute}}
Acá el token que nos solicitan es root, lo ponemos (Por que esto no se puede automatizar)
```
vault kv put secret/dev/app username="admin" password="p4ssw0d"
```{{execute}}

Luego salimos y miramos por la pagina web.

```
exit
```{{execute}}

Ahora instalamos el operator

```
helm repo add external-secrets https://charts.external-secrets.io

helm install external-secrets \
   external-secrets/external-secrets \
    --namespace external-secrets \
    --create-namespace \
    --set installCRDs=true

```{{execute}}


Luego generamos el cluster-store




`kubectl create -f external-secret/secret.yaml`{{execute}}

Esperamos un rato

 
```
sleep 30 
kubectl create -f external-secret/clustersecretstore.yaml
```{{execute}}

Ahora creamos un namespace app para desplegar el External Secret


`kubectl create ns app`{{execute}}


Aplicamos el yaml


`kubectl apply -f app/externalsecret-basic.yaml -n app`{{execute}}

Revisamos

`kubectl get secret basic-credentials -o yaml -n app`{{execute}}

Vamos a la pagina del vault

[VAULT UI]({{TRAFFIC_HOST1_30200}})

NOTA: Este laboratorio, Ha sido creado por Marcelo Guazzardo.
