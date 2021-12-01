library(dplyr);library(tidyr);library(data.table)

#Le o datataframe, agrupa por tipo, e coloca em ordem pela media
{
iris %>% group_by(Species) %>% summarise(mean(Sepal.Length))
}

#Agrupa por nome, soma as linhas do mesmo grupo e organiza em sumario
{
df %>%
group_by(ColunaComNomes) %>%
#Faz um sumario com os valores da nova coluna baseados na soma dos valores do grupo
summarise(NovaColuna = sum(ValorDaColunaDosNomes)) %>%
#Organiza a nova coluna dos valores somados e agregados
# OBS a funacao "desc()" coloa os valores em ordem decrescente
arrange(desc(NovaColuna)) %>%
#Exime os 15 primeiros numeros da nova coluna
top_n(15)
}

#Agrupa e mostra a media por valor
{
  iris %>% 
    group_by(Species) %>%
    summarise(mean(Sepal.Length))
}