vemos los deployments `get deployments`:
`kubectl get deployments`{{execute}}

vemos los pods `get pods`:

`kubectl get pods`{{execute}}

Para ver la imagen actual de la app, que genero nuestro pod, corremos  `describe pods` y buscamos el campo `Image`:

`kubectl describe pods`{{execute}}

Para actualizar a la version 2, use the `set image`:

`kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=jocatalin/kubernetes-bootcamp:v2`{{execute}}

Este comando informa al  Deployment que use una imagen diferene para su aplicacion e inicialice un rolling update. for your app and initiated a rolling update. Chequeamos el estado de los pods, y vemos que uno esta terminando `get pods`:

`kubectl get pods`{{execute}}

