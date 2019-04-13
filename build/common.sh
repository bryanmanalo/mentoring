#!/usr/bin/env bash

source .env

set -e
path=$(dirname "$0")
base=$(cd $path/.. && pwd)

drush="$base/vendor/drush/drush/drush $flags -y -r $base/docroot"

# Then push it to memory.
pushd $base/web

# Go to base directory.
cd $base
