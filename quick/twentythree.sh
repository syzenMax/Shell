#!/bin/bash

# Prompt the user to enter a file name that starts with 'C'
read -p "ENTER FILE NAME BEGIN WITH 'C' : " x

# Check if the file exists (-f) and if its name starts with 'C'
if [ -f "$x" ] && [[ "$x" == C* ]]
then
    echo "Old File Name: $x"
    
    # Rename the file to "NEWNEW"
    mv "$x" "NEWNEW"
    
    echo "File '$x' is Successfully Renamed to [NEWNEW] !!"
else
    echo "Please Enter a File Name Again, Starting With 'C' !!"
fi
