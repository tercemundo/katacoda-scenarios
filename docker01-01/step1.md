vemos como ya nos instalo por nosotros killercoda docker.

```
apt -y update
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt -y update
apt-cache policy docker-ce
apt  -y install docker-ce
docker version

```
