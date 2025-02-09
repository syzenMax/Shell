#!/bin/bash

# Prompt the user to enter the time in hours (0-23)
read -p "ENTER TIME IN HOURS (0-23): " x

# Check if the entered time falls within specific ranges and display a greeting message accordingly
if [ $x -ge 0 ] && [ $x -lt 12 ]; then
    echo "GOOD MORNING"  # Morning: 0 AM - 11 AM

elif [ $x -ge 12 ] && [ $x -lt 18 ]; then
    echo "GOOD AFTERNOON"  # Afternoon: 12 PM - 5 PM

elif [ $x -ge 18 ] && [ $x -lt 21 ]; then
    echo "GOOD EVENING"  # Evening: 6 PM - 8 PM

else
    echo "GOOD NIGHT"  # Night: 9 PM - 11 PM and beyond
fi

