library(xlsx);library(readxl)
planilha <- list('df' = df, 'df2' = df2)
write.xlsx(planilha, file = "C:/Users/ADM/Documents/DadosParaAnaliseR/tabela.xlsx")


dt_a <- data.frame(a = c(1,2,3), b = c("c","a","b"));setDT(dt_a);dt_a
dt_b <- data.frame(x = c(3,2,1), y = c("b","c","a"));setDT(dt_b);dt_b

library(dplyr);library(tidyr);library(data.table)
dt_a[dt_b, on = .(b = y)]

dt_a <- data.frame(a = c(1,2,3), b = c("c","a","b"), c = c(7,5,6));setDT(dt_a);dt_a
dt_b <- data.frame(x = c(3,2,1,5), y = c("b","c","a","w"), z = c(4,5,8,10));setDT(dt_b);dt_b
#b = y -> As colunas com valores em comum. o b recebe o y
dt_a[dt_b, on = .(b = y)]


df1 <- data.frame(a = c(1,2,3), b = c("c","a","b"), c = c(7,5,6));setDT(dt_a);dt_a
df2 <- data.frame(x = c(3,2,1,5), y = c("b","c","a","w"), z = c(4,5,8,10));setDT(dt_b);dt_b
#Une 2 datafrmes com valores comuns em linhas, podendeo ter linhas em numeros diferentes
#b = y -> As colunas com valores em comum
#c = z -> 
df1[df2, on = .(b = y, c > z)]

#filtros de dados com porcentagem
filter(df[ ,1] == df2[ ,1])

library(dplyr);library(tidyr);library(data.table);

#filtros de dados com porcentagem
dados %>% 
  filter(SEXO == 'mulher' & ESCOLARIDADE == 'superior' & AFETOU == 'sim') %>% 
  count(SEXO, sort = TRUE) %>% 
  mutate(prop = n / sum(n), prop = scales::percent(prop))






