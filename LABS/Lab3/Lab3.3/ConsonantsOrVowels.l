%{
//macros of c programs
%}

vowel [aeiouAEIOU]
consonants [BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz]

%%

{vowel}+ {printf(" contains vowels");};
{consonants}+ {printf(" contains consonants");};
.+ {printf("This does not contain letters");};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}
