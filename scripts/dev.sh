#!/bin/bash -e

echo "Re-copying plugin folders"

cp -R plugins/GCToolsCore matomo/plugins/
cp -R plugins/GCToolsTheme matomo/plugins/
cp -R plugins/MatomoConcierge matomo/plugins/

echo "Starting matomo"
cd matomo
php -S 0.0.0.0:8000