# Grafico de Pontos com descricao da legenda dos eixos
{
  plot(1:10,10:1,pch=1,xlab="eixo x",ylab="eixo y")
}

# Grafico de historigrama
{
  hist(rnorm(1000),col=33)
}

# Grafico de historigrama com seta de indicacao de dados
{
  hist(rnorm(1000),col=33);
  arrows(2,100,2,70,col=2)
}

