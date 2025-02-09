# Take Two File Name and Perform Operation Using Switch Case

echo "Select Any One to Perform Task on Above Files :"
echo "1. Display Content of 1st File and Display Content Page Wise"
echo "2. Copy Content of 1st File into 2nd File"
echo "3. Final Message : Files Copied Successfully"

read -p "Enter Your Choice : " ch

case $ch in

1)
	read -p "Enter 1st File Name : " x
	read -p "Enter 2nd File Name : " y
	if [ -f $x ] && [ -f $y ]
	then
		echo "Displaying the Content of File "
		cat $x $y
		echo " "
		#less $x $y
	else
		echo "File Doesn't Exist !!"
	fi
	;;

2)
	read -p "Enter 1st File Name : " x
	read -p "Enter 2nd File Name : " y
	if [ -f $x ] && [ -f $y ]
	then
		cp -i $x $y
		cat $y
	else
		echo "File Doesn't Exist !!"
	fi
	;;

3)
	read -p "Enter 1st File Name : " x
	read -p "Enter 2nd File Name : " y
	if [ -f $x ] && [ -f $y ]
	then
		cp -i $x $y
		cat $y
		echo "Fils $x Copied into $y Successfully !!"
	
	else
		echo "File Doesn't Exist !!"
	fi	
	;;

*)
	echo "Invalid Entry !!"

esac

