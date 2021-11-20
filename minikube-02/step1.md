Como minikube, kubectl esta instalado en la terminal. 
La forma mas efectiva de usarlo es : kubectl action resource.
Esto realizara una accion determina (como  create, describe) on el  recurso especificado (como un nodo, contenedor). Usted puede usar  `--help` after the comandos para obtener informacion adicional acerca de los posibles parametros (`kubectl get nodes --help`).

Chequeos varios a realizar

`kubectl version`{{execute}}

Veremos los nodos

`kubectl get nodes`{{execute}}

Ya sabemos que es uno solo
