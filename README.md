![image](https://user-images.githubusercontent.com/50182271/127007611-9c1c9766-5ba5-4099-8fff-b310763e1b31.png)

  Meu portifólio com implementações de códigos em SQL no MYSQL, de acordo com o que foi aprendido no curso da ALURA (INTRODUÇÃO AO SQL COM MYSQL: MANIPULE E CONSULTE DADOS). Neste repositório estão inseridos códigos e exemplos de implementações as quais foram feitas durante o curso.
  Aplica-se neste projeto a implementação física de um projeto de banco de dados, a qual nasce após uma longa jornada de modelagem, do modelo conceitual para o modelo lógico.

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
# 2. APLICANDO FILTROS NOS REGISTROS DA RELAÇÃO tbCliente:
_________________________________________________________________________________________________________________________________________________________________________________

  Existem inúmeros filtros, os quais podem ser aplicados para fazer consultas. Isso varia de acordo com a necessidade do usuário.

(1): de tbcliente, filtram-se os registros para que sejam exibidos apenas o cpf e o nome dos clientes.

![image](https://user-images.githubusercontent.com/50182271/127083389-2ada2faf-ca7e-481b-8bd5-52627339469b.png)

(2): dada a relação tbcliente, obtém-se a partir dela o cpf, o qual é renomeado(cria-se um nome fantasia para ele: cpf_cliente), assim como nome(o qual chama-se nome_cliente), após a inserção do comando ALIAS(AS). Com o uso do LIMIT, torna-se limitada a exibição de 7 clientes apenas, que são os sete primeiros que aparecem no registro do banco de dados.

![image](https://user-images.githubusercontent.com/50182271/127083449-f55e619d-d608-420d-b729-a8130aa5d370.png)

(3): aplicam-se dois filtros, nos quais são selecionados os registros que possuem idade igual a 22 anos E cidade igual a Rio de Janeiro.

![image](https://user-images.githubusercontent.com/50182271/127149131-9bc51555-bd3e-430e-ad03-aa125cb9ddb5.png)

(4): aplica-se o filtro desejando exibir apenas os registros com pessoas cuja idade é maior que 22 anos.

![image](https://user-images.githubusercontent.com/50182271/127152728-accad712-3499-4413-a0f8-17283db52ae9.png)

(5): aplica-se o filtro, no qual são selecionados os registros de pessoas cuja idade é menor que 22 anos.

![image](https://user-images.githubusercontent.com/50182271/127152858-2daef1e7-c624-4319-b1b2-762f08183164.png)

(6): aplica-se um filtro para exibir os registros cuja idade é menor ou igual a 22 anos.

![image](https://user-images.githubusercontent.com/50182271/127153626-e86f69d5-d276-4766-80ba-5493e0912073.png)

(7): é aplicado um filtro em que serão selecionados os registros de todas as pessoas que possuem idade diferente de 22 anos.

![image](https://user-images.githubusercontent.com/50182271/127153808-3c0b55b8-2d93-486f-81dd-c84d4a88fa56.png)

_________________________________________________________________________________________________________________________________________________________________________________
# 3. APLICANDO FILTROS NOS REGISTROS DA RELAÇÃO tbProduto:
_________________________________________________________________________________________________________________________________________________________________________________

(1): mostra-se a relação com todos os produtos cujo sabor é limão.

![image](https://user-images.githubusercontent.com/50182271/127205543-14486521-bc5e-42fe-9a4c-ddea5084a155.png)

(2): após o update, no qual foi feita a substituição do sabor, de limão para cítricos, mostra-se o resultado tentando exibir os registros nos quais existe o sabor limão.

![image](https://user-images.githubusercontent.com/50182271/127209135-4723c3ca-913c-4048-82e0-9670d086dbdb.png)

(3): por fim, mostra-se os registros com o sabor cítricos, resultante do update aplicado.

![image](https://user-images.githubusercontent.com/50182271/127209194-a9b9a261-9b2b-4afe-9a7f-756cd785792b.png)

(4): neste caso, aborda-se a filtragem dos produtos cujo preço em lista está entre R$ 19.504 e R$ 19.506, esperando-se encontrar o valor R$ 19.505, porque é do tipo ponto flutuante e não conseguimos precisar exatamente o valor.

![image](https://user-images.githubusercontent.com/50182271/127209484-f9b7c28f-8557-4d02-a7a7-175a05f16032.png)

(5): são exibidos os registros em que o preco_lista, que é o preço do produto por unidade, está acima de R$ 17,00.

![image](https://user-images.githubusercontent.com/50182271/127220470-7ee2268d-0f39-445c-a96e-e4201589dd99.png)
