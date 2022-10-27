Vemos si hay pods corriendo.


Instalamos popeye

`snap install popeye`{{execute}}

exportamos la API de k8s.

` kubectl proxy --port=8080 & `{{execute}}

Finalmente ejecutamos popeye

`popeye`{{execute}}





