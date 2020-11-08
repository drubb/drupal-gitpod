FROM gitpod/workspace-mysql
COPY ./php.ini /etc/php/7.4/mods-available/php.ini
RUN sudo apt-get update && \
    sudo apt-get install php-apcu php-imagick -y && \
    sudo apt-get clean -y && \
    sudo ln -s /etc/php/7.4/mods-available/php.ini /etc/php/7.4/cli/conf.d/40-php.ini && \
    composer selfupdate && \
    composer global require drush/drush-launcher && \
    echo 'export PATH="$PATH:~/.composer/vendor/bin"' >> ~/.bashrc
