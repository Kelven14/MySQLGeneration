-- cria o banco de dados
create database db_farmacia_do_bem;
 
 -- acessa o banco de dados
use db_farmacia_do_bem;

-- cria a tabela
create table tb_categoria(
id bigint(5) auto_increment,
categoria varchar(255) not null,
tipo varchar(255) not null,
primary key (id)
);

-- cria a tabela
create table tb_produto (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(10,2),
qtdEstoque int, 
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- insere dados na tabela
insert tb_categoria (categoria, tipo) values ("Medicamentos", "Analgésico");
insert tb_categoria (categoria, tipo) values ("Medicamentos", "Antibiótico");
insert tb_categoria (categoria, tipo) values ("Medicamentos","Antialérgico");
insert tb_categoria (categoria, tipo) values ("Cosmético","Beleza");
insert tb_categoria (categoria, tipo) values ("Cosmético" ,"Higiene");

-- insere dados na tabela
insert tb_produto (nome, preco, qtdEstoque, categoria_id) values ("Dorflex",4.99,10,1);
insert tb_produto (nome, preco, qtdEstoque, categoria_id) values ("Loratadina",11.9,12,3);
insert tb_produto (nome, preco, qtdEstoque, categoria_id) values ("Azitromicina",24.99,5,2);
insert tb_produto (nome, preco, qtdEstoque, categoria_id) values ("Flanax",23.99,10,1);
insert tb_produto (nome, preco, qtdEstoque, categoria_id) values ("Asepsia",9.99,19,5);
insert tb_produto (nome, preco, qtdEstoque, categoria_id) values ("Óleo de limpeza",73.99,30,4);
insert tb_produto (nome, preco, qtdEstoque, categoria_id) values ("Protetor solar Nivea",23.39,26,2);
insert tb_produto (nome, preco, qtdEstoque, categoria_id) values ("Benegripe",29.99,20,1);

-- busca produtos com preço maior que 50
select * from tb_produto where preco>50;

-- busca produtos com preço entre 3 e 50 
select * from tb_produto where preco>3 AND  preco<60;

-- busca com like
select * from tb_produto  where nome Like "b%";

-- inner join
SELECT * FROM  tb_produto
inner join tb_categoria on  tb_produto.categoria_id=tb_categoria.id ;

SELECT * FROM  tb_produto
inner join tb_categoria on  tb_produto.categoria_id=tb_categoria.id 
where tb_categoria.categoria = 'Cosmético';

