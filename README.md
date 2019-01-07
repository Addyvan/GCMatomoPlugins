# GCMatomoPlugins
A collection of plugins for matomo

# Setup & Installation

To install all the needed dependencies:

`npm run setup`

Next you need to start up the database:

`sudo docker-compose up`

Now you can start matomo using the custom plugins:

`npm start`

Once you are in you will need to fill in some setup info:

* connection is at 127.0.0.1:3306
* database username: matomo
* database name: matomo
* leave the password empty
* leave the table prefix to default

Rest is up to you!

# Testing your plugin with fake data

Once you have matomo all set up you can install the Visitor Generator plugin in the plugin marketplace. The Visitor Generator can then be controleld from the Development panel in the admin UI (bottom left)

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