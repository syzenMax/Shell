#!/bin/bash

# Loop through all files with a .txt extension in the current directory
for x in *.txt  
do
    # Check if the file exists
    if [ -f "$x" ]  
    then
        # Rename the file by changing the .txt extension to .dat
        mv "$x" "${x%.txt}.dat"  
        echo "File $x is Converted into ${x%.txt}.dat Format"
    else
        echo "File $x Can't Be Converted Into .dat Format"
    fi
done
