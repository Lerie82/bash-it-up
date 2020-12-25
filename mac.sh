#!/bin/sh
sudo ifconfig wlan0 down
printf "working."
sleep 1

#sudo ifconfig wlan0 hw ether 10:7B:44:64:FA:57
sudo ifconfig wlan0 hw ether 02:11:22:33:44:55
printf ".."
sleep 5

sudo ifconfig wlan0 up
printf "..."
sleep 10

curl -v -L "http://gstatic.com/generate_204"
