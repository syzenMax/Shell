
read -p "ENTER FILE NAME BEGIN WITH 'C' : " x

if [ -f "$x" ] && [[ "$x" == C* ]]
then
	echo "Old File Name : $x"
	
	mv "$x" "NEWNEW"
	echo "File '$x' is Successfully Renamed With [NEWNEW] Name !!"
else
	echo "Please Enter File Name Again Starting With 'C' !!"

fi

