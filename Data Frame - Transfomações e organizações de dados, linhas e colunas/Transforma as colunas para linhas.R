#Mudar colunas para linhas
{
df <- gather(dfDate, "Ano", "Quantidade", 2:4)
}