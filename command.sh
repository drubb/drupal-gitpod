#!/bin/bash
set -e
clear

# Gitpod will open README.md automatically in preview mode.
git update-index --assume-unchanged README.md
cp "instructions-${DRUPAL_MAJOR:-9}.md" README.md

# In case of manual installation we're done.
if [ "$DRUPAL_MAJOR" = "none" ]
then
  printf "It's up to you! Spin up your custom Drupal instance using Composer and Drush.\nSee above for an example on how to do this."
  exit 0
fi

# Wait for the Drupal instance being launched.
echo 'Your Drupal instance is being prepared, this will take some time.'
echo "You'll be notified once your instance is ready."
echo 'You can watch the progress in the second terminal window ("Start & Run")'.
gp await-port 8888

# Show instructions for browsing / login
printf "\nYour Drupal instance is ready. Please open the server port using the popup in the lower right corner\nor use this Drush link to login immediately (Cmd/Ctrl+Click):\n\n"
cd drupal
drush uli
