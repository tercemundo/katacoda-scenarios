in this tutorial, what we will do is to deploy an argocd server, and also a client.

We will do it step by step.

We will create a namespace called argocd, and what we will do now is to deploy argocd

```
kubectl create namespace argocd
kubectl apply -n argocd -f /root/install.yaml
```
{{execute}}



`snap install kubectx --classic`{{execute}}

Empezando


```
cd vault01
helm repo add hashicorp https://helm.releases.hashicorp.com
helm install vault hashicorp/vault --namespace vault --create-namespace -f hashicorp-vault/values.yaml
```{{execute}}


Then we need to decode the argocd admin key. To do this we run this command.

```
argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```{{execute}}



Then we go to the argocd server's page

[VAULT UI]({{TRAFFIC_HOST1_30164}}

NOTE: THis Lab , Has been created  by Marcelo Guazzardo.
