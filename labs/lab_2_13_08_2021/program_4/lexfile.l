%{
// WAP to recognize whether string contain only uppercase,lowercase or both letters.
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

