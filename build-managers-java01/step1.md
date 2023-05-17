We need to install openjdk 


```
apt -y  install default-jdk && apt -y install default-jre
```{{execute}}

Testing java version
```

java -version

```{{execute}}


Compile the source code

```
javac /root/HelloWorld.java
```{{execute}}


and finally, we 'll run the class (Artifact). You need to move to /root directory

```
cd /root
java HelloWorld
```{{execute}}

we should create the doc for this project

```
javadoc -d doc HelloWorld.java
```{{execute}}

all rigth!
