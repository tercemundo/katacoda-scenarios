we will download the kubeudit file

```
wget https://github.com/Shopify/kubeaudit/releases/download/v0.22.0/kubeaudit_0.22.0_linux_amd64.tar.gz
tar xpzf kubeaudit_0.22.0_linux_amd64.tar.gz
chmod +x kubeaudit
mv kubeudit /usr/local/bin

```{{execute}}

Then we try to run



```
kubeaudit all -f nginx.yaml

```{{execute}}

and as we can see, it gives us a lot of errors to fix.

we will try to fix this, but we already know that the deploy will be unusable.


```
kubeaudit autofix -f nginx.yaml
```{{execute}}


