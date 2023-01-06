Creamos la imagen, haciendo un docker build. .

`docker build -t $REGISTRY/flaskapi .`{{execute}}

Nos fijamos que la imagen haya sido generada.

`docker images "*/flaskapi"`{{execute}}

Pusheamos esta imagen hacia el registry.

`docker push $REGISTRY/flaskapi`{{execute}}

Inspeccionamos el contenido del registry y vemos que la imagen este generada.

`curl $REGISTRY/v2/_catalog`{{execute}}
