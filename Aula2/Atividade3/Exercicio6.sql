-- cria o banco de dados
create database db_cursoDaMinhaVida;
 
 -- acessa o banco de dados
use db_cursoDaMinhaVida;

-- cria a tabela
create table tb_categoria(
id bigint(5) auto_increment,
nome varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- cria a tabela
create table tb_curso (
id bigint(5) auto_increment,
nome varchar (255) not null,
descricao varchar (255) not null,
totalAulas int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- insere dados na tabela
insert tb_categoria (nome, ativo) values ("Idiomas",true);
insert tb_categoria (nome, ativo) values ("Culinária",true);
insert tb_categoria (nome, ativo) values ("Informática e Internet",true);
insert tb_categoria (nome, ativo) values ("Marketing",true);
insert tb_categoria (nome, ativo) values ("Música e dança",true);

-- insere dados na tabela
insert tb_curso (nome, descricao, totalAulas, categoria_id) values ("Inglês","Nível Básico para crianças",70,1);
insert tb_curso (nome, descricao, totalAulas, categoria_id) values ("Alemão","Nível Avançado para Adultos",65,1);
insert tb_curso (nome, descricao, totalAulas, categoria_id) values ("PHP","PHP para iniciantes",20,3);
insert tb_curso (nome, descricao, totalAulas, categoria_id) values ("MySQL","Banco de Dados MySQL",20,3);
insert tb_curso (nome, descricao, totalAulas, categoria_id) values ("Cozinha Árabe","Aprendendo os principais pratos",20,2);
insert tb_curso (nome, descricao, totalAulas, categoria_id) values ("Java","Introdução à Linguagem Java",30,3);
insert tb_curso (nome, descricao, totalAulas, categoria_id) values ("Algoritmos","Lógica de Programação",20,3);
insert tb_curso (nome, descricao, totalAulas, categoria_id) values ("História da Música","Uma breve descrição da origem da música",10,5);

-- busca cursos com totalAulas maior que 50
select * from  tb_curso where totalAulas>50;

-- busca cursos com totalAulas  entre 3 e 60 
select * from  tb_curso where totalAulas between 3 AND 60;

-- busca com like
select * from tb_curso where nome Like "c%";

-- inner join
SELECT * FROM tb_curso
inner join tb_categoria on  tb_curso.categoria_id=tb_categoria.id ;

SELECT * FROM  tb_curso
inner join tb_categoria on tb_curso.categoria_id=tb_categoria.id 
where tb_categoria.nome = "Informática e Internet";
