#!/bin/bash

# Prompt user to enter a file/directory name
read -p "Enter File Name : " x

# Check if the input is a directory
if [ -d "$x" ]
then
    echo "$x is a Directory File"
    ls "$x"  # List contents of the directory

# Check if the input is a regular file
elif [ -f "$x" ]
then
    echo "$x is a Regular File, Not a Directory File"
    cat "$x"  # Display file contents

# If neither, print a message
else
    echo "$x is Neither a Directory nor a Regular File"
fi
