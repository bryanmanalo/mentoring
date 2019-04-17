# Mentoring Sample Project

### Requirements

* [docker](https://www.docker.com/)
* [docker-compose](https://docs.docker.com/compose/)

### Getting Started

This is based on [expresso-php](https://github.com/expresso-php/expresso-php).
* Copy `.env.example` to `.env` and update the credentials to to appropriate values.
```
MYSQL_DATABASE=expresso-php
MYSQL_HOSTNAME=db
MYSQL_PASSWORD=expresso-php
MYSQL_PORT=3306
MYSQL_USER=expresso-php

# Another common use case is to set Drush's --uri via environment.
# DRUSH_OPTIONS_URI=http://example.com

# Drupal Admin credentials.
DRUPAL_USER=admin
DRUPAL_PASSWORD=admin

# Sync Directory.
SYNC_DIRECTORY='../config/sync'
```
* Run `composer install`.
* Run `docker-compose up -d` to build the environment.
* ssh in with `docker-compose exec php_nginx /bin/bash`.

The drupal superadmin credentials for your local environments will be `admin / admin`.

## Build Process
* To install the site from scratch, run: `./build/install.sh`
* To update pre-existing site with changes in configuration, run: `./build/update.sh`
