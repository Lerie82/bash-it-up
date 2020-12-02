sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get -y update
sudo apt -y install apt-transport-https lsb-release ca-certificates wget -y
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg 
sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt -y update
sudo apt install php8.0-common php8.0-cli -y

