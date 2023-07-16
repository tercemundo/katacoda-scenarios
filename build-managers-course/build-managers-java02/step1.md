We need to install openjdk 


```
apt -y  install default-jdk && apt -y install default-jre
```{{execute}}

Testing java version
```

java -version

```{{execute}}


Install maven tool
```
apt -y install maven
```{{execute}}


 we 'll clone the sample repo

```
cd /root
git clone https://github.com/jenkins-docs/simple-java-maven-app
cd simple-java-maven-app/
```{{execute}}

In this directory, we need to run this

```
sed 's/3.8.6/3.6.3/' pom.xml  > pom.xml.bkp
mv pom.xml.bkp pom.xml
mvn -B -DskipTests clean package
```{{execute}}

and finally, run the artifact

```
cd target
java -jar  my-app-1.0-SNAPSHOT.jar
```{{execute}}


