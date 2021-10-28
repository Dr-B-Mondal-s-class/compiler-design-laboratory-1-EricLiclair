%{
// macros
%}
username [a-zA-Z0-9]{6,64}
domainName [a-zA-Z0-9]{1,253}
domain "com"|"in"|"org"|"ac.in"|"co.in"
email ({username}\@{domainName}\.{domain})

%%
{email} {printf("Valid email id.\n");}
.* {printf("Invalid email id.\n");}
%%

int main() {
    yylex();
}

int yywrap(void) {
    return 0;
}
