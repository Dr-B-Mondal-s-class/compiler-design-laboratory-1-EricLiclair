%{
// WAP to recognize whether string contain only english letters, only digits, or both.
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

