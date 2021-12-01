#Ler os dados no computador EM XLSX e especifica a planilha a ser lida pelo nome
{
  # O campo sheet especifica qual o nome da planilha da pasta de trabalho deve ser lida
library(xlsx);library(readxl)
dados1 <- read_excel("C:/Users/ADM/Documents/DadosParaAnaliseR/PesquisaMarianaCovid.xlsx", sheet = "x1")
}

#Ler os dados no computador EM XLSX e especifica planilha a ser lida pela ordem numerica
{
library(xlsx);library(readxl);
# O campo sheet especifica qual o numero sequencial da planilha da pasta de trabalho deve ser lida
dados1 <- read_excel("C:/Users/ADM/Documents/DadosParaAnaliseR/PesquisaMarianaCovid.xlsx", sheet = 1)
}           