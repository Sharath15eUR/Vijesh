#!/bin/bash

#To check if input file is provided else exit
if [ $# -ne 1 ]; then
    echo "Invalid no. of arguments"
    exit 1
fi

inputfile=$1

#Creating outputfile
outputfile="output.txt"
>"$outputfile"


#Searching line by line here
while IFS= read -r line; do
    if [[ "$line" =~ '"frame.time":' ]]; then
        echo "$line" >> "$outputfile"
    fi

    if [[ "$line" =~ '"wlan.fc.type":' ]]; then
        echo "$line" >> "$outputfile"
    fi
    
    if [[ "$line" =~ '"wlan.fc.subtype":' ]]; then
        echo "$line" >> "$outputfile"
    fi

done < "$inputfile"

