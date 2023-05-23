Clonamos el repositorio de check dependendency 


```
git clone https://github.com/tercemundo/devsecop01
mv devsecop01/env.tgz .
tar xpzf env.tgz
```{{execute}}

```
sh get-webgoat.sh

```{{execute}}


Correr el dependencys
```
sh run-depcheck.sh
```{{execute}}

Instalamos apache2

```
apt -y install apache2
sh copy.sh
```{{execute}}



