library(dplyr);library(tidyr);library(data.table)

#Soma cumulativa das linhas de uma coluna
dfDate2$soma <- cumsum(dfDate2$Quantidade);dfDate2

#Porcentagem da soma acumulativa 
dfDate2$percent <- (dfDate2$soma)/(sum(dfDate2$Quantidade));dfDate2

dfDate3 <- dfDate2 %>% arrange(desc(percent));dfDate3

#Contagem de ocorrencias
count(dados[5] !="sim")