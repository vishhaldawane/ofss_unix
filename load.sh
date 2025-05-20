

filename=invoice.lst

while [ ! -f $filename ] # -f to check the presence of the file
do
	echo "Awaiting for the invoice.lst to be created..."
	sleep 2
done

echo "Got the invoice.lst....starting the procedure..."

