
#Ler planilha em csv2020
{
  #Ler os dados no computador EM CSV
  library(dplyr);library(tidyr);library(data.table);
  dados <- read.csv(file = "C:/Users/ADM/Documents/DadosParaAnaliseR/diarias2020.csv", sep = ';',  dec = ',');
  dadosTemp <- dados;dadosTemp;glimpse(dadosTemp)
  #formatar valores monetarios R$ 1.000,000 em numeriros 1,000
  {
    library(stringr)
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[.]", "");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[,]", ".");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[R$ ]", "");
    dadosTemp$Valor <- as.numeric(dadosTemp$Valor);
    dadosTemp$Data <- as.Date(dadosTemp$Data, "%d/%m/%Y");glimpse(dadosTemp);
    dados1<-dadosTemp
  }
}

#Ler planilha em csv2019
{
  #Ler os dados no computador EM CSV
  library(dplyr);library(tidyr);library(data.table);
  dados <- read.csv(file = "C:/Users/ADM/Documents/DadosParaAnaliseR/diarias2019.csv", sep = ';',  dec = ',');
  dadosTemp <- dados;dadosTemp;glimpse(dadosTemp)
  #formatar valores monetarios R$ 1.000,000 em numeriros 1,000
  
  {
    library(stringr)
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[.]", "");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[,]", ".");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[R$ ]", "");
    dadosTemp$Valor <- as.numeric(dadosTemp$Valor);
    dadosTemp$Data <- as.Date(dadosTemp$Data, "%d/%m/%Y");glimpse(dadosTemp);
    dados2<-dadosTemp;glimpse(dados2)
  }
}

#Ler planilha em csv2018
{
  #Ler os dados no computador EM CSV
  library(dplyr);library(tidyr);library(data.table);
  dados <- read.csv(file = "C:/Users/ADM/Documents/DadosParaAnaliseR/diarias2018.csv", sep = ';',  dec = ',');
  dadosTemp <- dados;dadosTemp;glimpse(dadosTemp)
  #formatar valores monetarios R$ 1.000,000 em numeriros 1,000
  {
    library(stringr)
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[.]", "");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[,]", ".");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[R$ ]", "");
    dadosTemp$Valor <- as.numeric(dadosTemp$Valor);
    dadosTemp$Data <- as.Date(dadosTemp$Data, "%d/%m/%Y");glimpse(dadosTemp);
    dados3<-dadosTemp
  }


#Ler planilha em csv2017
{
  #Ler os dados no computador EM CSV
  library(dplyr);library(tidyr);library(data.table);
  dados <- read.csv(file = "C:/Users/ADM/Documents/DadosParaAnaliseR/diarias2017.csv", sep = ';',  dec = ',');
  dadosTemp <- dados;dadosTemp;glimpse(dadosTemp)
  #formatar valores monetarios R$ 1.000,000 em numeriros 1,000
  {
    library(stringr)
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[.]", "");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[,]", ".");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[R$ ]", "");
    dadosTemp$Valor <- as.numeric(dadosTemp$Valor);
    dadosTemp$Data <- as.Date(dadosTemp$Data, "%d/%m/%Y");glimpse(dadosTemp);
    dados4<-dadosTemp
  }
}

#Combinar varios dataframe (de mesmo layout) em um unico
{
  library(data.table)
  consolidado<-rbind(dados1, dados2, dados3, dados4)
}

#Colunas de interesse
consolidado[ ,c(2,6,8)]

ncol(dados1)
dados4
ncol(dados2)
ncol(dados3)
ncol(dados4)

}

#Ler planilha em csv2017
{
  #Ler os dados no computador EM CSV
  library(dplyr);library(tidyr);library(data.table);
  dados <- read.csv(file = "C:/Users/ADM/Documents/DadosParaAnaliseR/diarias2017.csv", sep = ';',  dec = ',');
  dadosTemp <- dados;dadosTemp;glimpse(dadosTemp)
  #formatar valores monetarios R$ 1.000,000 em numeriros 1,000
  {
    library(stringr)
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[.]", "");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[,]", ".");
    dadosTemp$Valor <- str_replace_all(dadosTemp$Valor, "[R$ ]", "");
    dadosTemp$Valor <- as.numeric(dadosTemp$Valor);
    dadosTemp$Data <- as.Date(dadosTemp$Data, "%d/%m/%Y");glimpse(dadosTemp);
    dados4<-dadosTemp
  }
}  

#Combinar varios dataframe (de mesmo layout) em um unico
{
    library(data.table)
    consolidado<-rbind(dados1, dados2, dados3, dados4)
  }

#Informa o numero de colunas e linhas
paste("Numero de linhas:", nrow(consolidado),"/ Numero de colunas:", ncol(consolidado))

#Colunas de interesse
consolidado[ ,c(2,6,8)]

#Agrupar e somar o valor total de cada categoria
{
  resultado <- consolidado %>%  group_by(Favorecido) %>%
  summarise(Valor = sum(Valor)) %>%
  arrange(desc(Valor)) %>%
  top_n(15);resultado
}

#Salvar varios dataframe em uma mesma planilha
{library(xlsx);library(readxl);
  planilha <- list('Diarias' = resultado, 'Consolidado' = consolidado);
  write.xlsx(planilha, file = "C:/Users/ADM/Documents/DadosParaAnaliseR/tabela.xlsx")
}

#Verificação do numero de linhas
nrow(dados1)
nrow(dados2)
nrow(dados3)
nrow(dados4)
nrow(consolidado)