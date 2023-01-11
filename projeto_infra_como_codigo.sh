
#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios ADM"

useradd carlos -c "Carlos Adm" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria Adm" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João Adm" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

echo "Criando usuarios VEN"

useradd debora -c "Débora Ven" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Ven" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Ven" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

echo "Criando usuarios SEC"

useradd josefina -c "Josefina Sec" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Sec" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Sec" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC


echo "Concedendo permissão a todos no publico"

chmod 777 /publico

echo "Definindo a permissão para user do ADM"

chown root:GRP_ADM /adm 
chmod 770 /adm

echo "Definindo a permissão para user do VEN"

chown root:GRP_VEN /ven
chmod 770 /ven 

echo "Definindo a permissão para user do SEC" 

chown root:GRP_SEC /sec
chmod 770 /sec

echo "Execução realizada com sucesso!!!"
