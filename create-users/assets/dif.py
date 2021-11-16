import os
listas = []
users = "mguazzardo,gjesus,dmaradona"
salida=os.popen("cat /etc/passwd")
for lineas in salida.readlines():
    existentes=lineas.split(":")
    miembros=existentes[0].split(",")
    listas.append(miembros)

print(listas)
