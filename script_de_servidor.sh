#! /bin/bash

echo "Atualizando Servidor..."

apt-get update && apt-get upgrade -y

echo "instalando apache2..."

apt install apache2 -y
echo "Instalando unzip..."
apt install unzip -y
echo "Instalando git"
apt install git -y

cd /tmp

wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

unzip main.zip

cd linux-site-dio-main

cp -R* /var/www/html/

git init
git add .
git commit-m "Apache v1"
git branc -M main



echo "fim..."

