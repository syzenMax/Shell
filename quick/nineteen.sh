#!/bin/bash

# Display menu options for the user
echo "Please Select Any One of the Options Below to Perform a Task:"
echo "1. Show Calendar of the Current Month and Year"
echo "2. Display Good Morning / Good Evening Based on Time"
echo "3. Display User Name and Home Directory"
echo "4. Show Terminal Name and Type"
echo "5. Display Machine Name"
echo "6. Show the Number of Users Currently Logged In"
echo "7. EXIT"

# Accept user choice
read -p "Enter Your Choice: " ch  

# Switch-case to execute user-selected task
case $ch in

1)
    # Display the calendar of the current month and year
    cal
    ;;

2)  
    # Get the current hour (0-23)
    hour=$(date +"%H")

    # Determine and display appropriate greeting
    if [ $hour -ge 0 ] && [ $hour -lt 12 ]; then
        echo "Good Morning!"
    elif [ $hour -ge 12 ] && [ $hour -lt 18 ]; then
        echo "Good Afternoon!"
    elif [ $hour -ge 18 ] && [ $hour -lt 21 ]; then
        echo "Good Evening!"
    else
        echo "Good Night!"
    fi
    ;;

3)
    # Display user information
    echo "User Name: $(whoami)"  # Fetch current username
    echo "Home Directory: $HOME"  # Show user's home directory
    echo "System Information: $(uname -a)"  # Display OS details
    ;;

4)
    # Display terminal details
    echo "Terminal Name: $(tty)"  
    echo "Terminal Type: $TERM"  
    ;;

5)
    # Display machine (hostname) name
    echo "Machine Name: $(hostname)"  
    ;;

6)
    # Display the number of users currently logged in
    who -H | wc -l  
    ;;

7)
    # Exit the script
    echo "GOOD BYE!"
    exit 0  
    ;;

*)
    # Handle invalid input
    echo "Invalid Choice! Please enter a valid option."  
    ;;
esac  # End of case statement
