We will create an image of hello-world from ubuntu.
we have to wait for the sandbox to finish starting up



Hello world program in c
```
#include <stdio.h>

int main(void) {
    printf("Hello from the container!\n");
    return (0);
}

```
Dockerfile

```
FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y build-essential
WORKDIR /app
COPY app/hello.c /app/
RUN gcc -o hello hello.c
CMD [ "/app/hello" ]
```

then , cd to repo-dir

`cd centos7`{{execute}}

and finally, we should generate the image

`docker build -t centos-scratch .`{{execute}}

wait for a while.

finally...

`docker images`{{execute}}

and, we can see the docker image created. We will able to launch the container


`docker run -itd --name centos centos-scratch`{{execute}}

Remember. When you run an image, always run it with -- itd.Remember. When you run an image, always run it with -- itd.

and Finally, we can log in


`docker exec -it centos bash`{{execute}}

Congrats!
Follow me in linkedin for more tutorials! Marcelo Guazzardo
