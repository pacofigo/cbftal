#!/bin/bash
# Written by M.E. Francisco Javier Ferreyra López

#Source Path
source_path='/path/to/the/source'

#Destination route
destination_path='/path/to/destination'

#Obtain the last day of the past month
last_day=$(date -d "$(date +%Y/%m/01) - 1 day 00:00" +"%d")

#Obtain the month
month=$(date -d "$(date +%Y/%m/01) - 1 day 00:00" +"%b")

#Obtain the year
year=$(date -d "$(date +%Y/%m/01) - 1 day 00:00" +"%Y")

#Copy the files of the firts nine days of the month
for ((i = 1; i < 10; i++)); do
	cp $source_path/fliename_0$i-$month-$year.tar.gz $destination_path/
done

#Copy files for the rest of the month
for ((i = 10; i <= $last_day; i++)); do
	cp $source_path/filename_$i-$month-$year.tar.gz $destination_path/
done
