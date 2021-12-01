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