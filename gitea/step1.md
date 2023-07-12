Bajamos una imagen pre configurada y la mandamos al port 3000 

```
docker run --name gitea -p 8080:3000 -e GITEA__security__INSTALL_LOCK=true -d mguazzardo/custom-gitea
```{{execute}}


Para ingresar al gitea, user root pass admin1234


[Jenkins]({{TRAFFIC_HOST1_3000}})


Creado por Marcelo Guazzardo
