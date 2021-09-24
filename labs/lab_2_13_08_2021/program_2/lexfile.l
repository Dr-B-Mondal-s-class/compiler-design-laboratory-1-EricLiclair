%{
// WAP to recognize whether string contain only english letters or not.
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

