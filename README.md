# Mentoring Sample Project

### Requirements

* [docker](https://www.docker.com/)
* [docker-comppse](https://docs.docker.com/compose/)

### Getting Started

This is based on [expresso-php](https://github.com/expresso-php/expresso-php).
* Run `docker-compose up -d` to build the environment.
* ssh in with `docker-compose exec php_nginx /bin/bash`.

The drupal superadmin credentials for your local environments will be `admin / admin`.

## Build Process
* To install the site from scratch, run: `./build/install.sh`

  Run:
  ```
  ./vendor/drupal/console/bin/drupal entity:delete shortcut_set default
  ```
  Then:
  ```
  ./build/update.sh
  ```
* To update pre-existing site with changes in configuration, run: `./build/update.sh`
