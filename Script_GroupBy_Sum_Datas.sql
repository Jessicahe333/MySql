# Como saber quantos produtos há em cada depardamento
select numero_depto, count(codigo) from produto
	group by numero_depto;
    
    
# Recuperando a somatória dos produtos por departamento
select numero_depto, sum(preco*estoque) from produto 
	group by numero_depto;