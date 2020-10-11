#!/bin/bash
set -e

gp open "instructions-${DRUPAL_MAJOR}.md"
sleep 1
[ -d "./drupal" ] && cd drupal
gp await-port 8888
drush uli
