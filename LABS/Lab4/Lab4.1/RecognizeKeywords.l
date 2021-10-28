%{
//macros of c programs
%}
%%
if|else|while|int|switch|for|char|break|enum|register|typedef|goto|sizeof|static|struct    {printf("keyword");}
.*    {printf("Not a keyword");}
%%
main()
{
yylex();
return 0;
}
int yywrap()
{
}
