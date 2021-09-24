%{
// WAP to recognize float and int data type.
%}

//DECLARATION

%%
//RULES
%%

int main() {
    yylex();
}

int yywrap(void) {
    return 0;
}   

