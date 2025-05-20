


echo "Enter pan card : "
read pancard

case $pancard in
	[A-Z][A-Z][A-Z][A-Z][A-Z]-[0-9][0-9][0-9][0-9]-[A-Z]) echo "Valid pan" ;;
	*) echo "Invalid pancard"
esac

