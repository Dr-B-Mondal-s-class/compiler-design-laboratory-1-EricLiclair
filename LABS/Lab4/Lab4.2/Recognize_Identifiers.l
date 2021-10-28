%{
//macros of c programs
%}

identifers  [a-zA-Z_][a-zA-Z0-9_]*

%%
{identifers} {printf(" Identifiers");};
.*    {printf("Not an identifier");};
%%
main()
{
yylex();
return 0;
}
int yywrap()
{
}
