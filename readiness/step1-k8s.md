<img align="right" src="./assets/k8s-logo.png" width="100">

Para este escenario, hemos preparado un cluster de minikube para ud..

`kubectl version --short && \
kubectl get componentstatus && \
kubectl get nodes && \
kubectl cluster-info`{{execute}}

el manejador HELM [Helm](https://helm.sh/) Esta listo.

`snap install helm --classic`{{execute}}

`helm version --short`{{execute}}

<img align="right" src="./assets/k8s-dash.png" width="200">

## Kubernetes Dashboard ##

Podras manejar tu cluster con  `kubectl` o  usando el dashboard. Cuando nos pregunte el token, solo corte y pegue.

`token.sh`{{execute}}
