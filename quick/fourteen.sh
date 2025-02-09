#!/bin/bash

# Prompt the user to enter a file name
read -p "Enter File Name :" x

# Check if the file exists and is executable
if [ -x "$x" ] && [ -f "$x" ]
then
    echo "$x Exists and It is Executable"
    cat "$x"  # Display the file contents

else
    echo "$x File Either does not Exist or is not Executable"
fi
