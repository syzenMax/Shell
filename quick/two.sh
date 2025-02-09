#!/bin/bash

read -p "Enter File Name: " x

if [ -f "$x" ]; then
    echo "Full Path of File is: $(realpath "$x")"
    ls -l "$x"
else
    echo "File [$x] does not exist in $(pwd)"
fi

#chmod +x script.sh
#./script.sh
