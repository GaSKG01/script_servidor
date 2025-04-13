#! /bin/bash

echo "Atualizando Servidor..."

apt-get update && apt-get upgrade -y

apt install apache2 -y
echo "instalando apache2..."
apt install unzip -y
echo "Instalando unzip..."
cd /tmp

wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

unzip main.zip

cd linux-site-dio

cp -R* /var/www/html/

echo "fim..."

