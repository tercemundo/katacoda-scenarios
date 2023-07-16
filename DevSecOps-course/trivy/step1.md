Nada mas sencillo que correr trivy, para scaner unas imagenes

Para ejecutar un scaneo de una imagen de python

```
docker run aquasec/trivy image python:3.4-alpine
```{{execute}}

Ahora haremos unos scaneos hacia imagenes propias.
Con la maxima Severidad

```
docker run aquasec/trivy image --severity=high docker.io/mguazzardo/flaskapi
```{{execute}}

Ahora con la severidad critica

```
docker run aquasec/trivy image --severity=critical docker.io/mguazzardo/flaskapi
```{{execute}}

Y ahora lo mismo pero con unas imagenes de PHP. HIGH

```
docker run aquasec/trivy image --severity=high docker.io/mguazzardo/miphp
```{{execute}}

Ahora critica

```
docker run aquasec/trivy image --severity=critical docker.io/mguazzardo/miphp
```{{execute}}




