
read -p "Enter 1st File Name : " x
read -p "Enter 2nd File Name : " y

if cmp -s "$x" "$y"
then
	echo "Both Files Are Identicals !!"
else
	echo "Both Files Are Different !!"
	diff "$x" "$y"
	echo " * * * * * * * * * * * * * * *"
	echo "So, [$y] , This 2nd File Will Be Deleted !!"
	rm -i $y

fi
