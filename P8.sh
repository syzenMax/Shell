
for x in *
do

if [ -s $x ] && [ -f $x ]
then
	echo "$x is Non-Empty File (>0 KB)"

elif [ ! -s $x ] & [ -f $x ]
then
	echo "$x is Empty File and will be Deleted..."
	rm $x

else
	echo "$x is Either Directory or Special File"

fi

done
