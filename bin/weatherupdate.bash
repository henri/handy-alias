#!/usr/bin/env bash

city=Tokyo

clear 
while true ; do
	#current_hour=$(date +%H)
	#current_day=$(date +%u)
	#if [ $current_day -le 5 ] && [ $current_day -ge 1 ] && [ $current_hour -ge 6 ] && [ $current_hour -lt 21 ] ; then
		curl https://wttr.in/${city}
	#else
	#	echo ""
	#	echo "                                ======================================"
	#	echo "                          not within scheduled time for updates to weather"
	#	echo "                                ======================================"
	#fi
	sleep 3600
	clear
 done
