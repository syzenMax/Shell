
read -p "ENTER YOUR NAME : " x

if [ -f $x ]
then
	echo "Last Modification Time : $(stat -c %y "$x" | cut -d'.' -f1)"
else
	echo "File '$x' does not Exist !!"
fi
