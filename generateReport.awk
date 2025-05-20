#!/usr/bin/awk -f

BEGIN {
	FS=" "
	printf("\nbegining of the report\n");
}

{
	printf("\n%d",$1);
	printf("\n%s",$2);
	printf("\n%s",$3);
	printf("\n%f",$4);
	printf("\n");
}

END {
	printf("End of the report");
}
