crearemos una instalacion de gitea, con una custom image

```
sudo adduser --system --shell /bin/bash --gecos 'Git Version Control' --group --disabled-password --home /home/git git --uid 1003 
```{{execute}}


Creamos un directorio (Que sera usado para los volumenes de docker.

```
mkdir ~/gitea
cd ~/gitea
```{{execute}}


Corremos el docker compose, que tiene algunas modificaciones.


```
version: "3"

networks:
  gitea:
    external: false

services:
  server:
    image: docker.io/mguazzardo/gitea
    container_name: gitea
    environment:
      - USER_UID=UID_from_step_1
      - USER_GID=GID_from_step_1
    restart: always
    networks:
      - gitea
    volumes:
      - ./gitea:/data
      - /home/git/.ssh/:/data/git/.ssh
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    ports:
      - "3000:3000"
      - ":2222:22"
```
movemos el docker-compose file y lo corremos

```
mv /root/docker-compose.yaml /root/gitea
cd /root/gitea
docker-compose up -d

```{{execute}}
