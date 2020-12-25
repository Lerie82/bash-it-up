#!/bin/sh
for cost in $(cat bk_download.csv |grep -i taco|cut -d',' -f7)
do
	running=$(($cost+$total))
done
