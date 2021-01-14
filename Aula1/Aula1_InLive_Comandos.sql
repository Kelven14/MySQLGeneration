-- criar um banco de dados
create database db_servico_rh;

-- acesso ao db
use db_servico_rh;

-- cria uma tabela
create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(255) not null,
salario float not null,
idade int not null,
primary key(id)
);
 
 -- busca da tabela funcionario
select * from tb_funcionario;

-- inserir dados na tabela
insert into tb_funcionario (nome,salario,idade) values ("Lais",10000, 00);
insert into tb_funcionario (nome,salario,idade) values ("Ju",12000, 00);
insert into tb_funcionario (nome,salario,idade) values ("Ewerton",12000, 00);
insert into tb_funcionario (nome,salario,idade) values ("Geandro",12000, 00);

-- atualizar dados na tabela
update  tb_funcionario set salario = 12000 where id = 1;

-- deletar dados na tabela
delete from tb_funcionario where id = 4;


alter table tb_funcionario
add descricao varchar(255);

-- aterar coluna
ALTER TABLE tb_funcionario CHANGE primeiro_nome nome  varchar(255);

-- alterar coluna escolhendo a posição
ALTER TABLE tb_funcionario ADD COLUMN cargo varchar(255) AFTER nome;

-- remover uma coluna
alter table tb_funcionario 
drop column descricao;
