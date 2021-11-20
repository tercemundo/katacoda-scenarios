El deployment creo automaticamente una etiqueta para nuestro. Con  `describe deployment`:

`kubectl describe deployment`{{execute}}

Usaremos esta label, para listar los pods, y fitrarlos . `kubectl get pods` seguido de la correspondiente etiqueta.

`kubectl get pods -l app=kubernetes-bootcamp`{{execute}}

Podemos hacer lo mismo con los servicios:

`kubectl get services -l app=kubernetes-bootcamp`{{execute}}

Obtenemos el nombre del POD y lo guardamos en una variable:

`export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME`{{execute}}

Para aplicar una nueva etiqueta nosotros usamos el comando label seguido el tipo de recurso, u objecto.

`kubectl label pods $POD_NAME version=v1`{{execute}}

Ahora hacemos un describe para ver como tomo los cambios

`kubectl describe pods $POD_NAME`{{execute}}

Ahora usamos la etiqueta como filtro.

`kubectl get pods -l version=v1`{{execute}}

y Podemos ver nuestro POD.
