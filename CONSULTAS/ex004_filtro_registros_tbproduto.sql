USE `sucos`;

/* atualiza-se o nome do sabor. caso seja limão, passa a ser, após a atualização, cítricos. */
UPDATE tbProduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';

