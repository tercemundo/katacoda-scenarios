yum -y install passwd
for i in $(cat /root/usuarios.txt); do useradd -m $i;done
