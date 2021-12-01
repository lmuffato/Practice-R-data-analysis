#tratar os dados
{
  
{library(data.table);library(dplyr);library(tidyr);
  dadosTemp <- read.csv(file = "C:/Users/ADM/Documents/DadosParaAnaliseR/manhu.csv", sep = ";" ,  dec = ",");
  glimpse(dadosTemp)
}

#Seleciona apenas as colunas de 1 a 4
dados <- (dadosTemp[ ,c(1,2,3,4,8,12,13,19,20,21,22)])

#Converte os dados "null" em NA
dados <- dados %>% replace(.== "null", NA)

#Omitindo dados NA
#dados <- na.omit(dados)

#Transformando em tabela
setDT(dados)

#. 2. Tratamento dos dados: Remocao de colunas e linhas indesejaveis
{#Renomeia todas as colunas de acordo com a lista
  colnames(dados)[1:11] <- c( 'Data',
                              'Hora',
                              'Precipitacao',
                              'Pressao.Atmosferica',
                              'Radiacao',
                              'Temperatura.Max',
                              'Temperatura.Min',
                              'Unidade.do.Relativa.Ar',
                              'Direcao.do.Vento',
                              'Rajada.de.Vento',
                              'Velocidade.do.Vento'
  )
}

#Salvar dataframe em CSV
write.csv2(dados, "C:/Users/ADM/Documents/DadosParaAnaliseR/tempo.csv")

{library(data.table);library(dplyr);library(tidyr);
  dadosTemp <- read.csv(file = "C:/Users/ADM/Documents/DadosParaAnaliseR/tempo.csv", sep = ";" ,  dec = ",");
  glimpse(dadosTemp)
}

}

#Tratamento dos dados2
{
#Eliminando a primeira coluna
dados <- (dadosTemp[ ,c(2:12)])

#Convertendo as datas
dados[ ,1] <- as.Date(dados[ ,1], "%d/%m/%Y")

#Reparando a hora
dados[ ,2] <- dados[ ,2]/100
dados[ ,2] <- as.integer(dados[ ,2])

#Transformar dados em horas
library(lubridate)
dados$Hora <- hours(dados$Hora)
}

#Análise dos dados
glimpse(dados)

#Sumario
summary(dados)

setDT(dados)

dados

#Retorna o id do dado
match(53.8, dados$Precipitacao)

#Maior valor de chuva
(max(dados$Precipitacao))
#Dados do dia
filter(dados, Precipitacao == 53.8)

dados %>% group_by(Data) %>% group_by(day())

na.omit(dados$Radiacao)
dados$Radiacao

#agrupar por

#Ano
dados$ano <- year(dados$Data)

#Mes
dados$mes <- month(dados$Data)

#Dia
 group_by(dados$Data)
#hora

 filter(dados, Data == "2010-09-28")
 

  
dia <- dados %>% group_by(Data) %>% summarize(
                                              Precipitacao.Dia =mean(Precipitacao),
                                              Teperatura.Max =max(Temperatura.Max),
                                              Teperatura.Min =min(Temperatura.Max),
                                              Radiacao.Max =max(Radiacao),
                                              Radiacao.Med =mean(Radiacao),
                                              Umidade.do.Ar.Max =max(Unidade.do.Relativa.Ar),
                                              Umidade.do.Ar.Min =min(Unidade.do.Relativa.Ar),
                                              Rajada.de.Vento.Max =max(Rajada.de.Vento),
                                              Velocidade.do.vento.Max =max(Rajada.de.Vento),
                                              Velocidade.do.vento.Media =mean(Rajada.de.Vento)
                                              );dia

ano <- dados %>% group_by(ano) %>% summarise(Precipitacao.anual = sum(na.omit(Precipitacao)),
                                             Teperatura.Max =max(na.omit(Temperatura.Max)),
                                             Teperatura.Min =min(na.omit(Temperatura.Max)),
                                             Radiacao.Max =max(na.omit(Radiacao)),
                                             Radiacao.Med =mean(na.omit(Radiacao)),
                                             Umidade.do.Ar.Max =max(na.omit(Unidade.do.Relativa.Ar)),
                                             Umidade.do.Ar.Min =min(na.omit(Unidade.do.Relativa.Ar)),
                                             Rajada.de.Vento.Max =max(na.omit(Rajada.de.Vento)),
                                             Velocidade.do.vento.Max =max(na.omit(Rajada.de.Vento)),
                                             Velocidade.do.vento.Media =mean(na.omit(Rajada.de.Vento))
                                             )
ano



{
  dados3 <- dados2 %>% 
    group_by(FAVORECIDO) %>% 
    summarise(TOTAL = sum(VALOR)) %>% 
    arrange(desc(TOTAL)) %>% top_n(15);dados3
}



#Salvar dataframe em CSV
write.csv2(dia, "C:/Users/ADM/Documents/DadosParaAnaliseR/dia.csv")

#Salvar dataframe em CSV
write.csv2(ano, "C:/Users/ADM/Documents/DadosParaAnaliseR/ano.csv")

dia$Temperatura.Max <- dados %>% group_by(Data) %>% summarize(Tepmax =max(Temperatura.Max));dia
write.csv2(Max, "C:/Users/ADM/Documents/DadosParaAnaliseR/max.csv")

head(dados)

#Media diaria
dia <- dados %>% group_by(Data)
diamedia <- dia %>% summarise_all(mean)
