%%
[a-z] printf("char  %c",yytext[0]-32);
[A-Z] printf("char %c",yytext[0]+32);
([A-z][a-z]*|[a-z]*) printf("word %s %d",yytext,yyleng);
-[0-9]*[.][0-9]* printf("negative float");
([0-9]*[.][0-9]*|[+][0-9]*[.][0-9]*) printf("positive float");
-[0-9]* printf("negative integer");
([0-9]*|[+][0-9]*) printf("positive integer");
[-]([0-9]*|[0-9]*[.][0-9*])([e]|[E])([+]|[-])[0-9]* printf("negative expo");
([0-9]*|[0-9]*[.][0-9*])([e]|[E])([+]|[-])[0-9]* printf("positive expo");
[A-Za-z0-9]* printf("string");
%%
