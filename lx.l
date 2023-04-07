

%{
/* Definition section */
#include<stdio.h>
#include<stdlib.h>
#include "y.tab.h"
extern int yylval;
%}

/* Rule Section */
%%
[0-9]+ {
		{printf("%s IS A NUMBER.\n", yytext);}
		yylval=atoi(yytext);
		return NUMBER;

	}
"JO"|"EK"|"MA"|"ANE"|"CHE"|"TO"|"E"|"NU"|"ENU"|"KETLU"|"HASE"|"HOY" {printf("%s IS IDENTIFIER.\n", yytext);}
"ANU"|"NUTRON"|"PROTON"|"ANVIYA"|"DAL" {printf("%s IS KEYWORD.\n", yytext);}
[\t] ;
" " ;
[\n] return 0;

. return yytext[0];

%%

int yywrap()
{
return 1;
}
