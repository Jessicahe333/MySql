alter table cliente add column rg varchar(10) not null after senha;

#Modificar a variável de uma coluna
alter table cliente modify column rg varchar(15);

#Alterar o nome de uma coluna
alter table cliente change column rg registro_geral varchar(10) not null;