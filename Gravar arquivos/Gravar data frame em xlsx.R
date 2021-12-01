#salva o data frame no excel em uma planilha do Excel
{
#Carrega as bibliotecas necessarias
library(xlsx);library(readxl);
#Salva os dataframes contidos na lista na planilha
write.xlsx(dados, file="C:/Users/ADM/Documents/DadosParaAnaliseR/tabela.xlsx", sheetName="dados")
}

#Sava diferentes data frames em varias planilhas dentro de uma pesma pasta do Excel
{
#Carrega as bibliotecas necessarias
library(xlsx);library(readxl);
#Cria a lista com os dataframes e seus respectivos nomes da planilhas em que serao salvos na pasta de trabalho
planilhas <- list('Planilha1' = dados, 'Planilha1' = dados2);
#Salva os dataframes contidos na lista na planilha
write.xlsx(planilhas, file = "C:/Users/ADM/Documents/DadosParaAnaliseR/tabela.xlsx")
}