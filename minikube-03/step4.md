Podemos ejecutar comandos en el POD , incluso sin entrar
`kubectl exec $POD_NAME -- env`{{execute T1}}

Ahora iniciaremos una terminal bash dentro del pod

`kubectl exec -ti $POD_NAME -- bash`{{execute T1}}

Dentro del pod, corre una app que sirve NodeJS, entonces hacemos un cat

`cat server.js`{{execute T1}}

Ud podra ver esta aplicacion corriendo, haciendo lo siguiente.

`curl localhost:8080`{{execute T1}}


Para salir, tipeamos 

 `exit`{{execute T1}}.
