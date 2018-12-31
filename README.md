# GCMatomoPlugins
A collection of plugins for matomo

# Setup & Installation

To install all the needed dependencies:

`npm run setup`



# If you are having issues

### Permission denied with npm

First unlock permissions for the files in the scripts folder like so:

```
sudo chmod -x ./scripts/install.sh
sudo chmod -x ./scripts/dev.sh
```

If that doesnt work, try the following:

You need to unlock permissions in your home directory
`sudo chown -R your_username ~/.npm`

You also need write permissions to the node_modules directory
`sudo chown -R your_username /usr/local/lib/node_modules`

If you are still seeing errors
`sudo chown -R your_username /usr/local`

Source: https://stackoverflow.com/questions/16151018/npm-throws-error-without-sudo