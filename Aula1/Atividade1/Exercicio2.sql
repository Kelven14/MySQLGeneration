-- criar um banco de dados
create database db_ecommerce;

-- acesso ao db
use db_ecommerce;

-- cria uma tabela
CREATE TABLE tb_produtos (
  id bigint AUTO_INCREMENT,  -- Definindo como auto Incremente 1, 2, 3 ...
  nome varchar(30) not NULL,
  categoria varchar(30) not NULL,
  marca varchar(30) not NULL,
  quantidade int not NULL,
  preco decimal(10,2),
  PRIMARY KEY (id)
);


-- inserir dados na tabel
insert into tb_produtos (nome,categoria,marca,quantidade,preco) values ("Máquina de Lavar","Eletromesticos","Electrolux", 1,1999);
insert into tb_produtos (nome,categoria,marca,quantidade,preco) values ("Cômoda","Moveis"," Bartira", 2,379.99);
insert into tb_produtos (nome,categoria,marca,quantidade,preco) values ("Guarda- Roupa","Moveis","Bartira",1, 759.99);
insert into tb_produtos (nome,categoria,marca,quantidade,preco) values ("Ventilador","Eletroportáteis","Arno", 2,189.90);
insert into tb_produtos (nome,categoria,marca,quantidade,preco) values ("Notebook","Informática","Sansung", 1,2999);
insert into tb_produtos (nome,categoria,marca,quantidade,preco) values ("Micro-ondas","Eletromesticos","Electrolux", 1,429);
insert into tb_produtos (nome,categoria,marca,quantidade,preco) values ("Playstation 4","Games","Sony", 1,2599);
insert into tb_produtos (nome,categoria,marca,quantidade,preco) values ("controle Playstation 4 ","Games","Sony", 2,269);

 -- Seleciona todos os funcionarios que possuem o salario maior que 2000
select * from tb_produtos where preco>500;

 -- Seleciona todos os funcionarios que possuem o salario menor que 2000
select * from tb_produtos where preco<500;

-- atualiza o salario da funcionaria Maria de 6000 para 7200
update  tb_produtos set preco=420 where id = 2;