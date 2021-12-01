#Tabela nao formatada
{
kbl(df)
}

#Tabela melhor formatada exportavel pro navegador
{
df %>%
kbl() %>%
kable_styling()
}