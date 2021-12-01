#Susbstitui uma determinadas string por outras dentro de um Daframe
{#Biblioteca
library(stringr);
str_replace(df, "[aeiou]", "-")
}
#Data Frame de exemolo
{
  df <- c("one apple", "two pears", "three bananas")
}
