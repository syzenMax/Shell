read -p "Enter File Name : " x

if [ -f $x ]
then
	echo "Full Path of File is :  $(realpath $x) "
	ls -l $x
else
	echo "File [$x] not Existing at $(pwd)"
fi
