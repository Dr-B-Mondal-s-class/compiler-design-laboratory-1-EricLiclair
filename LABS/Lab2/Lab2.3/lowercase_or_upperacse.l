%{
//macros of c programs
%}

lowercase [a-z]
uppercase [A-Z]

%%

{lowercase}+ {printf("contains only lowercase");};
{uppercase}+ {printf("contains only uppercase");};
.+ {printf("This does not contain letters");};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}
