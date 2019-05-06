#!/bin/bash
set -e

echo "################################################################"
echo "###################   Installing AMP      ######################"
echo "################################################################"
echo ""
# Drupal tools: cnsole coder

sudo pacman -S composer --no-confirm --needed

#composer global require drupal/console:~1.0 --prefer-dist --optimize-autoloader

cd /srv/http/
composer create-project drupal-composer/drupal-project:8.x-dev some-dir --no-interaction

# Dependencie of Drush so this has to be set up first
# php-box wants a gpgp keyi
# If makepkg fails with a message similar to "FAILED (unknown public key 293D771241515FE8)" or "One or more PGP signatures could not be verified!":
# Please import the GPG Key of the developer of php-box with the fingerprint listed on https://github.com/box-project/box2#gpg-signature.
# gpg --keyserver hkp://pgp.mit.edu --recv-keys 32E4B74757B1D65234FC389F293D771241515FE8

# gpg --recv-keys 293D771241515FE8

# aur: php-box

#composer global require drush/drush


#(AUR)
#php-codesniffer-drupal-git  drush

    1  ping ns.nl
    2  sudo systemctl start Networkmanager
    3  sudo systemctl start NetworkManager
    4  sudo systemctl enable  NetworkManager
    5  ls
    6  sudo ./006-install-n-cores.sh
    7  sudo ./005-install-if-microcode-error.sh
    8  reboot
    9  ls
   10  ./050-install-xorg-vbox.sh
   11  ls
   12  ./060-install-plasma-desktop.sh
   13  ls
   14  ./061-install-display-manager.sh
   15  ls
   16  reboot
   17   cd /srv/http
   18   clear
   19  ls -al
   20  sudo chown -r th:users bouwsite*
   21  sudo chown -R th:users bouwsite*
   22   cd /srv/http/bouwsite1.ont
   23   cd /srv/http
   24   cd /srv/http/bouwsite2.ont
   25  ls
   26  ./040-install-git.sh
   27  git clone https://github.com/Tahooft/ampd.git
   28  cd ampd/
   29  ls
   30  ./010-nstall-amp.sh
   31  pacman -S falkon
   32  sudo pacman -S falkon
   33  lscpu
   34  pacman -S conky conky-,manager
   35  sudo pacman -S conky conky-,manager
   36  sudo pacman -Ss conky
   37  sudo pacman -S conky conky-manager
   38   cd /srv/http
   39   clear
   40  ls -al
   41  cd bouwsite1.ont/
   42  ls -al
   43   cd /
   44   cd /srv
   45  chmod 777 http
   46  sudo chmod 777 http
   47   cd /
   48  sudo pacman -S xdebug
   49  sudo pacman -S php-gd
   50  sudo pacman -S composer
   51  composer -v
   52  composer global require drush/drush
   53  sudo pacman -S unzip
   54  drush
   55  cd ~
   56  drush
   57  which drush
   58  composer search drush-launcher
   59  composer global rfequire drush/drush-launcher
   60  composer global require drush/drush-launcher
   61  drupal help
   62  which composer
   63  which drupal
   64  which drush
   65  composer global require drush/drush
   66  composer
   67  composer init
   68  cd /srv/http/bouwsite1.ont/
   69  ls
   70  rm -R web
   71  ls
   72  composer create-project drupal-composer/drupal-project:8.x-dev some-dir --no-interaction
   73  sudo pacman -Ss php
   74  php
   75  composer create-project drupal-composer/drupal-project:8.x-dev some-dir --no-interaction
   76  rm -R *
   77  composer create-project drupal-composer/drupal-project:8.x-dev some-dir --no-interaction
   78  sudo systemctl status httpd
   79  sudo systemctl start httpd mariadb
   80  sudo pacman -Ss php-pdo
   81  sudo pacman -Ss pdo
   82   cd /home/th
   83   clear
   84   cd /
   85  sudo systemctl enable httpd mariadb
   86  sudo systemctl start httpd mariadb
   87  httpd -M
   88  a2enmod rewrite
   89  sudo systemctl restart httpd mariadb
   90  sudo systemctl restart httpd mariadb
   91  history
   92  history > history.txt
