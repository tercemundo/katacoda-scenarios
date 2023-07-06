vamos a agregar los binding, para eso como root, tenemos que hacer lo siguiente


```
git clone https://github.com/tercemundo/cka
cd cka
kubectl create -f podaccessrole.yaml
kubectl create -f rolebinding.yaml
kubectl create -f deployaccessrole.yaml
kubectl create -f rolebinding-deploy.yaml

kubectl create deploy roleapp --image=nginx
su - anna
```{{execute}}


y finalmente como anna, 


```
kubectl get pods -n default

kubectl get all
```{{execute}}
