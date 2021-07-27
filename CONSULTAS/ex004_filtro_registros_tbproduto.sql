USE `sucos`;

/* atualiza-se o nome do sabor. caso seja limão, passa a ser, após a atualização, cítricos. */
UPDATE tbProduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';

/* como o atributo preco_lista é do tipo ponto flutuante(float), não há uma precisão correta sobre o valor, pois ele fica variando. 
Deste modo, ao fazer buscas usando o >, <, <>, =, <=, >=, não se obtém o resultado desejado. Para sanar essa falta, usa-se o comando between,
no qual colocamos os valores em que o valor que queremos pode estar no meio. */
SELECT * FROM tbProduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;
