%{
// WAP to count no. of characters, whitespace,tabs and digits in a string.
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

