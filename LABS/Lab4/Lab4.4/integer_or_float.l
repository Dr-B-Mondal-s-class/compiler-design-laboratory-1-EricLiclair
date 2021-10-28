%{
//macros
%}
float [0-9]+"."[0-9]+ 
integer [0-9]+
%%
{float} {printf("Float");};
{integer} {printf("Integer");};
.+ {printf("Neither Integer nor Float");};
%%

int main()
{
    yylex();
        return 0;
}

int yywrap(void){
    return 0;
}
