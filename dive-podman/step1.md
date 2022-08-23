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


and finally, we should generate the image

`podman build -t stage0 .`{{execute}}

wait for a while.

finally...

`podman images`{{execute}}

and, we can see the podman image created. We will able to launch the container


Next, we need to install dive

`wget https://github.com/wagoodman/dive/releases/download/v0.9.2/dive_0.9.2_linux_amd64.deb && dpkg -i dive_0.9.2_linux_amd64.deb`{{execute}}


and Finally, we run the dive tool


`dive stage0:latest`{{execute}}

Congrats!
Follow me in linkedin for more tutorials! Marcelo Guazzardo
