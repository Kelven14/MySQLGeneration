-- criar um banco de dados
create database db_escola;

-- acesso ao db
use db_escola;

-- cria uma tabela
CREATE TABLE tb_alunos (
  id bigint AUTO_INCREMENT,  -- Definindo como auto Incremente 1, 2, 3 ...
  nome varchar(30) not NULL,
  nascimento date not null, -- Darta de nascimento
  sexo enum("M","F"),
  nota decimal(10,2) not NULL,
  situacao enum("Aprovado","Aprovada","Reprovado","Reprovada"),
  PRIMARY KEY (id)
);


-- inserir dados na tabel
insert into tb_alunos (nome,nascimento,sexo,nota,situacao) values ("Kelven","1996-01-14","M",9, "Aprovado");
insert into tb_alunos (nome,nascimento,sexo,nota,situacao) values ("William","1999-11-14","M",4, "Reprovado");
insert into tb_alunos (nome,nascimento,sexo,nota,situacao) values ("Maria","2000-02-20","F",8, "Aprovada");
insert into tb_alunos (nome,nascimento,sexo,nota,situacao) values ("Debora","1995-03-10","M",6, "Reprovada");
insert into tb_alunos (nome,nascimento,sexo,nota,situacao) values ("Joao","1998-05-24","M",8, "Aprovado");
insert into tb_alunos (nome,nascimento,sexo,nota,situacao) values ("Leonarno","1998-08-19","M",9.5, "Aprovado");
insert into tb_alunos (nome,nascimento,sexo,nota,situacao) values ("Vinicius","2000-07-04","M",5, "Reprovado");
insert into tb_alunos (nome,nascimento,sexo,nota,situacao) values ("Carlos","1999-01-14","M",4.5, "Reprovado");

 -- Seleciona todos os alunos com notas maiores que 7
select * from tb_alunos where nota>7;

 -- Seleciona todos os alunos com notas menores que 7
select * from tb_alunos where nota<7;

-- atualiza o preco do produto com id=2
update  tb_alunos set nota=6.5 where id = 8;