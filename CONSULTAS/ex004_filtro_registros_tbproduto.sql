/* comando para selecionar o banco de dados sucos. */
USE `sucos`;

/* antes do update. */

/* mostra todos os produtos cujo sabor é limão. */
SELECT * FROM tbProduto WHERE SABOR = 'LIMÃO'; # (1)

/* atualiza-se o nome do sabor. caso seja limão, passa a ser, após a atualização, cítricos. */
UPDATE tbProduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão'; 

/* depois da atualização(update) do sabor. */

/* mostra todos os produtos cujo sabor é limão, porém, espera-se que não hajam produtos com esse sabor, pois acima foi feito um update que modificava
o sabor, alterando-o de limão para cítricos. */
SELECT * FROM tbProduto WHERE SABOR = 'LIMÃO'; # (2)

/* mostra todos os produtos cujo sabor é cítricos. */
SELECT * FROM tbProduto WHERE SABOR = 'CÍTRICOS'; # (3)

/* como o atributo preco_lista é do tipo ponto flutuante(float), não há uma precisão correta sobre o valor, pois ele fica variando. 
Deste modo, ao fazer buscas usando o >, <, <>, =, <=, >=, não se obtém o resultado desejado. Para sanar essa falta, usa-se o comando between,
no qual colocamos os valores em que o valor que queremos pode estar no meio, ou seja, fazemos uma aproximação. */
SELECT * FROM tbProduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009; # (4)

/* pode-se também fazer um filtro para identificar os produtos cujo preço está acima de R$ 17,00. */
SELECT * FROM tbProduto WHERE PRECO_LISTA > 17.00;
