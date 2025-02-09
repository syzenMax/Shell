# Welcome Message according to Time :

read -p "ENTER TIME IN HOURS (0-23) :" x

if [ $x -ge 0 ] && [ $x -lt 12 ]
then
	echo "GOOD MORNING"

elif [ $x -ge 12 ] && [ $x -lt 18 ]
then
	echo "GOOD AFTERNON"

elif [ $x -ge 18 ] && [ $x -lt 21 ]
then
	echo "GOOD EVENING"

else
	echo  "GOOD NIGHT"

fi
