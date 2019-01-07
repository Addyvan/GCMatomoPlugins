#!/bin/bash -e

echo "Installing required php stuff..."
sudo apt-get install php7.0 php7.0-curl php7.0-gd php7.0-cli mysql-server php7.0-mysql php-xml php7.0-mbstring

echo "Pulling "
git clone https://github.com/matomo-org/matomo matomo
cd matomo
git submodule update --init
composer install

echo "enabling development mode"
./console development:enable

echo "Setting up GCTools custom plugins"
cd ..
cp -R plugins/GCToolsCore matomo/plugins/
cp -R plugins/GCToolsTheme matomo/plugins/
cp -R plugins/MatomoConcierge matomo/plugins/
cd matomo
./console plugin:activate GCToolsCore
./console plugin:activate GCToolsTheme
./console plugin:activate MatomoConcierge

./console config:set --section="General" --key="trusted_hosts[]" --value="0.0.0.0:8000"