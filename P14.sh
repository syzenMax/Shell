
read -p "Enter File Name :" x

if [ -x $x ] && [ -f $x ]
then
	echo "$x Exists and It is Executable"
	cat $x

else
	echo "$x File Either does not Exist or not Executable"

fi
