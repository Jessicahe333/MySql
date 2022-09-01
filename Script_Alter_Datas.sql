update departamento set nome='Informatica e Tecnologia' where numero=1;

select * from departamento;

# Para conseguir deletar numero 1 do departamento,
# 1ª precisa deletar codigo 1 do produto, porque o departamento é a referência da tabela Produto
delete from produto where codigo=1;
delete from departamento where numero=1;
