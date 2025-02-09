# Display Directory Name and Content and If Empty then Show HOME directory

read -p "Enter Directory Name to Show Content : " x

if [ -d "$x" ]
then
	ls "$x"
	ls -l "$x"

elif [ -z "$x" ]
then
	echo "You Entered Nothing so, Here Showing HOME Directory :"
	ls /home
	ls -l /home/mobaxterm

else
	echo "[$x] Name Directory Doesn't Exist !!"

fi
