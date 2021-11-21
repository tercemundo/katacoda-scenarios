Viendo las variables de ambiente en un deployment.

tenemos el siguiente deployment
<pre class=file>
apiVersion: apps/v1
kind: Deployment
metadata:
  annotations:
    app: demis
  name: demis
spec:
  replicas: 1
  selector:
    matchLabels:
      app: demis
  template:
    metadata:
      labels:
        app: demis
    spec:
      containers:
      - image: mguazzardo/miphp:latest
        name: miphp
        env:
          - name: SALUDO_DEPLOY
            value: "Saludando desde el deploy"
</pre>


Lo copiamos, a un archivo llamado deploy.yaml, y lo corremos.



`[ -e deploy.yaml ] && kubectl create -f deploy.yaml `{{execute}}

Luego corremos averiguamos el POD, y entramos.

`PO=$(kubectl get po | grep -i running  | awk '{print $1}')`{{execute}}

y Luego entramos al POD


`kubectl exec -it $PO bash`{{execute}}

Una vez dentro del POD

corremos

`env`{{execute}}

Viendo la salida de la variable, lo que hacemos ahora es irnos

`exit`{{execute}}

Ahora obtenemos el nombre del deploy

`kubectl get deploy`{{execute}}


y luego

`kubectl edit deploy demis`{{execute}}

Modificamos la variable de ambiente, salimos y vemos como se regenera el pod, y su correspondiente variable de ambiente.

