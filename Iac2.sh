#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "Instalando programas"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip mains.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Fim"
