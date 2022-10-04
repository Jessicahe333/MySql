-- passo 1: a partir dos pedidos, faco a juncao com os itens de pedido;
-- passo 2: juncao com produto;
-- passo 3: juncao com cliente:
select * from pedido 
	inner join item_pedido on pedido.numero = item_pedido.numero_pedido
	inner join produto on produto.codigo = item_pedido.codigo_produto
    inner join cliente on pedido.id_cliente = cliente.id;
    

-- a mesma consulta anterior, porém buscando todos os dados do pedido
-- + nome do produto comprado
select pedido.numero, pedido.data_pedido, pedido.valor_bruto, pedido.desconto,
	pedido.valor_liq, cliente.nome, produto.nome from pedido 
	inner join item_pedido on pedido.numero = item_pedido.numero_pedido
	inner join produto on produto.codigo = item_pedido.codigo_produto
    inner join cliente on pedido.id_cliente = cliente.id
    group by pedido.numero;
    
-- quero totais de pedidos por cliente (inclusive com o nome deles)
select cliente.nome, pedido.id_cliente, sum(pedido.valor_liq) from pedido
	inner join cliente on pedido.id_cliente = cliente.id
    group by pedido.id_cliente;