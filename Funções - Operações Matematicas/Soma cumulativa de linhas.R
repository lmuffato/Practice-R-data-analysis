#Soma cumulativa das linhas de uma coluna
dfDate2$soma <- cumsum(dfDate2$Quantidade);dfDate2
            
#Porcentagem da soma acumulativa 
dfDate2$percent <- (dfDate2$soma)/(sum(dfDate2$Quantidade));dfDate2
            