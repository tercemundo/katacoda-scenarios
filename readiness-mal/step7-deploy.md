El nombre de nuestra aplicacion  sera `flaskapi`, Por lo tanto seteamos .

`export APP_NAME=flaskapi`{{execute}}

Deployamos la aplicacion en nuestro cluster de kubernetes con la imagen que hemos generado en el paso anterior. El manimiesto  YAML tiene una variable  $REGISTRY y $APP_NAME para ser reemplazada con los valores que hemos seteado anteriormente. Usamos  el comando `envsubst` para reemplazar las variables de ambiente.

`cd /root && envsubst < hello.yaml > hello-resolved.yaml`{{execute}}

Revisamos los manifiestos para poder lanzar la  `flaskapi` app.

`cat hello-resolved.yaml`{{execute}}

Con todo, y apuntando hacia el registry privado, continuamos.

`kubectl apply -f hello-resolved.yaml`{{execute}}

En unos momentos, la aplicacion estara disponible.

`kubectl get deployments,pods,services`{{execute}}
