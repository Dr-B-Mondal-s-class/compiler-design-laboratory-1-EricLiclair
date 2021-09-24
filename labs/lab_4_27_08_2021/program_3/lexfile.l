%{
// WAP to verify a valid keyword.
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

