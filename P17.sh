# Accept 2 File - Check both Exist - Append File2 in File 1

read -p "Enter 1st File Name : " x
read -p "Enter 2nd File Name : " y

if [ -f $x ] && [ -f $y ]
then
	echo "Both File '$x' and '$y' are Exist"
	cat $y>>$x
	cat $x
	echo "File $y is Successfully Append into $x File"

else
	echo "Sorry !! Can't Append !!"
	echo "Either Both or Any One File Does Not Exist !!"

fi
