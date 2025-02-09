#!/bin/bash  # Specifies that the script should run in the Bash shell

# Infinite loop to keep the menu running until the user chooses to exit
while true
do
    # Display menu options
    echo "Select Any One to Perform that Task:"
    echo "1. Sort file abc.txt and Save with xyz.txt"
    echo "2. Execute Command together without affecting result to each other"
    echo "3. Print whole message in 3 lines"
    echo "4. Command to Display Version of UNIX in detail"
    echo "5. Get help for 'cat' Command"
    echo "6. EXIT"

    # Read user input
    read -p "Please Enter Your Choice: " ch  # '-p' allows input on the same line

    case $ch in
        1)
            # Check if file 'abc.txt' exists before sorting
            if [ -f "abc.txt" ]; then
                sort abc.txt > xyz.txt  # Sort contents of abc.txt and save to xyz.txt
                cat xyz.txt  # Display sorted contents
                echo "'abc.txt' file is sorted and saved as 'xyz.txt'"
            else
                echo "File 'abc.txt' not found!"  # Error message if file doesn't exist
            fi
            ;;
            
        2)
            # Demonstrate execution of multiple commands using ';'
            echo "Executing multiple commands using ';':"
            echo "HELLO"; echo "WELCOME"
            ;;

        3)
            # Print message in three different lines
            echo "Printing message in 3 different lines:"
            echo -e "HELLO\nAPURV\nJOSHI"  # '-e' enables interpretation of '\n' for new lines
            ;;

        4)
            # Display system details using 'uname -a'
            echo "Here is the full system information:"
            uname -a  # Prints kernel name, version, machine type, etc.
            ;;

        5)
            # Show the manual page for 'cat' command
            echo "Opening manual for 'cat' command:"
            man cat  # Displays the manual for the 'cat' command
            ;;

        6)
            # Exit the script
            echo "G O O D  B Y E  !!"
            exit 0  # Exits the script with a success status
            ;;

        *)
            # Handle invalid input
            echo "Invalid Choice! Please try again."
            ;;
    esac

    echo ""  # Adds a blank line for better readability in output
done
