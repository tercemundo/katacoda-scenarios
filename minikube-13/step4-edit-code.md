aca nos ponemos a ver el codigo fuente.

`cat index.php`{{execute}}

y hacer varios pasos mas...

Generamos la base de datos

`kubectl create -f mariadb.yaml`{{execute}}

Luego que la base de datos esta creada, generamos un tunel para popularla


`bash comandos.sh`{{execute}}

Una vez que tenemos el tunel creado, lo populamos

`mysql -u root -pmaster -h 127.0.0.1 < data/init.sql`{{execute}}

ya tendriamos la base de datos creada, con nuestra tabla, y ahora esperando por la aplicacion, que la generaremos desde un Dockerfile

