#!/bin/bash

#moving from php7.0 to php7.1 for laravel
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get -y install php7.1 php7.1-common
sudo apt-get install php7.1-xml php7.1-mbstring

#http://tipsonubuntu.com/2017/05/30/install-sublime-text-3-ubuntu-16-04-official-way/
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#COLORS
# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# Update packages and Upgrade system
echo -e "$Cyan \n Updating System.. $Color_Off"
sudo apt-get update -y && sudo apt-get upgrade -y

## Install AMP
echo -e "$Cyan \n Installing Apache2 $Color_Off"
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y

echo -e "$Cyan \n Installing PHP & Requirements $Color_Off"
sudo apt-get install libapache2-mod-php php php-common php-curl php-dev php-gd php-pear php-imagick php-mcrypt php-mysql -y

echo -e "$Cyan \n Installing MySQL $Color_Off"
sudo apt-get install mysql-server mysql-client libmysqlclient15.dev -y

echo -e "$Cyan \n Installing phpMyAdmin $Color_Off"
sudo apt-get install phpmyadmin -y

echo -e "$Cyan \n Verifying installs$Color_Off"
sudo apt-get install apache2 libapache2-mod-php php mysql-server php-pear php-mysql mysql-client mysql-server php-mysql php-gd -y

## TWEAKS and Settings
# Permissions
echo -e "$Cyan \n Permissions for /var/www $Color_Off"
sudo chown -R www-data:www-data /var/www
echo -e "$Green \n Permissions have been set $Color_Off"

# Enabling Mod Rewrite, required for WordPress permalinks and .htaccess files
echo -e "$Cyan \n Enabling Modules $Color_Off"
sudo a2enmod rewrite
sudo php5enmod mcrypt

# Restart Apache
echo -e "$Cyan \n Restarting Apache $Color_Off"
sudo service apache2 restart
