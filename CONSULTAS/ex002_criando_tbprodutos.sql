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

/* cria-se para tbProduto a chave primária no atributo CODIGO, a qual nunca poderá ter valor repetido dentro da relação */
ALTER TABLE tbProduto ADD PRIMARY KEY (CODIGO);

/* seleciona tudo o que está em tbproduto */
SELECT * FROM tbProduto;


/* insere em tbproduto novos produtos, com todos os atributos preenchidos */
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
    ('1002767', 'VIDEIRA DO CAMPO', 'GARRAFA', '700 ML', 'CEREJA/MAÇÃ', 8.41)
    ('231776', 'Festival de Sabores', 'Garrafa', '700 ML', 'Açai', 13.312),
	('479745', 'Clean', 'Garrafa', '470 ML', 'Laranja', 3.768),
	('1051518', 'Frescor do Verão', 'Garrafa', '470 ML', 'Limão', 3.2995),
	('1101035', 'Linha Refrescante', 'PET', '1 L','Morango/Limão', 9.0105),
	('229900', 'Pedaços de Frutas', 'Lata', '350 ML', 'Maça', 4.211),
	('1086543', 'Linha Refrescante', 'PET', '1 L', 'Manga', 11.0105),
	('695594', 'Festival de Sabores', 'PET', '1.5 L', 'Açai', 28.512),
	('838819', 'Clean', 'PET', '1.5 L', 'Laranja', 12.008),
	('326779', 'Linha Refrescante', 'PET', '1.5 L', 'Manga', 16.5105),
	('520380', 'Pedaços de Frutas', 'PET', '1 L', 'Maça', 12.011),
	('1041119', 'Linha Citros', 'Garrafa', '700 ML', 'Lima/Limão', 4.904),
	('243083', 'Festival de Sabores', 'PET', '1.5 L', 'Maracujá', 10.512),
	('394479', 'Sabor da Montanha', 'Garrafa', '700 ML', 'Cereja', 8.409),
	('746596', 'Light', 'PET', '1.5 L', 'Melância', 19.505),
	('773912', 'Clean', 'PET', '1 Litro', 'Laranja', 8.008),
	('826490', 'Linha Refrescante', 'Garrafa', '700 ML', 'Morango/Limão', 6.3105),
	('723457', 'Festival de Sabores', 'Garrafa', '700 ML', 'Maracujá', 4.912),
	('812829', 'Clean', 'Lata', '350 ML', 'Laranja', 2.808),
	('290478', 'Videira do Campo', 'Lata', '350 ML', 'Melância', 4.56),
	('783663', 'Sabor da Montanha', 'Garrafa', '700 ML', 'Morango', 7.709),
	('235653', 'Frescor do Verão', 'Lata', '350 ML', 'Manga', 3.8595),
	('1002334', 'Linha Citros', 'PET', '1 L', 'Lima/Limão', 7.004),
	('1013793', 'Videira do Campo', 'PET', '2 L', 'Cereja/Maça', 24.01),
	('1096818', 'Linha Refrescante', 'Garrafa', '700 ML', 'Manga', 7.7105),
	('1022450', 'Festival de Sabores', 'PET', '2 L', 'Açai', 38.012);

