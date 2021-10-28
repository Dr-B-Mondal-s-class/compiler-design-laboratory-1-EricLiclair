%{
int tab=0,other=0,newLine=1,ws=0;
%}
digit [0-9]
%%
\n {newLine++;};
\t tab++;
[ ] ws++;
. other++;
%%

int main () {
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex ();
    fprintf(yyout,"Total Characters detected : %d\n No. of tabs : %d\n No. of Lines: %d \n No. of white spaces: %d \n Other Characters: %d\n",tab+ws+newLine+other,tab,newLine,ws,other);
}

int yywrap(){return 1;}

