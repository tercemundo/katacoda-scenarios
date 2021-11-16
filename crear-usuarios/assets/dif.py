import os
listas = []
users = []
salida=os.popen("cat /etc/passwd")
for lineas in salida.readlines():
    existentes=lineas.split(":")
    miembros=existentes[0]
    listas.append(miembros)

#print(listas)

with open('usuarios.txt') as f:
    lines = f.read().splitlines()
#print(lines)

s = set(listas)
temp3 = [x for x in lines if x not in s]

if len(temp3) > 0:
    print("hay un user de mas")
    os.popen("echo mal > salida.txt")
else:
    print("Todo bien")
    os.popen("echo ok > salida.txt")
