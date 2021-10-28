%{
//macros
%}
ari "+"|"\-"|"/"|"%"|"\*"|">"|"<"|"."
lo "="|"!="|"&&"|"&"|"||"
%%
{ari} {printf("%s is a valid arithmetic operator\n",yytext);};
{lo} {printf("%s is a valid logical operator\n",yytext);};
.+ {printf("%s is not a valid operator\n",yytext);};
%%

int main()
{
    yylex();
        return 0;
}

int yywrap(void){
    return 0;
}
