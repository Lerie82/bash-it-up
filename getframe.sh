#!/bin/sh
#lerie taylor / 11-26-2020 / getframe.sh
#get a random frame from a video
#its buggy
outfile="z_test.png"
#file=testporn.mp4
file=$1
time=00

hors=$(ffmpeg -i $file 2>&1 | grep Duration | sed 's/Duration: \(.*\), start/\1/g'|cut -d":" -f1|tr -d ' ')
mins=$(ffmpeg -i $file 2>&1 | grep Duration | sed 's/Duration: \(.*\), start/\1/g'|cut -d":" -f2)
secs=$(ffmpeg -i $file 2>&1 | grep Duration | sed 's/Duration: \(.*\), start/\1/g'|cut -d":" -f3|cut -d '.' -f1)

rhrs=$(shuf -i0-$hors -n1)
rmin=$(shuf -i0-$mins -n1)
rsec=$(shuf -i0-$secs -n1)

$(ffmpeg -y -ss $rhrs:$rmin:$rsec -i $file -vframes 1 -q:v 2 $outfile)
