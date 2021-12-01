#Salvar dados em CSV compativel com Excel
{
#Separadores decimais por "virgula" e separadores das colunas por "ponto e virgula"
write.csv2(dados, "C:/Users/ADM/Documents/DadosParaAnaliseR/dados.csv")
}

#Salvar dataframe em CSV com os mesmos separadores de coluna e decimais usados no padrao do R
{
write.csv(head(dados), "C:/Users/ADM/Documents/DadosParaAnaliseR/tabela.csv")
}
