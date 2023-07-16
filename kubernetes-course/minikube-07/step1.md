Viendo las variables de ambiente en un deployment.

tenemos el siguiente deployment

<pre class=file>
apiVersion: v1
kind: Pod
metadata:
  name: envar-demo
  labels:
    purpose: demonstrate-envars
spec:
  containers:
  - name: envar-demo-container
    image: gcr.io/google-samples/node-hello:1.0
    env:
    - name: DEMO_GREETING
      value: "Hello from the environment"
    - name: DEMO_FAREWELL
      value: "Such a sweet sorrow"
</pre>


Lo copiamos, a un archivo llamado deploy.yaml, y lo corremos.



`[ -e deploy.yaml ] && kubectl create -f deploy.yaml `{{execute}}

Luego corremos

`kubectl exec envar-demo -- printenv`{{execute}}

y vemos una salida similar a esta

```
NODE_VERSION=4.4.2
EXAMPLE_SERVICE_PORT_8080_TCP_ADDR=10.3.245.237
HOSTNAME=envar-demo
...
DEMO_GREETING=Hello from the environment
DEMO_FAREWELL=Such a sweet sorrow

```
