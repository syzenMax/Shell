#!/bin/bash

# Loop through all items in the current directory
for x in *  
do
    # Check if the item is a non-empty file (>0 KB)
    if [ -s "$x" ] && [ -f "$x" ]; then  
        echo "$x is a Non-Empty File (>0 KB)"

    # Check if the item is an empty file (0 KB)
    elif [ ! -s "$x" ] && [ -f "$x" ]; then  
        echo "$x is an Empty File and will be Deleted..."
        rm "$x"  # Remove the empty file

    # If neither condition matches, it's a directory or a special file
    else  
        echo "$x is Either a Directory or a Special File"
    fi

done
