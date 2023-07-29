# Drupal in Gitpod

Test drive the latest stable or a custom Drupal version in Gitpod, using one of the following buttons:
  
|**Launch the latest Drupal 8 version**|[![Launch Drupal 8 in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#DRUPAL_MAJOR=8/https://github.com/54x1/drupal-gitpod)|
|-|-|
|**Launch the latest Drupal 9 version**|[![Launch Drupal 9 in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#DRUPAL_MAJOR=9/https://github.com/54x1/drupal-gitpod)|
|**I want to install Drupal manually**|[![Custom Drupal Environment in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#DRUPAL_MAJOR=none/https://github.com/54x1/drupal-gitpod)|

## Introduction

![Screenshot Drupal on Gitpod](https://repository-images.githubusercontent.com/299027069/cf3d5480-00d1-11eb-83e4-e52eefc2f38f)
This project enables spinning up Drupal instances for testing or demonstration purposes. It launches a [Gitpod](https://gitpod.io) workspace with
some modifications supporting Drupal, mainly Drush support, automatic site installation and some performance tweaks.

You'll get a linux-based environment with an online IDE (Theia/VSCode) and command line support with tools like Composer, Git, npm, MySQL CLI and Drush. The latest Drupal version will be installed and launched automatically. Admin user: admin/admin

If you choose to install Drupal manually, you can do so using Composer and Drush.

Read more about Gitpod on their [documentation site](https://www.gitpod.io/docs/).

## Requirements

* You need a (free) account on [Gitpod](https://gitpod.io), and need to login there using an account on GitHub, GitLab or Bitbucket.
* Your code needs to be compatible with MySQL 8

## How does it work?

Clicking the Gitpod button starts the creation of a Docker container for your environment, this will take some minutes. Once the container is
running you'll see the online IDE (Theia/VSCode) with two terminals opened: "Start & Run" and "Command Line". The first one is used to setup Drupal
and run the PHP Development server, the second one is yours, e.g. to run Drush commands.

In case you're installing Drupal manually, you'll find some instructions in the "Start & Run" terminal on how to install Drupal and start the server, otherwise this will be done automatically.

Drupal installation will take some time. Once the development server is started, you'll be noticed about a new service on port 8888 and
can open your Drupal site, either inside a new IDE panel ("Open Preview"), or in your browser ("Open Browser").

In case you've closed the first terminal accidentally, or the PHP server crashed, you can open a new terminal, go to your Drupal root and start the server again using Drush: `drush serve 0.0.0.0:8888`

In Gitpod you can stop workspaces and resume execution later. Stopped workspaces won't count against your monthly usage limits.

## FAQ

### What are the credentials?
* Drupal admin user: admin / admin
* MySQL root user: root / no password
* Drupal database: drupal / drupal

### Can I run multiple workspaces?
Yes, you can create as many environments as needed. Free Gitpod accounts are however limited to one active (running) instance.

### Can I modify the installation?
Sure, there are two ways to achieve this:
* The command line is yours. You could e.g. choose the manually installation, or delete the Drupal root folder (/workspace/drupal-gitpod/drupal) and install a different Drupal environment. Another use case would be installing a JavaScript framework as frontend using npm. And you can use Composer and Drush to install Drupal modules and themes as needed.
* You can fork this repository and change everything, e.g. install additional php extensions or use a completely different Docker base image. Poke around in the code and consult the [Gitpod documentation](https://www.gitpod.io/docs/) for all possibilities!
In case you're forking this repository, **please change the links** for the Gitpod buttons in this README ('Open in Gitpod', see above) and point them to your own repository!

### Will my data persist when I stop the workspace?
As long as you don't delete your workspace, the /workspace folder and your database will persist. Your home directory however won't. Keep in mind that inactive (not running) workspaces will be deleted by Gitpod after 14 days, at least with a free account.

### Can I use this as development environment?
Please don't do it. Besides the fact that VSCode isn't very well suited for Drupal development, you're using a rather insecure setup. For example, the PHP dev server doesn't care for access restrictions from .htaccess files, and there is no basic auth or similar protection. Your workspace might be accessible from outside. So please don't upload sensitive data or ssh private keys and similar stuff! This environment is meant for quickly testing out things or demonstration purposes, nothing else!

### Can I host this myself?
Gitpod works along with GitHub, GitLab or Bitbucket, so you could use your own GitLab instance to spin up workspaces. It's also possible to use a selfhosted instance of Gitpod, you'll need some knowledge about Kubernetes to do this. Consult the [Gitpod documentation](https://www.gitpod.io/docs/) for all possibilities!

## Licence:
[MIT](https://choosealicense.com/licenses/mit/)
