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

/* seleciona todas as entidades de tbproduto e faz uma projeção na tela */
SELECT * FROM tbCliente;

USE sucos;

/* cria-se tbproduto, a qual terá atributos referentes à descrição de cada produto que será inserido */
CREATE TABLE tbProduto
(
	`CODIGO` VARCHAR(12), /* futuramente será usado como identificador, não podendo se repetir ao longo de novos cadastros */
    `NOME` VARCHAR(100),
    `EMBALAGEM` VARCHAR(20),
    `TAMANHO` VARCHAR(10),
    `SABOR` VARCHAR(50),
    `PRECO_LISTA` FLOAT
);

/* seleciona tudo o que está em tbproduto */
SELECT * FROM tbProduto;


/* insere em tbproduto novos produtos, com todos os atributos preenchidos*/
INSERT INTO tbproduto  
( 
	CODIGO, 
    NOME, 
    EMBALAGEM, 
    TAMANHO, 
    SABOR, 
    PRECO_LISTA) VALUES 
    ('1040107', 'LIGHT', 'LATA', '350 ML', 'MELANCIA', 4.56), 
    ('1037797', 'CLEAN', 'PET', '2 L', 'LARANJA', 16.01) ,
    ('1000889', 'SABOR DA MONTANHA', 'GARRAFA', '700 ML', 'UVA', 6.31), 
    ('1004327', 'VIDEIRA DO CAMPO', 'PET', '1.5 L', 'MELANCIA', 19.51), 
    ('1088126', 'LINHA CITROS', 'PET', '1 L', 'LIMÃO', 7.00), 
    ('788975', 'PEDAÇOS DE FRUTAS', 'PET', '1.5 L', 'MAÇÃ', 18.01),
    ('544931', 'FRESCOR DO VERÃO', 'LATA', '350 ML', 'LIMÃO', 2.46), 
    ('1078680', 'FRESCOR DO VERÃO', 'GARRAFA', '470 ML', 'MANGA', 5.18), 
    ('1042712', 'LINHA CITROS', 'GARRAFA', '700 ML', 'LIMÃO', 4.90), 
    ('1002767', 'VIDEIRA DO CAMPO', 'GARRAFA', '700 ML', 'CEREJA/MAÇÃ', 8.41);

