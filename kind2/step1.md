KIND. solucion al nodeport, segun 
https://stackoverflow.com/questions/62432961/how-to-use-nodeport-with-kind


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

Etiquetamos el nodo

```
kubectl label nodes k8s-playground-worker name=app-worker-node
```{{execute}}

Vemos como esta el nodo

```
kubectl describe node k8s-playground-worker 
```{{execute}}

Lanzamos un deploy de nginx

```
kubectl create deploy nginx --image=nginx
```{{execute}}


Vemos que esto haya quedado ok!
```
kubectl get po -o wide
```{{execute}}


exponemos el deploy

Vemos que esto haya quedado ok!
```
kubectl apply -f svc-patch.yaml
```{{execute}}


[NGINX]({{TRAFFIC_HOST1_30000}})



