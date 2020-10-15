#!/bin/sh
sudo ifconfig wlan0 down
sleep 1

sudo ifconfig wlan0 hw ether 10:7B:44:64:FA:57
sleep 3

sudo ifconfig wlan0 up

