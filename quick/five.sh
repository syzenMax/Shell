#!/bin/bash  # Specifies that the script should run in the Bash shell

# Display menu options
echo "1. Create a File called 'Text' and Store Name, Age, and Address in it"
echo "2. Display Contents of the File 'Text' on the Screen"
echo "3. Delete Directories 'mydir' and 'newdir' at One Shot"
echo "4. Sort a Numeric File"
echo "5. Change Permission for the File 'newtext' to 666"
echo "6. EXIT"

# Prompt user for choice
read -p "Enter Your Choice: " ch

case $ch in
    1)
        # User inputs for name, age, and address
        read -p "Enter Name: " n
        read -p "Enter Age: " a
        read -p "Enter Address: " add
        
        # Store the user input in File5.txt
        echo "Name: $n" > File5.txt
        echo "Age: $a" >> File5.txt
        echo "Address: $add" >> File5.txt
        echo "Data Successfully Stored in File5.txt"
        ;;
    
    2)
        # Display the contents of File5.txt
        if [ -f File5.txt ]; then
            echo "Displaying Contents of File5.txt:"
            cat File5.txt
        else
            echo "File5.txt does not exist!"
        fi
        ;;
    
    3)
        # Create directories if they don't exist
        mkdir -p mydir newdir
        
        # Remove directories
        rm -r mydir newdir
        echo "Both Directories 'mydir' and 'newdir' are Successfully Deleted"
        ;;
    
    4)
        # Sort a numeric file
        if [ -f Numeric5.txt ]; then
            echo "Sorting Numeric5.txt:"
            sort -n Numeric5.txt
        else
            echo "Numeric5.txt does not exist!"
        fi
        ;;
    
    5)
        # Change file permissions
        if [ -f Permission5.txt ]; then
            chmod 666 Permission5.txt
            echo "File permissions changed to 666 for 'Permission5.txt'."
            ls -l Permission5.txt  # Display file permissions
        else
            echo "Permission5.txt does not exist!"
        fi
        ;;
    
    6)
        # Exit script
        echo "GOOD BYE"
        exit 0
        ;;
    
    *)
        # Handle invalid input
        echo "Invalid Choice! Please enter a valid option."
        ;;
esac
