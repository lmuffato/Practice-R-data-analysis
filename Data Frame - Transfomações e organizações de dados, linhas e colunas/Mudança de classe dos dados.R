#Transformas os numeros de caracteres para numeros das colunas 3 a 4
df[3:4] <- as.numeric(df[[3:4]])

#Transformas os numeros no formato de caracteres para numeros no formato double
df[,c(7:11)] <- as.numeric(unlist(df[,c(7:11)]))