## Nos logueamos al dashboard 


``oc new-project final``{{execute}}

Con esto creamos el nuevo proyecto final

``oc process "mysql-ephemeral" -n openshift -p 'MYSQL_ROOT_PASSWORD=master' | oc create -f -``{{execute}}


Si queremos ver el progreso, lo que hacemos es lo siguiente

``oc get po -w``{{execute}}


Esperamos, y cuando todo este ok, hacemos lo siguiente

``PO=$(oc get po | grep -i running | grep mysql| awk '{print $1}')``{{execute}}
Con esto conseguimos el nombre de nuestro pod, por que ahora vamos a hacer rsh

``oc rsh $PO``{{execute}}

Dentro del POD, nos bajamos el dataset

``curl -O https://raw.githubusercontent.com/tercemundo/php/main/db.sql``{{execute}}

Y luego lo cargamos

``mysql -u root -pmaster -h 127.0.0.1 < db.sql``{{execute}}

Salimos del POD

``exit``{{execute}}


Lo que sigue ahora  , es desplegar una app con s2i

``oc new-app https://github.com/tercemundo/php``{{execute}}

Esperamos, y luego injectamos la secret

``oc set env deployment/php --from="secret/mysql"``{{execute}}

Y luego exponemos el servicio

``oc expose svc php``{{execute}}

y Luego vemos la ruta 

Link:

http://php-final.[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com





