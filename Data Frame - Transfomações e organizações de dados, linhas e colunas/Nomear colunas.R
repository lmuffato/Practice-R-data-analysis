#Nomear colunas de acordo com a sequência de lertas do alfameto
colnames(df) <- LETTERS[1:6];df

#Transformas os numeros de caracteres para numeros das colunas 3 a 4
df[3:4] <- as.numeric(df[[3:4]]);df

rename(data)
library(dplyr)
df <- data.frame(x = 1:5, y = c(1,2,NA,4, 5), z = rep(NA, 5))
df
temp <- data.frame(x = 1:5, y = c(1,2,NA,4, 5), z = rep(NA, 5));temp
not_all_na <- function(x) any(!is.na(x))
not_any_na <- function(x) all(!is.na(x))

temp %>% select_if(not_all_na)

temp %>% select_if(not_any_na)

#Quantidade de linhas e colunas
dim(dados)


dados4[4]
as.vector(dados4[4])

j<-c(colSums(is.na(dados)));j
j<-data.frame(c(colSums(is.na(dados))));j
setDT(j);j
filter(j, j == 53)


dados
colSums(is.na(dados))
