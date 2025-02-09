#!/bin/bash

# Accept 2 file names from the user
read -p "Enter 1st File Name : " x  # Store first file name in variable x
read -p "Enter 2nd File Name : " y  # Store second file name in variable y

# Check if both files exist
if [ -f $x ] && [ -f $y ]  # -f checks if the given argument is a regular file
then
    echo "Both File '$x' and '$y' Exist"  # Confirmation message

    cat $y >> $x  # Append contents of file y into file x using '>>' operator
    cat $x  # Display the updated contents of file x

    echo "File $y is Successfully Appended into $x File"  # Success message

else
    echo "Sorry !! Can't Append !!"  # Error message
    echo "Either Both or Any One File Does Not Exist !!"  # Explanation message
fi  # End of if condition
