#/bin/bash

# download some networking tools
sudo apt -y install tcpreplay finger iodine tshark tcpdump network-manager wireless-tools \
	jq

# network-manager
#sudo service network-manager start
#sudo systemctl start NetworkManager.service
#sudo systemctl enable NetworkManager.service
