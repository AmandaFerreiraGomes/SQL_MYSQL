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
    `PRIMEIRA_COMPRA` BIT(1) /* se sim: 1, caso contrário: 0. Portanto, só aceita esses dois valores */
); 

/* cria-se a chave primária CPF em tbCliente. A chave primária será responsável por atuar como identificador do cliente, uma vez que nunca pode se repetir dentro da relação */
ALTER TABLE tbCliente ADD PRIMARY KEY (CPF);

/* digamos que o estabelecimento tenha informado depois de algum tempo que queria a data de nascimento como atributo para a relação tbCliente */

/* altera-se tbCliente e adiciona-se o atributo idade */
ALTER TABLE tbCliente ADD COLUMN (DATA_NASCIMENTO DATE);

/* inserindo dados na tabela tbCliente */
INSERT INTO tbcliente (
	CPF,
	NOME,
	ENDERECO1,
	ENDERECO2,
	BAIRRO,
	CIDADE,
	ESTADO,
	CEP,
	DATA_NASCIMENTO,
	IDADE,
	SEXO,
	LIMITE_CREDITO,
	VOLUME_COMPRA,
	PRIMEIRA_COMPRA
)
VALUES ('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','','Água Santa','Rio de Janeiro','RJ','22000000','2000-02-12',18,'M',100000,200000,1),
('2600586709','César Teixeira','Rua Conde de Bonfim','','Tijuca','Rio de Janeiro','RJ','22020001','2000-03-12',18,'M',120000,220000,0), 
('95939180787','Fábio Carvalho','R. dos Jacarandás da Península','','Barra da Tijuca','Rio de Janeiro','RJ','22002020','1992-01-05',16,'M',90000,180000,1), 
('9283760794','Edson Meilelles','R. Pinto de Azevedo','','Cidade Nova','Rio de Janeiro','RJ','22002002','1995-10-07',22,'M',150000,250000,1),
('7771579779','Marcelo Mattos','R. Eduardo Luís Lopes','','Brás','São Paulo','SP','88202912','1992-03-25',25,'M',120000,200000,1),
('5576228758','Petra Oliveira','R. Benício de Abreu','','Lapa','São Paulo','SP','88192029','1995-11-14',22,'F',70000,160000,1),
('8502682733','Valdeci da Silva','R. Srg. Édison de Oliveira','','Jardins','São Paulo','SP','82122020','1995-10-07',22,'M',110000,190000,0),
('1471156710','Érica Carvalho','R. Iriquitia','','Jardins','São Paulo','SP','80012212','1990-09-01',27,'F',170000,245000,0),
('3623344710','Marcos Nougeuira','Av. Pastor Martin Luther King Junior','','Inhauma','Rio de Janeiro','RJ','22002012','1995-01-13',23,'M',110000,220000,1),
('50534475787','Abel Silva ','Rua Humaitá','','Humaitá','Rio de Janeiro','RJ','22000212','1995-09-11',22,'M',170000,260000,0),
('5840119709','Gabriel Araujo','R. Manuel de Oliveira','','Santo Amaro','São Paulo','SP','80010221','1985-03-16',32,'M',140000,210000,1),
('94387575700','Walber Lontra','R. Cel. Almeida','','Piedade','Rio de Janeiro','RJ','22000201','1989-06-20',28,'M',60000,120000,1),
('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura','','Jardins','São Paulo','SP','81192002','1983-12-20',34,'M',200000,240000,0),
('5648641702','Paulo César Mattos','Rua Hélio Beltrão','','Tijuca','Rio de Janeiro','RJ','21002020','1991-08-30',26,'M',120000,220000,0),
('492472718','Eduardo Jorge','R. Volta Grande','','Tijuca','Rio de Janeiro','RJ','22012002','1994-07-19',23,'M',75000,95000,1);

/* seleciona todas as entidades de tbproduto e faz uma projeção na tela */
SELECT * FROM tbCliente;

