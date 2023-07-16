Verificamos que si tenemos pods corriendo.

`kubectl get pods`{{execute}}

Si no tenemos pods corriendo, significa que el escenario aun esta cargando. Por favor, espere unos segundos, y vuelva a repetir el comando. 

Ahora inspeccionaremos dentro de los pods, y con que imagenes fueron creados, con el comando `describe pods` :

`kubectl describe pods`{{execute}}

Podemos ver los siguientes detalles : IP address, Los pruertos usados, la lista de eventos relacionados a la vida del Pod.


