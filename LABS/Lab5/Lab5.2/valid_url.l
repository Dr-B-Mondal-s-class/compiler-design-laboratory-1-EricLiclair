%{
	//macros
%}

protocol "http"|"https"|"ftp"
Domain "com"|"in"|"io"|"co.in"|"edu"|"ac.in"
URL ({protocol}+"://www."+[\/\.a-zA-Z0-9"-"]*{Domain}*)

%%
{URL} {printf("Valid URL");}
.* {printf("Invalid URL");}

%%

int main() {
    yylex();
}

int yywrap(void) {
    return 0;
}
