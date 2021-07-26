/* cria-se o banco de dados sucos*/
CREATE DATABASE sucos;

/* cria-se para sucos a tabela/relação tbCliente, na qual estarão inseridas informações sobre os clientes da empresa que vende sucos */

USE sucos; /* seleciona o banco de dados sucos*/

/* cria-se tbCliente com os atributos abaixo descritos, todos com informações relevantes sobre os clientes */
CREATE TABLE tbCliente 
(
	`CPF` VARCHAR(14), /* armazenado como texto, porque pode conter caracteres, como ponto e hífen, e pode truncar os zeros caso o mesmo comece com zero */
    `NOME` VARCHAR(100), /* nome é uma variável que pode possuir até 100 caracteres */
    `ENDERECO1` VARCHAR(150), /* coloca-se a rua e o número da residência */
    `ENDERECO2` VARCHAR(150),  /* caso o de cima não seja suficiente */
    `BAIRRO` VARCHAR(50), 
    `CIDADE` VARCHAR(50),
    `ESTADO` VARCHAR(30),
    `CEP` VARCHAR(8),
    `IDADE` SMALLINT,
    `SEXO` VARCHAR(1), /* masculino - M ou feminino - F */
    `LIMITE_CREDITO` FLOAT, 
    `VOLUME_COMPRA` FLOAT,
    `PRIMEIRA_COMRA` BIT(1) /* se sim: 1, caso contrário: 0. Portanto, só aceita esses dois valores*/
); 

/* cria-se a chave primária CPF em tbCliente. A chave primária será responsável por atuar como identificador do cliente, uma vez que nunca pode se repetir dentro da relação */
ALTER TABLE tbCliente ADD PRIMARY KEY (CPF);

/* seleciona todas as entidades de tbproduto e faz uma projeção na tela */
SELECT * FROM tbCliente;

