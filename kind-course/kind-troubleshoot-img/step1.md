#terraform

trataremos de correr kubernetes con requisitos minimos. (solo para practicar).

vamos a generar el entorno

```
snap install kubectl --classic
go install sigs.k8s.io/kind@v0.17.0
mv /root/go/bin/kind /usr/local/bin/
```{{execute}}


Creamos el cluster




```
kind create cluster --name k8s-playground --config /root/kind-config.yaml

```{{execute}}

Vemos los nodes

```
kubectl get nodes
```{{execute}}

corremos el deploy

```
kubectl create -f deploy-mal.yaml
```{{execute}}

Vemos como estan los pods

```
kubectl get po
```{{execute}}

vemos que estan con la imagen mal 

```
kubectl edit deploy qqmelo
```{{execute}}

tratamos de arreglarlo

```
 kubectl get deployment qqmelo -o jsonpath='{.spec.template.spec.containers[0].image}'
```{{execute}}

```
bash verify.sh
```{{execute}}

