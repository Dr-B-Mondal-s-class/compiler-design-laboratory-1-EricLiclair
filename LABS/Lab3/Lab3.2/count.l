%{
    int vow_count=0;
    int const_count=0;
    int white_space=0;
    int digit=0;
%}
  
%%
[aeiouAEIOU] {vow_count++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {const_count++;}
[0-9] {digit++;}
[ ]  {white_space++;} 
\n {printf("Number of vowels are:  %d\n", vow_count);
    printf("Number of consonants are:  %d\n", const_count);
    printf("Number of digits are:  %d\n", digit);
    printf("Number of white spaces are:  %d\n", white_space);  
	vow_count=0,const_count=0,white_space=0,digit=0;};
%%
int yywrap(){}
int main()
{
    yylex();
    
    return 0;
} 
