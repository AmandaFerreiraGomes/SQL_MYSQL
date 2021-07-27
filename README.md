![image](https://user-images.githubusercontent.com/50182271/127007611-9c1c9766-5ba5-4099-8fff-b310763e1b31.png)

Meu portifólio com implementações de códigos em SQL no MYSQL, de acordo com o que foi aprendido no curso da ALURA (INTRODUÇÃO AO SQL COM MYSQL: MANIPULE E CONSULTE DADOS).

___________________________________________________________________________________________________________________________________________________________________________________
# 1. CRIANDO O BANCO DE DADOS `SUCOS`, CRIANDO AS RELAÇÕES(TABELAS TBCLIENTE, TBPRODUTO) DO BANCO DE DADOS E INSERINDO ELEMENTOS NAS RELAÇÕES:
___________________________________________________________________________________________________________________________________________________________________________________

-> ex001: cria-se o banco de dados sucos, depois é criada a tabela tbCliente, na qual serão armazenadas as informações da entidade cliente. É feito o uso de alguns comandos de manipulação, como create database, create table, alter table ... add column(... ...), alter table ... add primary key(...), insert into ... (...) values(...), select ... from ... . 

![image](https://user-images.githubusercontent.com/50182271/127037041-a6021fac-1c70-4351-9f95-f467acffb181.png)

___________________________________________________________________________________________________________________________________________________________________________________
-> ex002: cria-se a tabela tbProduto, na qual serão inseridas informações referentes aos produtos(sucos) que são vendidos no estabelecimento. Informações as quais nomeiam cada coluna da tabela representada na imagem abaixo.

![image](https://user-images.githubusercontent.com/50182271/127046889-bfd0f82b-9e4b-4220-abef-5d69f76d8981.png)

___________________________________________________________________________________________________________________________________________________________________________________
Os dados até este ponto não foram tratados ainda. 

_________________________________________________________________________________________________________________________________________________________________________________
# 2. APLICANDO FILTROS NOS REGISTROS:
_________________________________________________________________________________________________________________________________________________________________________________

  Existem inúmeros filtros, os quais podem ser aplicados para fazer consultas. Isso varia de acordo com a necessidade do usuário.

(1): de tbcliente, filtram-se os registros para que sejam exibidos apenas o cpf e o nome dos clientes.

![image](https://user-images.githubusercontent.com/50182271/127083389-2ada2faf-ca7e-481b-8bd5-52627339469b.png)

(2): dada a relação tbcliente, obtém-se a partir dela o cpf, o qual é renomeado(cria-se um nome fantasia para ele: cpf_cliente), assim como nome(o qual chama-se nome_cliente), após a inserção do comando ALIAS(AS). Com o uso do LIMIT, torna-se limitada a exibição de 7 clientes apenas, que são os sete primeiros que aparecem no registro do banco de dados.

![image](https://user-images.githubusercontent.com/50182271/127083449-f55e619d-d608-420d-b729-a8130aa5d370.png)

(3): aplica-se um filtro, no qual são selecionados os registros que possuem idade igual a 22 anos E cidade igual a Rio de Janeiro.

![image](https://user-images.githubusercontent.com/50182271/127149131-9bc51555-bd3e-430e-ad03-aa125cb9ddb5.png)

(4): aplica-se o filtro desejando exibir apenas os registros com pessoas cuja idade é maior que 22 anos.

![image](https://user-images.githubusercontent.com/50182271/127152728-accad712-3499-4413-a0f8-17283db52ae9.png)

(5): aplica-se o filtro, no qual são selecionados os registros de pessoas cuja idade é menor que 22 anos.

![image](https://user-images.githubusercontent.com/50182271/127152858-2daef1e7-c624-4319-b1b2-762f08183164.png)
