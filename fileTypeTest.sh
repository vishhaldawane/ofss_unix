
filename=""
while [ -z $filename ]
do
	echo "Enter the filename : "
	read filename
done

echo "File name is : $filename"

if [ -d $filename ]
then
	echo "It is a directory"
else
	if [ -L $filename ]
	then
		echo "It is a soft link"
	else
		if [ -b $filename ]
		then
			echo "It is a block device file"
		else
			if [ -c $filename ]
			then
				echo "It is a character device file"
			else
				if [ -f $filename ]
				then
					echo "It is a file"
				else
					echo "It is something special file"
				fi
			fi
		fi
	fi
fi

