
## Crearemos un nuevo deployment usando helm. un wordpress






Aca seteamos para instalar nuestro repo de helm.


```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
```{{execute}}

Esto es muy parecido a cuando seteamos los repos en ubuntu, y luego hacemos update.


Ahora instalamos el Helm chart

`helm install wp bitnami/wordpress --set service.type=NodePort`{{execute}}

Ahora vamos a setear el NodePort al 30080




`kubectl patch service wp-wordpress --type='json' --patch='[{"op": "replace", "path": "/spec/ports/0/nodePort", "value":30080}]'`{{execute}}

Y nos faltaria saber cual es la password de user, para ingresar. 
el usuario es user, con lo siguiente sacamos la password.

`echo Password: $(kubectl get secret --namespace default wp-wordpress -o jsonpath="{.data.wordpress-password}" | base64 -d)`{{execute}}

y para visitar nuestro wordpress

[DASHBOARD UI]({{TRAFFIC_HOST1_30080}})

Con esto terminamos nuestro ejercicio
