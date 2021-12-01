#Renomeia todas as colunas de acordo com as colunas informadas e a lisda com os nomes
{
  colnames(df)[1:11] <- c('Cod.Item',
                             'Cod.IOPES',
                             'Cod.DER.ES',
                             'Cod.Composicao',
                             'Descricao',
                             'Unidade',
                             'Quantidade',
                             'Valor.Unitario',
                             'Aditivo.Quantidade.Acrescida',
                             'Aditivo.Quantidade.Decrescida',
                             'Aditivo.Valor.Unitario'
  );glimpse(df)
}  