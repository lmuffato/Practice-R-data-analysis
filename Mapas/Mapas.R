#instalar pacotes
{
  install_tinytex ()
  install.packages("kableExtra")
  install.packages("dplyr")
  install.packages("rmarkdown")
  install.packages("tinytex")
  install.packages("tidyr")
  install.packages("stringr")
  install.packages("scales")
  install.packages("readr")
  install.packages("data.table")
  install.packages("readxl")
  install.packages("gdata")
  install.packages("MASS")
  install.packages('xlsx')
  install.packages('stringr')
  install.packages('tidyverse')
  install.packages('openxlsx')
  install.packeges('ggplot')
  install.packages("geobr")
  install.packages("DT")
  install.packages("knitr")
  install.packages("formattable")
  install.packages("write.xlsx")
  install.packages("xlsx")
  install.packages("plyr")
  install.packages("readxl")
  install.packages('rgdal')
  install.packages("magrittr")
  install.packages("sparklyr")
  install.packages("rpart.plot")
  install.packages("shiny")
  install.packages("cartography")
  install.packages("sf")
  install.packages("leaflet")
  install.packages("mosaic")
  install.packages("labelled")
  install.packages("haven")
  install.packages("stargazer")
  install.packages("tables")
  install.packages("xtable")
}

#Carregar as bibliotecas

#Biblioteca de manipulacao de dados
library(dplyr);library(tidyr);library(data.table)

#Biblioteca de graficos
library(ggplot2);library(mosaic);library(survival)

#Biblioteca de mapas
library(geobr);library(leaflet);library(cartography)

#Biblioteca de impressao
library(rmarkdown);library(knitr)

#Ler e gravaer arquivos em xls
library(xlsx);library(readxl);

#Trabalhar com dados de texto e caracteres
library(stringr)

#Elaboracao de tabelas
library(stargazer);library(tables)

#Impressao e tabelas pelo Plots
library(knitr);library(kableExtra)
library(formattable);library(devtools)
library(rhandsontable)

{
  library(scales)
  library(readr)
  library(utils)
  library(stringr)
  library(tidyverse)
  library(tinytex)
  library(kableExtra)
  library(DT)
  library(formattable)
  library(plyr)
  library(rgdal)
  library(magrittr)
  library(rpart.plot)
  library(shiny)
  library(sf)
  library(labelled)
  library(haven)
}

#COMANDOS PARA LER O ARQUIVO ...............................


#Ler os dados no computador EM CSV
dados <- read.csv( 
  file = "C:/Users/ADM/Documents/DadosParaAnaliseR/PesquisaMarianaCovid.csv", sep = ';',  dec = ',')

#Ler os dados no computador EM XLSX e especifica a planilha a ser lida pelo nome
dados1 <- read_excel("C:/Users/ADM/Documents/DadosParaAnaliseR/PesquisaMarianaCovid.xlsx", sheet = "x1")

#Ler os dados no computador EM XLSX e especifica planilha a ser lida pela ordem numerica
dados1 <- read_excel("C:/Users/ADM/Documents/DadosParaAnaliseR/PesquisaMarianaCovid.xlsx", sheet = 1)

#Transformar em tabela
setDT(dados);dados

#Ver os dados em tabela
View(dados)

#Quantidade de linhas e colunas
dim(dados)

#Ferramenta mapa do google maps
t <- leaflet() %>%  addTiles() %>%  addMarkers(lng = -42.023977, lat = -20.264486)
t %>% setView(-42.023977, -20.264486, 10, options = list())

#Mapa de municipios de MG
muni<-read_municipality(code_muni = 'MG')
ggplot(muni)
class(muni)
ggplot(muni)+geom_sf()

#Contagem de dados atendendo a uma condicao
dados[, .(x = sum(SEXO=="mulher"))]

#Reordena a tabela com base no parametro de uma coluna ou mais colunas
setorder(dados, SEXO, IDADE);head(dados)

#Informa frequencia, media, mediana, quantidade de ocorrencias
summary(dados)

#Mostra a coluna correspondente eo numero entre conchetes
dados[5]

#Nome do rotulo da coluna
variable.names(dados[1])

#Mostra as varivaveis diferentes em uma coluna
group_by(distinct(dados[2]))

#Qunatidade de vaviaveis distintas
i = nrow(group_by(distinct(dados[2])));i

#Mostra as unidades de todas as variaveis
glimpese(dados)

#mostra os valores nao preenchidos no dataframe
colSums(is.na(dados))

#filtros de dados
dados3 <- dados %>% filter(SEXO == 'mulher' & ESCOLARIDADE == 'superior' & AFETOU == 'sim');dados3

#Quantidade de ocorrencias dos dados em porcentagem
prop.table(table(dados$SEXO, dados$AFETOU))*100

#Quantidade de ocorrencias dos dados
table(dados$SEXO,dados$ESCOLARIDADE)

#Transforma as unidades do dado no tipo fator
dados3 <- as.factor(dados2)

#Tabela nao formatada
kbl(dados3)

#Tabela melhor formatada exportavel pro navegador
dados3 %>%
  kbl() %>%
  kable_styling()

#COMANDOS PARA SALVAR O DATAFRAME EM XLS OU CSV....................

#Salvar dataframe em CSV
write.csv(head(dados), "dadossalvos.csv")

#comando para salvar varias pastas em uma mesma planilha
planilha <- list('dados3' = dados, 'dados2' = dados2)
write.xlsx(planilha, file = "planilhas.xlsx")

#salva o dataframe no excel nomeando por planilha
write.xlsx(dados, file="dados.xlsx", 
           sheetName="dados")

#Filtros de dados com porcentagem
dados %>% 
  filter(SEXO == 'mulher' & ESCOLARIDADE == 'superior' & AFETOU == 'sim') %>% 
  count(SEXO, sort = TRUE) %>% 
  mutate(prop = n / sum(n), prop = scales::percent(prop))

#Contagem de ocorrencias
count(dados[5] !="sim")

head(iris)

#Novo dataframe
novo <- data.frame(A=c(1,1,1),B=c(2,2,2),C=c(3,3,3))

#Cria nova coluna no mesmo dataframe
iris2 <- mutate(iris, nova.coluna = Sepal.Length + Sepal.Width);iris2

#Determina apenas algumas colunas para serem mostradas
iris2[,c("Sepal.Length","Sepal.Width","nova.coluna")]

arrange(iris, iris$Sepal.Length)

#Seleciona a lista de uma coluna
select.list(dados$SEXO)
iris
glimpse(iris)

#Agrupa e mostra a media por valor
iris %>% group_by(Species) %>%
  summarise(mean(Sepal.Length))

#numero de colunas
ncol(dados)

#numero de dados
nrow(dados)


