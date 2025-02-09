# Switch - Case

echo "Please Select Any One of Below to Perform Task : "
echo "1. Show Calender of Current Month and Year"
echo "2. Display Good Morning / Good Evening According to Time"
echo "3. Display User Name and User Home Directory"
echo "4. Terminal Name and Terminal Type"
echo "5. Machine Name"
echo "6. No of Users Who are Currently logged in"
echo "7. EXIT"

read -p "Enter Your Choice : " ch

case $ch in

1)
	cal
	;;

2)	
	# read -p "Enter Current Time in Hours (0-23) :" x
	# x=$(date +"%H")

	# program 10
	;;

3)
	echo "User Name : $(whoami)"
	echo "User Directory : $(pwd)"
	echo "System Information: $(uname -a)"
	;;

4)
	echo "Terminal Name and Terminal Type : "
	tty; echo $TERM
	;;

5)
	echo "Machine Name : $(hostname)"
	;;

6)
	$(who -H)
	;;

7)
	echo "GOOD BYE !!"
	exit 0
	;;

*)
	echo "Invalid Choice !!"

esac
