Bajamos una imagen pre configurada y la mandamos al port 3000 

```
docker run --name gitea  -p 2222:22 -p 3000:3000 -e GITEA__security__INSTALL_LOCK=true -d mguazzardo/custom-gitea:2
```{{execute}}


Para ingresar al gitea, user root pass admin1234


[Gitea]({{TRAFFIC_HOST1_3000}})

Entramos para ver como anda todo.

para poder clonar el repo, corremos lo siguiente

```
git clone ssh://git@localhost:2222/root/prueba01.git
```{{execute}}

Creamos un ns para argocd

```
kubectl create namespace argocd
kubectl apply -n argocd -f /root/install.yaml
```{{execute}}





Luego decodificamos la contrasenia e ingresamos.

```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```{{execute}}



```
curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
rm argocd-linux-amd64

```{{execute}}

[ArgoCD Server]({{TRAFFIC_HOST1_30164}}






Creado por Marcelo Guazzardo
