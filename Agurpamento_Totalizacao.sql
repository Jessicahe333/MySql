-- Como saber quantos produtos há em cada departamento:
select * from produto;

-- Recuperando quantos produtos há em cada um dos deparatemntos
select numero_depto, count(codigo) from produto group by numero_depto; 

-- Recuperando a somatoria dos produtos por departamento
select numero_depto, sum(preco) from produto group by numero_depto;