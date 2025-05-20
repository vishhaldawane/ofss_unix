
echo "Enter first file : "
read file1

echo "Enter second file : "
read file2

if [ $file1 -ot $file2 ]
then
	echo "$file1 is older than $file2"
else
	if [ $file1 -nt $file2 ]
	then
		echo "$file1 is newer than $file2"
	else
		echo "Both $file1 and $file2 are of same age"
	fi
fi

