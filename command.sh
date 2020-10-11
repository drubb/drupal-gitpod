#!/bin/bash
set -e

gp open "instructions-${DRUPAL_MAJOR:-9}.md"
sleep 1
if [ "$DRUPAL_MAJOR" = "none" ]
then
  clear
  printf "It's up to you! Spin up your custom Drupal instance using Composer and Drush. Example:\n\ncomposer create-project <template> somedir\ncd somedir\ncomposer require drush/drush\ndrush si\ndrush serve 0.0.0.0:8888\n"
  exit 0
fi
[ -d "./drupal" ] && cd drupal
echo 'Your Drupal instance is being prepared. You can watch the progress in the second terminal window ("Start & Run")'.
gp await-port 8888
echo 'Your Drupal instance is ready. Pleas, open the server port using the popup to to the right or use this Drush link to login immediately (Cmd/Ctrl+Click):'
drush uli
