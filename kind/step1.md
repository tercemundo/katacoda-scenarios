Creando el cluster 

## Instalando kind (latest release)

Primero vamos a usar un script para instalar kind usando la ultima version

`./install_kind.sh`{{execute}}

## Creando una config de  kind 

Usaremos la siguiente configuracion de kind 

`bat kind-cluster.yaml`{{execute}}

## Creando un cluster

Este cluster sera de 1 control plane (Master) Node y 3 worker Nodes

`kind create cluster --config kind-cluster.yaml`{{execute}} *(this should take 4~5 minutes)*

<details>
  <summary>Sample output: </summary>
  
```
master $ kind create cluster --config kind-cluster.yaml
Creating cluster "kind" ...
 ✓ Ensuring node image (kindest/node:v1.19.1) 🖼
 ✓ Preparing nodes 📦 📦 📦 📦
 ✓ Writing configuration 📜
 ✓ Starting control-plane 🕹️
 ✓ Installing CNI 🔌
 ✓ Installing StorageClass 💾
 ✓ Joining worker nodes 🚜
Set kubectl context to "kind-kind"
You can now use your cluster with:

kubectl cluster-info --context kind-kind

Have a question, bug, or feature request? Let us know! https://kind.sigs.k8s.io/#community 🙂
```       
</details>

## Espere mientras preparamos su cluster 

Debemos esperar hasta que todos los nodos del cluster esten  ***Ready***
Para ello ejecutamos el siguiente script 

`./isClusterReady.sh `{{execute}}

## Cluster

Ahora tenemos un cluster corriendo con la siguiente configuracion 

1. 4 contenedores docker corriendo cada uno un nodo de kubernetes en la ultima version  
2. Uno es el  master/control plane
    
3. Los otros 3 worker nodes 


![](./assets/KIND-1.png)
