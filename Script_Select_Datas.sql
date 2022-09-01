# Selecionando algumas colunas
select id, nome, email, senha, cpf from cliente;

#Selecionado todas as colunas
select * from cliente;

select id as 'codigo', nome as 'nome do cliente', cpf as 'cpf do cliente' from cliente;

# Ordenando clientes pelo nome
select * from cliente order by nome asc;

# Buscando através de um critério
select * from cliente where id = 1;

# Quero saber quantos clientes tem
select count(id) from cliente;

# A mesma consulta acima , mudando o titulo da coluna
select count(id) as 'total de clientes' from cliente;

# Recuperando todos os pedidos:
select * from pedido;

# Recuperando o total faturado (sem critério algum): 
select sum(valor_liq) from pedido;

# Repurando todos os produtos
select * from produto;

# Buscando produtos por algums palavra-chave:
select * from produto where nome like '%USB%';
