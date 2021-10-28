
%{
   // macros of C
%}

digit [0-9]

%%
{digit}+ {printf("This contains digit");};
.+ {printf("Not a digit");};

%%
int main()
{
    yylex();
        return 0;
}

int yywrap(void){
    return 0;
}
