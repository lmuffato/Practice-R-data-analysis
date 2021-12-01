#Carregar dados em csv sendo necessario especificar os separadores das colunas e decimal
{
#As colunas sao separadas por ";" (ponto e virgua) e o caractere decimal como "," (virgua)
dadosTemp <- read.csv( 
file = "C:/Users/ADM/Documents/DadosParaAnaliseR/ViagensCursoR.csv", sep = ';',  dec = ',');glimpse(dadosTemp)
}

#Carregar dados em csv (separado por virguas) - Sem necessidade de especificar os separadores
{
#As colunas sao separadas por ";" (ponto e virgua) e o caractere decimal como "," (virgua)
dadosTemp <- read.csv2( 
file = "C:/Users/ADM/Documents/DadosParaAnaliseR/ViagensCursoR.csv");glimpse(dadosTemp)
}