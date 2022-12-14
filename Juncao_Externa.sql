-- hipótese 1: buscando todos os produtos a partir dos departamentos
select * from departamento inner join produto on
	departamento.numero = produto.numero_depto;
    
-- inserindo um novo departamento
insert into departamento values (null, "Moveis", "Moveis para escritórios e gamers de todas as idades");

select * from departamento;

-- solução para isso: usar uma junçao externa (outer join)
select * from departamento left outer join produto
	on departamento.numero = produto.numero_depto;
    
-- agora usando right outer join
select * from produto right outer join departamento
	on departamento.numero = produto.numero_depto;