#Classificacao dos itens da curva ABC
#Baseado no valor da coluna "PERCENTUALACUMULADO", a funcao atribui uma letra na coluna seguinte na mesma linha
{j=1;while (j < nrow(x)){
  (if (x$PERCENTUALACUMULADO[j]>0 && x$PERCENTUALACUMULADO[j]<=55){x$CURVAABC[j] = "A"} 
   else if (x$PERCENTUALACUMULADO[j]>55 && x$PERCENTUALACUMULADO[j]<=80){x$CURVAABC[j] = "B"} 
   else if (x$PERCENTUALACUMULADO[j]>80 && x$PERCENTUALACUMULADO[j]<=100){x$CURVAABC[j] = "C"});j = j + 1}
}
