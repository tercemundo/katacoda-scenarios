En esta oportunidad, instalaremos una aplicacion multi-tier

Si queremos visualizarla por el dashboard, sacamos el token con el siguiente comando

`token.sh`{{execute}}

Primero me creo un namespace para la practica

`kubectl create ns practica`{{execute}}

Luego vamos a ese namespace

`kubens practica`{{execute}}


Una vez alli, desplegamos la aplicacion del fronted

`git clone https://github.com/mguazzardo/demislamer && cd demislamer && bash comandos-k8s.sh`{{execute}}

Una vez que tenemos esto, vamos a desplegar nuestro mariadb


`kubectl create -f mariadb.yaml`{{execute}}

Ahora esperamos 15 segundos aproximadamente, para que todo este andando

`sleep 15 && kubectl get pod`{{execute}}


### Tarea: Popular la Base de datos

Popular la base de datos no sera del todo sencillo. Para eso debemos obtener el nombre del pod, usar el comando forward, y luego popularla....



```
bash mariadb-secretes/forward-pod-mariadb.sh && sleep 5 && echo "creado el tunel"
```{{execute}}

Ahora lo que nos resta es agregar los datos y ver como quedaron los servicios

```
mysql -uroot -pmaster -h 127.0.0.1 < db.sql && kubectl get svc"
```{{execute}}

Y luego sacamos el port para visitar la pagina
