# Welcome to Drupal on Gitpod

You've choosen to install Drupal manually. Here's how to do this using the
command line, Composer and Drush:

Below there are two terminal windows called "Start & Run" and "Command Line".
You can use the first one to install Drupal and start the builtin PHP Server. Example:
```shell
composer create-project <template> somedir
cd somedir
composer require drush/drush
drush si
drush serve 0.0.0.0:8888
```
The second window ("Command Line") will be used to run Drush and
Composer commands, e.g. for installing extensions.
