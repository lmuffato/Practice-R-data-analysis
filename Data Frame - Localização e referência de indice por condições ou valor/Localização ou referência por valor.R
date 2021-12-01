#Retorna o indice da linha que contem o valor ou condicao na coluna do Data Frame
#1. Metodo 1
{
match(8, df$a)
}

#1. Metodo 2
{
which(df$a %in% NA)
}

#Data Frame de exemplo
{
a <- c(1,2,3,4,NA,"null",7,8,9,10);
b <- c(10,NA,8,7,6,5,4,3,2,1);
df <- data.frame(a,b)
}

#Contagem de dados atendendo a uma condicao
{
  df[, .(df = sum(coluna=="valor"))]
}

#Reordena a tabela com base no parametro de uma coluna ou mais colunas
{
  setorder(df, ColunaKey1, ColunaKey2)
}

#Informa frequencia, media, mediana, quantidade de ocorrencias
{
summary(dados)
}

#Obter as oposições das linhas de dados que contem um texto ou parte dele
library(stringr)
str_which(df$coluna, "texto ou parte do texto")