%{
// WAP to recognize basic operators (`PLUS(+), MINUS(-), GE(>=), LE(<=)`).
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

