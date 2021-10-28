
%{
 // macros of C
%}
country_code "+91 "
phone_number [1-9][0-9]{9}
%%

{country_code}{phone_number} {printf("Valid Mobile Number");};
.+ {printf("Invalid Mobile Number");};
%%
int main()
{
    printf("Enter mobile number");
    yylex();
       
}

int yywrap(void){
    return 0;
}
