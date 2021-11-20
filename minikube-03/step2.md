Nuevamente ejecutamos el proxy para hacer consultas directas a la api

`echo -e "\n\n\n\e[92mStarting Proxy. After starting it will not output a response. Please click the first Terminal Tab\n"; kubectl proxy`{{execute T2}}


`export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME`{{execute T1}}

Ahora tiramos un curl

`curl http://localhost:8001/api/v1/namespaces/default/pods/$POD_NAME/proxy/`{{execute T1}}

