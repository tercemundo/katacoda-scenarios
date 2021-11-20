Para ver los deployments corremos `get deployments`:
`kubectl get deployments`{{execute}}

The output should be similar to:
```
NAME                  READY   UP-TO-DATE   AVAILABLE   AGE
kubernetes-bootcamp   1/1     1            1           11m
```

Debemos  tener  1 Pod.Sino, corralo de nuevo, donde veremos:
- *NAME* lista los nombres de los deployments en el cluster.
- *READY* Muestra las  CURRENT/DESIRED replicas
- *UP-TO-DATE* Muestra las replicas up-to-date.
- *AVAILABLE* Muestra cuantas replicas estan disponibles para sus users.
- *AGE* Muestra hace cuanto esta corriendo el deploy.

Para ver el ReplicaSet creado por el  Deployment, corremos
`kubectl get rs`{{execute}}


Ahora, escalamos  el  Deployment hacia las  replicas. Usaremos  `kubectl scale` command, Seguido del nombre del deploment y la cantidad de replicas.

`kubectl scale deployments/kubernetes-bootcamp --replicas=4`{{execute}}

Para ver los deployments, de nuevo corremos`get deployments`:

`kubectl get deployments`{{execute}}

El cambio fue aplicado y ahora vemos 4 instancia de la app .
Revisamos.

`kubectl get pods -o wide`{{execute}}

Vemos que tenemos 4 pods corriendo, con  diferentes IP addresses. Estos cambios han sido registrados en los eventos, para verlos corremos.

`kubectl describe deployments/kubernetes-bootcamp`{{execute}}

