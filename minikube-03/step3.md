Normalmente la aplicacion que corre dentro del pod reenvia los logs hacia `STDOUT`. Nosotros podemos ver esos logs con el comando `kubectl logs`:

`kubectl logs $POD_NAME`{{execute T1}}

*Nota:No necesitamos especificar el nombre del POD, por que existe un solo pod corriendo*
