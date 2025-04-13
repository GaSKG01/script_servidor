#! /bin/bash

echo "Atualizando Servidor..,"

apt-get update && apt-get upgrade -y

apt install apache2 -y
echo "instalando apache2..."
apt install unzip -y
echo "Instalando unzip..."

apt install git -y
echo "instalando git..."

git clone  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp && cp  /tmp/main.zip /var/www/html -r

echo "fim..."

