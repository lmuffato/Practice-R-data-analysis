#Dataframe de exemplo 1 com letras, numeros e letras maisculas
{
  df <-data.frame( A=c(1:10), B=c(letters[1:10]), C=c(LETTERS[1:10]));df
}

#Data frame
{
  Nome <- c("Laetia","Vouacapoua","Lecythis","Pourouma","Poraqueiba","Pseudopiptadenia", "Abarema");
  I1 <- c(1,3,3,2,3,3,3);I2 <- c(1,3,1,3,3,3,3);I3 <- c(1,3,1,3,2,3,3);I4 <- c(1,3,2,2,3,3,3);
  df <- data.frame(Nome,I1,I2,I3,I4);df
}

df[apply(df[,2:ncol(df)] != 3, 1, any),]


#Dataframe de exemplo com dados NA
{
  df <- data.frame(x = 1:5, y = c(1,2,NA,4, 5), z = rep(NA, 5));df
}

#Dataframe de exemplo com o segundo dado NA
df <-data.frame( A=c(1:10), B=c(letters[1:10]), C=c(LETTERS[1:10]));df[2,1]=NA;df

#Dataframe de exemplo com o segundo dado especifico
df <-data.frame( A=c(1:10), B=c(letters[1:10]), C=c(LETTERS[1:10]));df[2,2]="descricao";df

#Dataframe de exemplo com o penultimo dado especifico
df <-data.frame( A=c(1:10), B=c(letters[1:10]), C=c(LETTERS[1:10]));df[9,1]=NA;df


df
#Ocula apenas as colunas em que todas as suas linhas contem valor NA
{
  #Cria a funcao
  Not_All_NA <- function(x) all(!is.na(x));
  #Aplica a funcao no Data Frame
  df %>% select_if(Not_All_NA);
}
