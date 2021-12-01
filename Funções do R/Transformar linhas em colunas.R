library(dplyr);library(tidyr);library(data.table)

#Le o datataframe, agrupa por tipo, e coloca em ordem pela media
iris %>% group_by(Species) %>% summarise(mean(Sepal.Length))

#Transformar linhas em colunas
dfDate <- data.frame(Produto = c('A','B','C'),
                     A.2015 = c(10,12,20),
                     A.2016 = c(20,25,35),
                     A.2017 = c(15,20,30)
                    );dfDate

#Mudar colunas para linhas
dfDate2 <- gather(dfDate, "Ano", "Quantidade", 2:4);dfDate2

#Soma cumulativa das linhas de uma coluna
dfDate2$soma <- cumsum(dfDate2$Quantidade);dfDate2

#Porcentagem da soma acumulativa 
dfDate2$percent <- (dfDate2$soma)/(sum(dfDate2$Quantidade));dfDate2

dfDate3 <- dfDate2 %>% arrange(desc(percent));dfDate3

dfDate3 <- dfDate2 %>% arrange(desc(soma));dfDate3

#Carregar dados
{dados <- read.csv( 
file = "C:/Users/ADM/Documents/DadosParaAnaliseR/ViagensCursoR.csv", sep = ';',  dec = ',');head(dados)
}

#Agrupar e somar os orgaos que mais gastam no governo
p1 <- dados %>%
        group_by(Nome.do.órgão.superior) %>%
          summarise(n = sum(Valor.passagens)) %>%
            arrange(desc(n)) %>%
              top_n(15);p1

#Agrupar e somar os orgaos que menos gastam no governo
p2 <- dados %>%
  group_by(Nome.do.órgão.superior) %>%
  summarise(n = sum(Valor.passagens)) %>%
  arrange(n) %>%
  top_n(15);p2

#Nova coluna com persentagem de ocorrencia dos dados
p1$parti <- ((p1[2]/sum(p1[2])));p1

dfDate <- ( -row(dfDate[2,])
dfDate

            