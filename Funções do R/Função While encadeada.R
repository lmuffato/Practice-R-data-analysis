{
  df <-data.frame( A=c(1:10), B=c(letters[1:10]), C=c(LETTERS[1:10]));df
}

#Cria um dataframe com numero de linhas variavel contendo numeros e letras
x=10;df <- data.frame(x = 1:x, y = letters[1:x]);df

#letras variando de a-z (1 a 26)
letters[1:26]
#letras variando de A-Z (1 a 26)
LETTERS[1:26]

#Cria uma lista com letras variando de A-Z (1 a 26)
x <-c(LETTERS[1:26])

#conta os valores com os dados
dados2 <- data.frame(x,y);dados2

#Criar matrix
a=matrix(1:0,nrow=10,ncol=3);a

#Enquantoi<-1;j<-1;while (i < 3){i <- i + 1;j <- j + 1};
{i<-1;j<-1;while (i < 3){i <- i + 1;j <- c(5,3,5)}};

#imprimir o valor de j de i = 1 até i = 10
j=0;for (i in 1:10){j<-i+1; print(j)}



#Enquantoi<-1;j<-1;while (i < 3){i <- i + 1;j <- j + 1};
{i<-1;j<-1;while (i < 3){i <- i + 1;j <- c(5,3,5)}};

#Cria matrix com linhas iguais ao valor de i e colunas iguais ao valor de j
h=matrix(nrow=i, ncol=j);print(h)

j=0;while (j <= nrow(df)){df[ j,4]=j;j <- j + 1}

df2 <-data.frame( A=c(10,20,30,40,50,60,70,80,90,100), B=c(letters[1:10]));df2

{
j=1;while (j <= nrow(df2)){(if (df2[j,1]<=50){print("A")} else if ((df2[j,1]<80)){print("B")} else if (df2[j,1]>80){print("B")});j = j + 1}
}
df2


{
  j=1;while (j <= nrow(df2)){(if (df2[j,1]<=50){print("A")} else if (df2[j,1]>50 && df2[j,1]<80){print("B")} else if (df2[j,1]>=80){print("C")});j = j + 1}
}

#Classificacao dos itens da curva ABC
{
  j=1;while (j <= nrow(df2)){(if (df2[j,1]<=50){print("A")} else if (df2[j,1]>50 && df2[j,1]<80){print("B")} else if (df2[j,1]>=80){print("C")});j = j + 1}
}

