#Novo dataframe
{
#(nome da coluna = c(dados da coluna))
data.frame(A=c(1,1,1),B=c(2,2,2),C=c(3,3,3))
}

#Criar matriz indicando os dados a serem preenchidos:
{
# Com os dados iniciando de 1 a 100
# 20 linhas
# 5 colunas
matrix(1:3,nrow=3, ncol=3)
}

#Criar matriz sem indicar dados (automaticamente soa preenchidos com NA):
{
matrix(nrow=3,ncol=3)
}

#Cria uma lista com 10 itens, copiando o valor indicado
{
df=rep(NA,10)
}

#Array cria um numero desejado de indices
{
#O primeiro array determina a repeticao dos conteudos
#O segundo array determina o numero de linhas e colunas onde correra a repeticao
array(letters[1:5],array(4:3))
}

#Cria letras minusculas, podendo iniciar de 1 até 26
{
#OBS.: Valores maiores que 26 serao preenchidos com o NA
letters[1:26]
}

#Cria letras Mauisculas, podendo iniciar de 1 até 26
{
  #OBS.: Valores maiores que 26 serao preenchidos com o NA
  LETTERS[1:26]
}
