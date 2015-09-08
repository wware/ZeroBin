#!/bin/sh

# make sure the package repository is up to date
echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
apt-get update
apt-get install -y openssh-server python-setuptools curl python-redis redis-server python-flask git \
    apache2 php5 libapache2-mod-php5 vim

easy_install pip virtualenv docopt

(cd /var/www/html
git clone https://github.com/wware/ZeroBin.git
chown -R www-data ZeroBin)
