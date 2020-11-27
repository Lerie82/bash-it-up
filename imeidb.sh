#!/bin/sh
#lerie taylor / 11-26-2020 / imeidb.sh
#check imei from imeidb.xyz

if [ -z $1 ]; then
        echo "please provide an IMEI"
        exit
fi

#api key from imei.info
apikey=1a0OKzbO_BqEWBxkxniu

#test imei
#imei=869942044210121

#get imei from first argument
imei=$1

#free imei lookup
url="https://imeidb.xyz/api/imei/$imei?token=$apikey&format=json"

#curl it
curl -s $url|jq .message
