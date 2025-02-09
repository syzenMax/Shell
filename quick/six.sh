#!/bin/bash  # Specifies that the script should run in the Bash shell

# Prompt user to enter a file name
read -p "ENTER FILE NAME: " x

# Check if file exists
if [ -f "$x" ]; then
    echo "Last Modification Time: $(stat -c %y "$x" | cut -d'.' -f1)"
else
    echo "File '$x' does not exist!!"
fi
