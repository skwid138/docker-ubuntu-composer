# CIG Setup
# Ubuntu 16.04.6 LTS
# PHP 7.2.25
# Composer 1.6.3

FROM ubuntu:16.04
LABEL maintainer="Hunter Rancourt <hunter.rancourt@gmail.com>"

# Make PHP 7.2 available to Ubuntu
#RUN add-apt-repository ppa:ondrej/php

# Get PHP, curl, and git
RUN apt-get update && apt-get install -y php curl git
#RUN apt-get update && apt-get install -y php7.2 curl git

# Install Composer, version specific
RUN curl -fsSL https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

# Create the local directory to run in
RUN mkdir -p /var/composer

# Set the local directory to run in
WORKDIR /var/composer