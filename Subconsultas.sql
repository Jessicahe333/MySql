-- gostaria de buscar todos os pedidos que possuem o produto mais caro neles

select * from produto;

select * from produto order by preco desc;
-- como saber qual o produto mais caro?
select * from produto order by preco desc limit 1;
select * from produto having max(produto.preco);
# Having só pode ser trabalhar com dados derivados, os números calculados
select * from produto where preco = (select max(preco) from produto);

-- mas na verdade eu quero os pedidos que contem este produto
select * from pedido inner join item_pedido
	on item_pedido.numero_pedido = pedido.numero
	where item_pedido.codigo_produto = 
     (select codigo from produto having max(preco));
     
-- caso eu queira o(s) cliente(s) que compraram este produto mais caro 
-- basta fazer na consulta externa uma junção com cliente e recuperar seu nome

select * from cliente inner join pedido on cliente.id = pedido.id_cliente
		inner join item_pedido on item_pedido.codigo_produto = pedido.numero
        where item_pedido.codigo_produto = 
        (select codigo from produto having max(preco));