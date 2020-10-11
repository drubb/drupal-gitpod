#!/bin/bash
set -e

clear
cp "instructions-${DRUPAL_MAJOR:-9}.md" README.md
sleep 1
if [ "$DRUPAL_MAJOR" = "none" ]
then
  clear
  printf "It's up to you! Spin up your custom Drupal instance using Composer and Drush. See above for an example on how to do this."
  exit 0
fi
[ -d "./drupal" ] && cd drupal
echo 'Your Drupal instance is being prepared, this will take some time.'.
echo 'You can watch the progress in the second terminal window ("Start & Run")'.
gp await-port 8888
printf "\nYour Drupal instance is ready. Please open the server port using the popup in the lower right corner\nor use this Drush link to login immediately (Cmd/Ctrl+Click):\n\n"
drush uli
