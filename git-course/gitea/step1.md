Bajamos una imagen pre configurada y la mandamos al port 3000 

```
docker run --name gitea  -p 2222:22 -p 3000:3000 -e GITEA__security__INSTALL_LOCK=true -d mguazzardo/custom-gitea:2
```{{execute}}


Para ingresar al gitea, user root pass admin1234


[Gitea]({{TRAFFIC_HOST1_3000}})

Entramos para ver como anda todo.

para poder clonar el repo, corremos lo siguiente

```
git clone ssh://git@localhost:2222/root/prueba01.git
```{{execute}}


Creado por Marcelo Guazzardo
