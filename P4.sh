

echo "1. For Display Hidden Files"
echo "2. For Delete Directory with Files"
echo "3. For User Can Do Interactive Copying"
echo "4. For User Can Do Interactive Deletion of Files"
echo "5. For Explain Two Functionality of 'mv' Command"
echo "6. EXIT"

echo "Please Enter Your Choice :"
read ch

case $ch in

1)
	ls -a
	;;

2)
	echo "Here is Command for Delete Whole Directory with all Contents :"
	echo "rm -ri bca"		# With Confirmation 'i' used
	echo "rm -rf bca"		# Force Deletion 'f' used 		# '-r' used with Directory
	echo "BCA directory and It's all Contents are now Deleted !!"
	;;
3)
	echo "BCA Directory will be Copied in 'BSC' named Directory with It's All Content Files"
	cp -ri BCA BSC
	echo "Only one BCA file will be copied in 'bsc' named file (txt/sh)"
	cp -i bca.txt  bsc.txt
	;;
4)
	echo "Interactive Deletion means Delete File with Confirmation (yes/no)"
	rm -i abc.txt
	;;
5)
	echo "Two Functionality of 'mv' Command :"
	
	echo "1. Rename File"
	mv abc.txt xyz.txt

	echo"2. Move a File"
	mv abc.txt /drives/d/6307/
	;;
6)
	echo "GOOD BYE"
	exit 0
	;;
*)
	echo "Invalid Entry !!"

esac




