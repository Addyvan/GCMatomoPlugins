#!/bin/bash -e

echo "Installing required php stuff..."
sudo apt-get install php7.0 php7.0-curl php7.0-gd php7.0-cli mysql-server php7.0-mysql php-xml php7.0-mbstring

git clone https://github.com/matomo-org/matomo matomo
cd matomo
git submodule update --init
composer install
