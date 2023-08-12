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

una vez aca, vamos a agregar un archivo, prueba01.txt

```
cd prueba01
echo "hola" > prueba01.txt
cat prueba01.txt
```{{execute}}

Ahora, vamos a setear nuestro git, para eso corremos los siguientes comandos

```
cd /root/prueba01
git config --global user.email "tuemail@gmail.com"
git config --global user.name "Marcelo Guazzardo"
git add .
git commit -m 'first upload'
git push
```{{execute}}


Y vemos en la consola web que esta el archivo subido.


Ahora crearemos una nueva branch, y lo que haremos es un pull request

```
git checkout -b release/v0.1
git branch
echo "desde la otra branch" >> prueba01.txt 
git add prueba01.txt 
git commit -m 'new commit'
git push --set-upstream origin release/v0.1
```{{execute}}


Y esto lanzara unos PR's.



Creado por Marcelo Guazzardo
