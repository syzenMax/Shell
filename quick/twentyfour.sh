#!/bin/bash

# Prompt the user to enter two file names
read -p "Enter 1st File Name: " x
read -p "Enter 2nd File Name: " y

# Check if both files exist before comparing
if [ ! -f "$x" ] || [ ! -f "$y" ]; then
    echo "Error: One or both files do not exist!"
    exit 1  # Exit the script with an error status
fi

# Compare the contents of both files using 'cmp' (silent mode -s)
if cmp -s "$x" "$y"
then
    echo "Both Files Are Identical !!"
else
    echo "Both Files Are Different !!"

    # Show the differences between the two files using 'diff'
    diff "$x" "$y"

    echo " * * * * * * * * * * * * * * *"
    echo "Since [$y] is different, it will be deleted!"

    # Prompt before deleting the second file (to avoid accidental deletion)
    rm -i "$y"
fi
