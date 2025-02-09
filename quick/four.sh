#!/bin/bash  # Specifies that the script should run in the Bash shell

# Display menu options for the user
echo "1. Display Hidden Files"
echo "2. Delete Directory with Files"
echo "3. Interactive Copying"
echo "4. Interactive Deletion of Files"
echo "5. Explain Two Functionalities of 'mv' Command"
echo "6. EXIT"

# Prompt user for choice
read -p "Please Enter Your Choice: " ch

case $ch in
    1)
        # List hidden files using 'ls -a'
        echo "Displaying hidden files in the current directory:"
        ls -a
        ;;
    
    2)
        # Provide commands to delete directories with files
        echo "Commands to delete a directory and its contents:"
        echo "rm -ri bca    # Deletes 'bca' directory with confirmation (prompt for each file)"
        echo "rm -rf bca    # Force deletes 'bca' directory without confirmation"
        echo "Warning: The 'bca' directory and all its contents will be deleted!"
        ;;
    
    3)
        # Interactive copying explanation
        echo "Copying directory 'BCA' into 'BSC' with confirmation:"
        cp -ri BCA BSC  # Copies entire BCA directory into BSC with interactive confirmation

        echo "Copying a single file interactively:"
        cp -i bca.txt bsc.txt  # Prompts before overwriting 'bsc.txt'
        ;;
    
    4)
        # Interactive deletion of a file
        echo "Deleting 'abc.txt' with confirmation (yes/no):"
        rm -i abc.txt  # Prompts before deleting
        ;;
    
    5)
        # Explaining two functionalities of 'mv' command
        echo "Functionality of 'mv' Command:"

        echo "1. Rename a file:"
        mv abc.txt xyz.txt  # Renames abc.txt to xyz.txt

        echo "2. Move a file to another directory:"
        mv abc.txt /drives/d/6307/  # Moves abc.txt to /drives/d/6307/
        ;;
    
    6)
        # Exit the script
        echo "GOOD BYE!"
        exit 0
        ;;
    
    *)
        # Handle invalid input
        echo "Invalid Entry! Please enter a valid choice."
        ;;
esac
