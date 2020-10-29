#!/bin/sh
git clone https://gitlab.com/BenjaminDobell/Heimdall.git

#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0BB4A1B2FA1A38EB
#sudo add-apt-repository "deb http://ppa.launchpad.net/samoilov-lex/aftl-stable/ubuntu artful main"
sudo apt update

sudo apt -y -s install wget android-tools-fastboot android-tools-adb android-sdk-platform-tools-common android-tools-fsutils libusb-1.0-0-dev exfat-fuse
go-mtpfs libmtp mtpfs mtp-tools
