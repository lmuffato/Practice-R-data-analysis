#Contagem de dados atendendo a uma condicao
dados[, .(x = sum(SEXO=="mulher"))]

#Reordena a tabela com base no parametro de uma coluna ou mais colunas
setorder(dados, SEXO, IDADE);head(dados)

#Informa frequencia, media, mediana, quantidade de ocorrencias
summary(dados)

#Nome do rotulo da coluna
variable.names(dados[1])

#Mostra as varivaveis diferentes em uma coluna
group_by(distinct(dados[2]))

#Qunatidade de vaviaveis distintas
i = nrow(group_by(distinct(dados[2])));i

#mostra os valores nao preenchidos no dataframe
colSums(is.na(dados))

#Quantidade de ocorrencias dos dados em porcentagem
prop.table(table(dados$SEXO, dados$AFETOU))*100

#Quantidade de ocorrencias dos dados
table(dados$SEXO,dados$ESCOLARIDADE)

#Contagem de ocorrencias
count(dados[5] !="sim")

#Cria nova coluna no mesmo dataframe
iris2 <- mutate(iris, nova.coluna = Sepal.Length + Sepal.Width);iris2
