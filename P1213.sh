
read -p "Enter File Name : " x

if [ -d $x ]
then
	echo "$x  is a Directory File"
	ls $x
	
elif [ -f $x ]
then
	echo "$x is a Regular File, Not Directory File"
	cat $x

else
	echo "$x is Neigther Directory File, Nor Regular File"

fi

