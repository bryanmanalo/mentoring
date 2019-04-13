#!/usr/bin/env bash

set -e
path=$(dirname "$0")
true=`which true`
source $path/common.sh

if [ -f config/sync/system.site.yml ]; then
  echo "...Importing configuration."
  echo "...Getting UUID from config."
  uuid=$(awk '{for (I=1;I<=NF;I++) if ($I == "uuid:") {print $(I+1)};}' config/sync/system.site.yml)
  echo "...Setting system UUID to " ${uuid}
  $drush cset system.site uuid ${uuid} -y
fi

echo "...Installing composer."
composer install

echo "...Clearing caches."
$drush cr -y

echo "...Importing the config, so everything is in place."
$drush config:import --source=${SYNC_DIRECTORY}

echo "...Database update again so updated modules can work."
$drush updb -y

echo "...Clearing caches one last time."
$drush cr -y

echo "...Build Complete!"
