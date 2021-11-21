El nombre de nuestra aplicacion  sera `flaskapi`, Por lo tanto seteamos .

`export APP_NAME=flaskapi`{{execute}}

Deployamos la aplicacion en nuestro cluster de kubernetes con la imagen que hemos generado en el paso anterior. El manimiesto  YAML tiene una variable  $REGISTRY y $APP_NAME para ser reemplazada con los valores que hemos seteado anteriormente. Usamos  el comando `envsubst` para reemplazar las variables de ambiente.

`cd ~ && envsubst < hello.yaml > hello-resolved.yaml`{{execute}}

Inspect the Kubernetes resource declaration for starting the `hello` application.

`cat hello-resolved.yaml`{{execute}}

With the corrected location to the private registry, deploy the application.

`kubectl apply -f hello-resolved.yaml`{{execute}}

In a moment the application will be available.

`kubectl get deployments,pods,services`{{execute}}
