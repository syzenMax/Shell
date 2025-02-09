#!/bin/bash

# Display menu options for the user
echo "Select Any One to Perform Task on Given Files:"
echo "1. Display Content of Both Files"
echo "2. Copy Content of 1st File into 2nd File"
echo "3. Final Message: Files Copied Successfully"

# Accept user choice
read -p "Enter Your Choice: " ch  

# Switch-case to handle different operations
case $ch in

1)
    # Accept file names
    read -p "Enter 1st File Name: " x  
    read -p "Enter 2nd File Name: " y  

    # Check if both files exist
    if [ -f $x ] && [ -f $y ]  
    then
        echo "Displaying the Content of Both Files:"
        cat $x $y  # Display content of both files
        echo ""  # Print a blank line for readability
        # Uncomment below line to show content page-wise
        # less $x $y  
    else
        echo "One or Both Files Do Not Exist!"  # Error message
    fi
    ;;

2)
    # Accept file names
    read -p "Enter 1st File Name: " x  
    read -p "Enter 2nd File Name: " y  

    # Check if both files exist
    if [ -f $x ] && [ -f $y ]  
    then
        cp -i $x $y  # Copy content of 1st file to 2nd file (interactive mode)
        cat $y  # Display content of the copied file
    else
        echo "One or Both Files Do Not Exist!"  # Error message
    fi
    ;;

3)
    # Accept file names
    read -p "Enter 1st File Name: " x  
    read -p "Enter 2nd File Name: " y  

    # Check if both files exist
    if [ -f $x ] && [ -f $y ]  
    then
        cp -i $x $y  # Copy content
        cat $y  # Display content of copied file
        echo "File $x Copied into $y Successfully!"  # Success message
    else
        echo "One or Both Files Do Not Exist!"  # Error message
    fi    
    ;;

*)
    echo "Invalid Entry! Please enter a valid choice."  # Handle invalid input
    ;;
esac  # End of case statement
