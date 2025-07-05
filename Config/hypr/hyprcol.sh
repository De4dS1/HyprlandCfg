#!/bin/sh

rm colors.conf
wal -i /home/ula/wallps -n

sleep 3

cp /home/ula/.cache/wal/colors colors
sed -i 's/#//' colors

i=0

while read line
do
	echo "\$color$i = rgb($line)" >> colors.conf
	(( i += 1))
done < colors

cp colors.conf /home/ula/.config/hypr/colors.conf
