Ahora lo complicamos, y instalamos dos versiones de python

```
apt -y install python
```{{execute}}


Corremos esta app.


```
import sys

def print_message():
   if sys.version_info[0] < 3:
     print("Hello World v2")
   else:
     print("Hello World v3")

if __name__ == '__main__':
    print_message()
```{{execute}}


Para ejecutarlo lo que hacemos es correr

```
python main.py

```{{execute}}


¿Que es lo que esta pasando?
