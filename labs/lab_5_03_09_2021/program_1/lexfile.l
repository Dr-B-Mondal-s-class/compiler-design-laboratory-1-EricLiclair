%{
// WAP to count number of lexemes,keyword, identifiers, operators etc.
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

