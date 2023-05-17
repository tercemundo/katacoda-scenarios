In certain cases, we need to install a specific version of nodeJS.
For that, we must run the following commands.
```
#install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
#install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

```{{execute}}


Then we must update our profile

```
source /root/.bashrc
source /root/.profile
```{{execute}}


and finally, we 'll be enabled to install node

```
nvm install 16.17
```{{execute}}

we should test the nodejs version

```
node -v
```{{execute}}

all rigth!
