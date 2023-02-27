Pero esta no es la version que nosotros queremos.
Asi que lo primero que vamos a hacer es desinstalarla


```
apt --purge remove -y nodejs
```{{execute}}


Y vamos a instalarlo como nosotros queremos.
en este caso vamos a instalar la version 16.17



```
#install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn
#install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source /root/.bashrc
source /root/.profile
#install node
nvm install 16.17

```{{execute}}



