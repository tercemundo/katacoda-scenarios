# Interacting with a file from different user accounts

En este paso, crearemos un usuario, para nuestro sistema

`useradd mguazzardo`{{execute T1}}

Y luego de esto, le asignaremos su correspondiente password, el cual sera master

`passwd mguazzardo`{{execute T1}}


<pre class=file>
$ useradd mguazzardo
$ passwd mguazzardo
Changing password for user mguazzardo.
New password: 
BAD PASSWORD: The password is shorter than 8 characters
Retype new password: 
passwd: all authentication tokens updated successfully.
</pre>

