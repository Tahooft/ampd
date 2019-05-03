#!/bin/bash
set -e

echo "################################################################"
echo "###################   Installing AMP      ######################"
echo "################################################################"
echo ""

# The pre-configured scrips
LAMPdir=conf-ini

# Apache
sudo pacman -S apache  --noconfirm --needed

sudo cp $LAMPdir/httpd.conf /etc/httpd/conf/httpd.conf
sudo cp $LAMPdir/httpd-vhosts.conf /etc/httpd/conf/extra/httpd-vhosts.conf
sudo cp -r $LAMPdir/http/* /srv/http/
sudo cp $LAMPdir/hosts /etc/hosts

# MySQL
sudo pacman -S mysql  --noconfirm --needed
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# Test
sudo systemctl start mariadb
sudo systemctl status mariadb
#sudo mysql -u root -p

# Make more secure
sudo mysql_secure_installation
sudo systemctl stop mariadb

# PHP, PHP-Aoachee, phpMyAdminin, php-gd, xdebug
sudo pacman -S php php-apache phpmyadmin php-gd xdebug --noconfirm --needed

sudo cp $LAMPdir/php.ini /etc/php/php.ini
sudo cp $LAMPdir/phpmyadmin.conf /etc/httpd/conf/extra/phpmyadmin.conf

sudo chmod -R o+r /srv/http/
sudo chown -R  $USER:users /srv/http/

# Test
sudo systemctl start httpd mariadb
sudo systemctl status httpd mariadb

echo "###################   Done                ######################"

