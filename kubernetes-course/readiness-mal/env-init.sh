#!/bin/sh


apt update > /dev/null 2>&1 
apt install tree --yes -qq

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# Helm setup
HELM_VERSION=v3.1.2
curl -fsSL https://get.helm.sh/helm-$HELM_VERSION-linux-amd64.tar.gz | tar -zxvf - -C /usr/local/bin/ linux-amd64/helm --strip=1
#helm repo add stable https://kubernetes-charts.storage.googleapis.com/

helm repo add stable https://charts.helm.sh/stable


wget https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens && chmod +x kubens && mv kubens /usr/local/bin

# Setup dashboard on port 30000
helm install dash stable/kubernetes-dashboard \
--namespace kube-system \
--set=service.type=NodePort \
--set=enableInsecureLogin=true \
--set=service.nodePort=30000 \
--set=service.externalPort=80

source <(kubectl completion bash)
source <(helm completion bash)

# TODO - would be nice to add instructional step to "alias docker=podman"
# Install buildah
# sudo apt update > /dev/null 2>&1
# sudo apt install -qq -y software-properties-common
# sudo add-apt-repository -y ppa:projectatomic/ppa
# sudo apt update > /dev/null 2>&1
# sudo apt -qq -y install buildah

# Install podman
# systemctl stop docker
# apt update -y -qq
# apt upgrade -y -qq
# apt install software-properties-common uidmap containernetworking-plugins -y -qq
# add-apt-repository -y ppa:projectatomic/ppa
#apt install podman -y -qq

{ clear && echo 'Kubernetes with Helm is ready.'; } 2> /dev/null
