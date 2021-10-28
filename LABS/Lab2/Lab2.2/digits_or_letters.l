
%{
 // macros of C
%}
digit [0-9]
letter [a-zA-Z]
%%

{digit} {printf("This contains digits");};
{letter} {printf("This contain letters");};
%%
int main()
{
    yylex();
        return 0;
}

int yywrap(void){
    return 0;
}
