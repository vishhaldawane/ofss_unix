#!/usr/bin/awk -f

BEGIN {
	FS=" "
	printf("<h1>begining of the report</h1>\n");
	printf("\n<table border=5 cellspacing=10 cellpadding=10>");
}

{
	printf("<tr>\n");
	printf("\n<td>%d</td>",$1);
	printf("\n<td>%s</td>",$2);
	printf("\n<td>%s</td>",$3);
	printf("\n<td>%f</td>",$4);
	printf("</tr>\n");
}

END {
	printf("\n</table>");
	printf("\n<h2>End of the report</h2>");
}
