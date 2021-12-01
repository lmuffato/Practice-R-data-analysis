#Mostra apenas as linhas Data Frame em que não há dados ausentes, NA, NULL ou NAN  
{
df[complete.cases(df),]
}

#Omite as linhas que possuem alguma coluna com valor ausente, NA, NULL ou NAM
{
na.omit(df)
}

#Filtros apenas os dados de uma coluna especifica que não possuem dados ausentes, NA, NULL, null ou NAM
{
filter(df$coluna != NA)
}

#Filtros apenas os dados de uma coluna especifica que não possuem dados ausentes, NA, NULL, null ou NAM
#OBS.: Nos casos que os dados ausnetes estao em formatos de string
{
filter(df$coluna == "NA")
}

#Substitui os determinados dados de string (nesse caso, os dados contendo "null") por "NA".
{
str_replace(dadosTemp, "null", "NA")
}

#Determina em todo o Data Frame que todos os valores ou strings especificados por NA
{
na_if(df, "null")
}

#Quandidade de valores ausentes por culuna
{
colSums(is.na(df))
}

#Quandidade de valores ausentes por culuna
{
na.omit(df)
}

#Identifica as celulas com valores vazios e retorna TRUE
{
is.na(df)
}

#Oculta apenas as colunas quem que pelo menos uma das linhas possum um valor NA
{
  #Cria a funcao
  Not_All_NA <- function(x) any(!is.na(x));
  #Aplica a funcao no Data Frame
  df %>% select_if(Not_Any_NA);
}

#Ocula apenas as colunas em que todas as suas linhas contem valor NA
{
  #Cria a funcao
  Not_All_NA <- function(x) all(!is.na(x));
  #Aplica a funcao no Data Frame
  df %>% select_if(Not_All_NA);
}

#Primeira ocorrência do dado
{
  match("NA", df[,1])
}

#Cria funcao para filtrar linhas baseadas no numeo de NA contido nelas
Filtrar.NA.Linhas <-function(df, n){filter(df, (rowSums(is.na(df)))<n , (rowSums(is.na(df)))>=0)}
#O numero depois do dataframe define a quantidade de NA em linhas permitido
Filtrar.NA.Linhas(df, 4)