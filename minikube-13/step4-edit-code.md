aca nos ponemos a ver el codigo fuente.

`cat index.php`{{execute}}

y hacer varios pasos mas...

Generamos la base de datos

`kubectl create -f mariadb.yaml`{{execute}}

Luego que la base de datos esta creada, generamos un tunel para popularla. Debemos pulsar un enter por que queda en segundo plano un comando.


`bash comandos.sh`{{execute}}


Una vez que tenemos el tunel creado, lo populamos


`mysql -u root -pmaster -h 127.0.0.1 < data/init.sql`{{execute}}

Si por algun motivo la db no se puede popular estos son los comandos que hay que correr. Notese que queda en segundo plano asi que hay que pulsar un enter

`POD=$(kubectl get pod | grep mariadb | awk '{print $1}') && nohup kubectl port-forward $POD 3306:3306 &`{{execute}}


ya tendriamos la base de datos creada, con nuestra tabla, y ahora esperando por la aplicacion, que la generaremos desde un Dockerfile

