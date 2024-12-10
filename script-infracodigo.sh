#!/bin/bash

echo 'Atualizando o sistema...'

apt-get update
apt-get upgrade -y

echo 'Instando o Apache..'

apt-get install apache2 -y

echo 'Instalando o UnZip...'

apt-get install unzip -y

echo 'Baixando e descompactando os arquivos...'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/

echo 'Script Finalizado...'
sleep 5