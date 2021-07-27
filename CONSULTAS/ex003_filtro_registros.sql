/*                                                                     FAZENDO FILTROS EM TBCLIENTE                                                                               */

/* pode-se usar `sucos` ou sucos. utiliza-se `sucos` geralmente quando se quer colocar algo, como espaços, entre as palavras. */
USE `sucos`;

/* selecionam-se todos os registros da tabela, mas apenas as colunas CPF e NOME desses registros. */
SELECT CPF, NOME FROM tbCliente; # (1)

/* selecionam-se os sete primeiros registros da tabela tbcliente. renomeia-se os atributos cpf e nome com o uso do comando AS(ALIAS), o qual cria um nome fantasia. */
SELECT CPF AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbCliente LIMIT 7; # (2)

