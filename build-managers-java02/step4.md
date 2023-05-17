
La idea aca es agregarlos
```
git add . 
```{{execute}}

Luego hacemos un commit 

```
git commit -m 'subiendo'
```{{execute}}

vemos como estan alli los archivos


WARNING:!

vemos lo siguiente!.

y es logico!

```
*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.

fatal: unable to auto-detect email address (got 'root@ubuntu.(none)')

```


Asi que haremos lo que nos pide

```
  git config --global user.email "mguazzardo@gmail.com"
  git config --global user.name "Marcelo Guazzardo"
```{{execute}}

y luego de esto, vamos a correr de nuevo el git status!


`git status`{{execute}}


