/*                                                                     FAZENDO FILTROS EM TBCLIENTE                                                                               */

/* pode-se usar `sucos` ou sucos. utiliza-se `sucos` geralmente quando se quer colocar algo, como espaços, entre as palavras. */
USE `sucos`;

/* selecionam-se todos os registros da tabela, mas apenas as colunas CPF e NOME desses registros. */
SELECT CPF, NOME FROM tbCliente; # (1)

/* selecionam-se os sete primeiros registros da tabela tbcliente. renomeia-se os atributos cpf e nome com o uso do comando AS(ALIAS), o qual cria um nome fantasia. */
SELECT CPF AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbCliente LIMIT 7; # (2)

/* aplica-se o filtro em que serão exibidos apenas os registros que tem idade = 22 e cidade = 'rio de janeiro'. */
SELECT * FROM tbCliente WHERE IDADE = 22 AND CIDADE = 'Rio de Janeiro'; # (3)

/* aplica-se o filtro em que serão exibidos os registros cujas pessoas têm mais de 22 anos. */
SELECT * FROM tbCliente WHERE IDADE > 22; # (4)
 
/* aplica-se o filtro em que serão exibidos os registros cujas pessoas têm menos de 22 anos. */
SELECT * FROM tbCliente WHERE IDADE < 22; # (5)

/* filtro para exibir apenas os clientes cuja idade é menor ou igual a 22 anos. */
SELECT * FROM tbCliente WHERE IDADE <= 22; # (6)

/* filtro para exibir os clientes cuja idade é diferente de 22 anos. */
SELECT * FROM tbCliente WHERE IDADE <> 22; # (7)
