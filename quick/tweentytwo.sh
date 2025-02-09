#!/bin/bash

# Prompt the user to enter a directory name
read -p "Enter Directory Name to Show Content: " x  

# Check if the entered name corresponds to a directory
if [ -d "$x" ]  
then
    # List the directory content in both simple and detailed formats
    ls "$x"
    ls -l "$x"

# Check if the user entered nothing (empty input)
elif [ -z "$x" ]  
then
    echo "You Entered Nothing, so Showing HOME Directory:"

    # Display the content of the home directory
    ls ~
    ls -l ~

# If the directory does not exist, display an error message
else  
    echo "[$x] Directory Doesn't Exist !!"
fi
