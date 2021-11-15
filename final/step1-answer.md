
useradd -m -c "Pablo Perez" -s /bin/bash -u 20001 pperez

useradd -m -c "Diego Maradona" -s /bin/bash -u 20002 dmaradona

useradd -m -c "Lionel Messi" -s /bin/bash -u 20003 lmessi

useradd -m -c "Carlos Menem" -s /bin/bash -u 20004 cmenem

useradd -m -c "Fulano del tal"-s /bin/bash -u 20005 ftal

echo "pperez:master" | chpasswd
echo "dmaradona:master" | chpasswd
echo "lmessi:master" | chpasswd
echo "cmenem:master" | chpasswd
echo "ftal:master" | chpasswd

