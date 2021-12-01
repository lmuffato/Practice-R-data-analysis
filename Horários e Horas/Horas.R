
#Data frame
{library(stringi);library(dplyr);library(tidyr);library(data.table);
df <- data.frame(Data = c("20/01/1990","30/01/1990","30/01/1990","08/02/1986","28/05/1986","17/05/1966","25/12/1962","07/07/1988"), 
                 Hora = c(1,2,2,12,11,7,16,23),
                 Horario = c("01:20","02:14","02:17","12:20","11:15","07:42","16:12","23:42"),
                 Nome = c("Keke","Lucas","Neo","Tiago","Mariana","Maria","Luiz","Marcel"),
                 Renda = c("2000","5000","1200","2000","2500","1500","2050","3000"),
                 Idade = c("30","30","30","34","34","54","57","32"),
                 Numero = c("1","2","3","4","5","6","7","8"),
                 Sexo = c("Mulher","Homem","Mulher","Homem","Mulher","Mulher","Homem","Homem")
                );glimpse(df);head(df)
}                     
#Transformar dados de horas no formato string para horas em periodo
#OBS: A data é obrigatoria, e o R assume a data atual caso n especificada
df$Horario <- as.POSIXct(df$Horario,format="%H:%M");df$Horario
df$Horario <- hms::as.hms(df$Horario);

df$Hora <- as.POSIXct(df$Hora,format= "%H:%M");df$Hora
df$Hora <- hours(df$Hora)
glimpse(df)

#Analise
df$Data <- as.Date(df$Data, "%d/%m/%Y");
df$Renda <- as.double(df$Renda);
df$Idade <- as.integer(df$Idade);
df$Numero <- as.integer(df$Numero);
df$Sexo <- as.factor(df$Sexo);
glimpse(df)

#Nome da coluna pelo indice
(colnames(df)[8])

#Indice da coluna pelo nome 1
which( colnames(df)=="Sexo" )
#Indice da coluna pelo nome 1
grep("Renda", colnames(df))

#ignora valores nulos
mean(vetor, na.rm = T)

#Converte os dados "null" em NA
dadosTemp <- dadosTemp %>% replace(.== "null", NA)
