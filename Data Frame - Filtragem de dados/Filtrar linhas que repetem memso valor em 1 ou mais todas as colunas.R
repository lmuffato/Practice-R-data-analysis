#Exclui as linhas em que ocorre a repetição dos dados
{
#1. A contagem das colunas inicia na coluna 2
#2. O Numero especificado e 3
df[apply(x[,2:ncol(x)] != 3, 1, any),]
}
  
#Data frame de exemplo
{
  df <- c("Laetia","Vouacapoua","Lecythis","Pourouma","Poraqueiba","Pseudopiptadenia", "Abarema");
  I1 <- c(1,3,3,2,3,3,3);
  I2 <- c(1,3,1,3,3,3,3);
  I3 <- c(1,3,1,3,2,3,3);
  I4 <- c(1,3,2,2,3,3,3);
  df <- data.frame(df,I1,I2,I3,I4);
  df
}

df <- c(NA, "NA", 2)
Achar <-function(df,n, x){match(x, df[ ,n])}
Achar(df,2,x)
