digit ([0-9])
integer ({digit}+)
newline [\n\r]
keywords (int|float|byte|bool|func|return|if|else|elif)
delimiter [,()\[\]{}]

%%
{integer} {
  printf("int: %s\n", yytext);
}

{delimiter} {
  printf("de: %s\n", yytext);
}

{keywords} {
  printf("keywords: %s\n", yytext);
}

%%

int main() {
  yylex();
  return 0;
}
