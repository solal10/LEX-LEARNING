%{
#include <stdio.h>
#include <stdbool.h>
int seen[5] = {0};
int i;
%}

%option noyywrap

%%
[1-5]       { seen[yytext[0] - '1'] +=1; 
/*for(i=0;i<5;i++){
printf("%d",seen[i]);}
printf("\n");*/}
\n {if(seen[yytext[yyleng-2]-'0'-1]==1) {printf("yes");}else{printf("no");} for(i=0;i<5;i++){seen[i]=0;} for(i=0;i<5;i++){ seen[i]=0;}printf("\n");}
%%

int main()
{
    yylex();
    return 0;
}

