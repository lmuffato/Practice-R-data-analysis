#Exibe as linhas ocultando os dados duplicados
{
#Dataframe de exemplo
data <- data.frame(Data = c("2012-05-17","2011-08-31","2012-09-06","2015-09-06"), Taxa = c("A","B","C","B"))
#Exibe as linhas ocultando os dados duplicados
data[!duplicated(data$Taxa),]
}

