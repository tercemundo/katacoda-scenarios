Vamos a ver como es el tema de crear unas imagenes que no sean como root 


Primero generamos un pod comun de nginx como root 

```

kubectl run nginx --image=nginx
```{{execute}}

Esperamos, y cuando el pod este corriendo, analizamos que usuario lo esta corriendo

```
kubectl exec -it nginx -- id

```{{execute}}


Como vemos, este es el usuario de root, y nosotros no queremos eso, para eso
vamos a generar nuestras propias imagenes.


Primero instalamos el docker registry.
Y borramos la imagen anterior

```
docker run -d -p 5000:5000 --name registry registry:2
kubectl delete po nginx
```{{execute}}


Luego debemos clonarnos el repo de esas imagenes, desde el Dockerfile generar
las imagenes, y las pusheamos

```
git clone https://github.com/Zawadidone/non-root-docker-images
cd non-root-docker-images/
ls
cd nginx/
ls
docker build -t localhost:5000/nginx .
docker push localhost:5000/nginx
kubectl run nginx --image=localhost:5000/nginx
kubectl get po
```{{execute}}

vemos si levanto, recordemos que levanta en el 8080, por que es un port no priv

```
kubectl get po -o wide
curl 192.168.0.8:8080
```{{execute}}

Recordar que la IP puede cambiar....


