
USERDETAILS="$LOGNAME executed this code at `date`"
echo "Enter the emp number : " ;  read empno


if [ -z $empno ] # if it is zero length [ or blank ]
then
	echo "Employee number cannot be blank"
	STATUS='Blank Employee Number was entered'
	echo "Log is : $USERDETAILS : $STATUS" >> userdetails.log
	exit
else
	echo  "You entered : $empno"
	STATUS="Employee Number entered was $empno"
fi

echo "Searching the record for $empno"
DATA=`grep ^$empno sal.lst --color`
if [ $? -eq 0 ]  ; then # space is mandatory 

	echo "Record found"
	echo "--- DATA IS AS BELOW ---"
	  EMPNO=`echo "$DATA" | cut -f1` ; EMPNAME=`echo "$DATA" | cut -f2`
	  BASIC=`echo "$DATA" | cut -f3` ; HRA=`echo "$DATA" | cut -f4`
	     DA=`echo "$DATA" | cut -f5` ; TA=`echo "$DATA" | cut -f6`
	  GROSS=`echo "$DATA" | cut -f7` ; PF=`echo "$DATA" | cut -f8`
	    NET=`echo "$DATA" | cut -f9`
	echo "----- SALARY  SLIP -----"
	echo "Employee Number : $EMPNO"  ; echo "Employee Name   : $EMPNAME"
	echo "------------------------"
	echo "Employee Basic  : $BASIC"  ; echo "Employee Hra    : $HRA"
	echo "Employee Da     : $DA"     ; echo "Employee Ta     : $TA"
	echo "------------------------"
	echo "Employee Gross  : $GROSS"  ; echo "Employee pf     : $PF"
	echo "------------------------"
	echo "Employee Net    : $NET"
	echo "------------------------"
	STATUS="Data found as : $DATA"
else
	echo "Record not found"
	STATUS="Record not found : $empno"
fi

echo "Log is : $USERDETAILS : $STATUS" >> userdetails.log

