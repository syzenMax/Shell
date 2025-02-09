# suffix change means .txt to .dat all text files

for x in *.txt					# read -p "Enter Text File : " x
do

if [ -f $x ]
then
	mv $x ${x%.txt}.dat
	echo "File $x is Converted into ${x%.txt}.dat Format"
else
	echo "File Can't Be Converted Into .dat Format"
fi
done

