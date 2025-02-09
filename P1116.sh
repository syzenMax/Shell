# Calculate Total Numbers of Regular Files (.sh/.txt)  and  Directory Files (dir1,dir2)

x=$(ls -l | grep -v ^d | wc -l)
							#ls -l detail long list,   #grep = search,    #-v = opposite,  #^d = Start from 'd'
y=$(ls -l | grep ^d | wc -l)

echo "Total Regular Files Are : $x"
echo "Total Directory Files Are : $y"

							# ls -l  =  Long Detail List of All Files with Permission	#wc -l :Word Count by Lines
