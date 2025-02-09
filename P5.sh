
echo "1. Create a File called 'Text' and Stoe Name,Age and Address in it"
echo "2. Display Contents of the File 'Text' on the Screen"
echo "3. Delete Directories 'mydir' and 'newdir' at One Shot."
echo "4. Sort a Numeric File"
echo "5. Change Permission for the File newtext to 666"
echo "6. EXIT"

echo "Enter Your Choice :"
read ch

case $ch in

1)
	read -p "Enter Name : " n
	read -p "Enter Age : " a
	read -p "Enter Address : " add
	echo "Name: $n">File5.txt
	echo "Age: $a">>File5.txt
	echo "Address: $add">>File5.txt
	;;

2)
	cat File5.txt
	;;

3)
	mkdir -p mydir newdir
	rm -r mydir newdir
	echo "Both Directories 'mydir' and 'newdir' are Successfully Deleted"
	;;

4)
	echo "File 'Numeric5.txt'  will be Sorted and Displayed here :"
	sort -n Numeric5.txt

	;;

5)
	echo "Follwoing Command to Change Permission '666' to Specific file here :"
	chmod 666 "Permission5.txt"
	echo "Done Successfully Changed!!"
	cat Permission5.txt
	;;

6)
	echo "GOOD BYE"
	exit 0
	;;

*)
	echo "Invalid Choice !!"

esac
