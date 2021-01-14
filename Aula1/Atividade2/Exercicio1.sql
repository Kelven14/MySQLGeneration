-- criar um banco de dados
create database db_servico_rh;

-- acesso ao db
use db_servico_rh;

-- cria uma tabela
create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(255) not null,
sexo enum("M","F"),
admissao date not null, -- Darta de admissao
cargo varchar(255) not null,
salario float not null,
primary key(id)
);

-- inserir dados na tabela
insert into tb_funcionario (nome,sexo,admissao,cargo,salario) values ("Kelven","M","2021-03-20", "Desenvolvedor Full Stack Jr", 8000);
insert into tb_funcionario (nome,sexo,admissao,cargo,salario) values ("Maria","F","2018-04-20", "Desenvolvedora Backend", 6000);
insert into tb_funcionario (nome,sexo,admissao,cargo,salario) values ("Joao","M","2021-03-10", "Desenvolvedor Frontend", 5000);
insert into tb_funcionario (nome,sexo,admissao,cargo,salario) values ("Lucas","M","2021-04-15", "Estagiario", 1900);
insert into tb_funcionario (nome,sexo,admissao,cargo,salario) values ("Debora","F","2021-05-10", "Estagiaria ", 1900);

 -- Seleciona todos os funcionarios que possuem o salario maior que 2000
select * from tb_funcionario where salario>2000;

 -- Seleciona todos os funcionarios que possuem o salario menor que 2000
select * from tb_funcionario where salario<2000;

-- atualiza o salario da funcionaria Maria de 6000 para 7200
update  tb_funcionario set salario=7200 where id = 2;