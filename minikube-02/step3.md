Los pods son la minima unidad dentro del cluster, y corren en una red aislada.
Por defecto ellos estan visibles solo dentro del cluster, pero no al mundo externo.
Cuando usamos `kubectl`, Intereactuamos con la API de kubernetes.


`kubectl` puede crear un proxy el cual forwardeara las peticiones de nuestra aplicacion al mundo externo. lo haremos.


```
echo -e "\n\n\n\e[92mStarting Proxy. After starting it will not output a response. Please click the first Terminal Tab\n"; 
kubectl proxy
```{{execute T2}}

ahora tenemos una conexion entre la terminal y el cluster de kubernetes. El proxy habilita el accceso directo a la api.

Veremos todos los endpoints que nos provee la API con el comando  `curl`:

`curl http://localhost:8001/version`{{execute T1}}

*Note: Check the top of the terminal. The proxy was run in a new tab (Terminal 2), and the recent commands were executed the original tab (Terminal 1). The proxy still runs in the second tab, and this allowed our curl command to work using `localhost:8001`.*

**If Port 8001 is not accessible, ensure that the `kubectl proxy` started above is running.**

The API server will automatically create an endpoint for each pod, based on the pod name, that is also accessible through the proxy.

First we need to get the Pod name, and we'll store in the environment variable POD_NAME:

`export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME`{{execute T1}}

You can access the Pod through the API by running:

`curl http://localhost:8001/api/v1/namespaces/default/pods/$POD_NAME/`{{execute T1}}

In order for the new deployment to be accessible without using the Proxy, a Service is required which will be explained in the next modules.
