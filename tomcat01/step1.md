En este escenario aprenderemos a instalar apache tomcat.
Primero instalamos las jdk/jrk


```
apt -y  install default-jdk && apt -y install default-jre
```{{execute}}

Testing java version
```

java -version

```{{execute}}


Ahora instalamos apache tomcat

```

wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.76/bin/apache-tomcat-9.0.76.tar.gz

```{{execute}}



Lo movemos al directorio opt



```

mv apache-tomcat-9.0.76.tar.gz /opt/

```{{execute}}

Descomprimimos el apache tomcat


```

cd /opt/
tar xpzf apache-tomcat-9.0.76.tar.gz
cd apache-tomcat-9.0.76


```{{execute}}


Ahora vamos a iniciar el servicio , en el puerto por defecto.


```
cd bin
./startup.sh
```{{execute}}


Y finalmente , vamos a desplegar un war llamado sample.
```
cd /root
wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war
mv sample.war /opt/apache-tomcat-9.0.75/webapps/
sleep 10
curl http://localhost:8080/sample/
```{{execute}}

