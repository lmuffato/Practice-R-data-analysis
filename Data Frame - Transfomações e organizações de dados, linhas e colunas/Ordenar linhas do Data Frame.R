#Biblioteca de manipulacao de dados
library(dplyr);library(tidyr);library(data.table)

#Contagem de dados atendendo a uma condicao
{
  df[, .(df = sum(coluna=="valor"))]
}

#Reordena a tabela com base no parametro de uma coluna ou mais colunas
{
  setorder(df, ColunaKey1, ColunaKey2)
}

#Exibe os nomes das colunas do Data Frame
dimnames(df)

#Reverte a ordem dos elementos
rev(df$Coluna)

#Ordena em ordem crescente
sort(df$Coluna)

#ordena em ordem decrescente
rev(sort(df$coluna))

#Retorna erro em caso de valore omissos
na.fail(df)
