#!/bin/bash

echo "Atualização de Servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando pacotes necessários..."
apt-get intall apache2 -y
apt-get install unzip -y

echo "Baixando arquivos necessários..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/wwww/html