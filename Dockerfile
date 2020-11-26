# CIG Setup
# Ubuntu 16.04.6 LTS
# PHP 7.2.25
# Composer 1.6.3

FROM ubuntu:16.04
LABEL maintainer="Hunter Rancourt <hunter.rancourt@gmail.com>"

# TODO: Check version of PHP and install correct version if needed

# Install Composer
RUN curl -fsSL https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

