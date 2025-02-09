#!/bin/bash

# Loop through all items in the current directory
for file in *  
do
    # Check if the item is a file and has execute permission
    if [ -x "$file" ] && [ -f "$file" ]; then  
        echo "$file"  # Print the filename
    fi
done
