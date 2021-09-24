%{
// WAP to determine input operators whether arithmetic or logical.
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

