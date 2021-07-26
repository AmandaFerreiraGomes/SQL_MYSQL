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

