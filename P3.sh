while true
do

echo "Select Any One to Perform that Task : "
echo "1. Sort file abc.txt and Save with xyz.txt"
echo "2. Execute Command together without affecting result to each other"
echo "3. Print whole message in 3 lines"
echo "4. Command to Display Version of UNIX in detail"
echo "5. Get help for 'cat' Command"
echo "6. EXIT"
echo "Please Enter Your Choice : "			#read -p "Enter Your Choice :" ch
read ch

case $ch in

1)
	sort abc.txt > xyz.txt
	cat xyz.txt
	echo "'abc.txt' file is Sorted and Saved with name 'xyx.txt'"
	;;

2)
	echo "Here Two Command Will be Executed with the help of ';' "
	echo "HELLO"; echo "WELCOME"
	;;

3)
	echo "Print Whole Message in 3 Different Lines here"
	echo -e "HELLO\nAPURV\nJOSHI"
	;;

4)
	echo "Here is the Full Info of UNIX :"
	uname -a
	;;

5)
	echo "Get Help for 'cat' Command"
	man cat
	;;

6)
	echo "G O O D  B Y E  !!"
	exit 0
	;;

*)
	echo "Invalid Choice !!!"

esac

echo ""
done
