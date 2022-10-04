-- juncao simples como produto cartesiano
select * from produto inner join departamento;
# Fazendo junção de cada item de produto com todos os departamentos.
    
-- juncao fazendo a relacao entre produto e dapartamento 
select * from produto inner join departamento
	on produto.numero_depto = departamento.numero;
    
-- recuperar todos os clientes e seus rexpetativos enderecos:
select * from cliente inner join endereco
	on endereco.id_cliente = cliente.id;