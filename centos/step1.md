We will create an image of centos from scratch, for that we make a git clone to the following repo.
we have to wait for the sandbox to finish starting up

`git clone https://github.com/luxknight007/centos7`{{execute}}

then , cd to repo-dir

`cd centos7`{{execute}}

and finally, we should generate the image

`docker build -t centos-scratch .`{{execute}}

wait for a while.

finally...

`docker images`{{execute}}

and, we can see the docker image created. We will able to launch the container


`docker run -d --name centos centos-scratch`{{execute}}

and Finally, we can log in


`docker exec -itd centos bash`{{execute}}

Congrats!
Follow me in linkedin for more tutorials! Marcelo Guazzardo
