in this tutorial, what we will do is to deploy an argocd server, and also a client.

We will do it step by step.

We will create a namespace called argocd, and what we will do now is to deploy argocd

```
kubectl create namespace argocd
kubectl apply -n argocd -f /root/install.yaml
```{{execute}}






Then we need to decode the argocd admin key. To do this we run this command.

```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```{{execute}}



Then we go to the argocd server's page

[VAULT UI]({{TRAFFIC_HOST1_30164}}

NOTE: THis Lab , Has been created  by Marcelo Guazzardo.
