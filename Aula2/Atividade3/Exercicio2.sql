-- cria o banco de dados
create database db_pizzaria_legal;
 
 -- acessa o banco de dados
use db_pizzaria_legal;

-- cria a tabela
create table tb_categoria(
id bigint(5) auto_increment,
tamanho varchar(255) not null,
tipo varchar(255) not null,
primary key (id)
);

-- cria a tabela
create table tb_pizza (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(10,2),
ativo boolean not null, 
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- insere dados na tabela
insert tb_categoria (tamanho, tipo) values ("Pizza Grande", "Salgada");
insert tb_categoria (tamanho, tipo) values ("Pizza Grande","Doce");
insert tb_categoria (tamanho, tipo) values ("Pizza Broto","Salgada");
insert tb_categoria (tamanho, tipo) values ("Pizza Broto" ,"Doce");
insert tb_categoria (tamanho, tipo) values ("Pizza Grande","Vegetariana");

-- insere dados na tabela
insert tb_pizza (nome, preco, ativo, categoria_id) values ("Frango",49.00,true,3);
insert tb_pizza (nome, preco, ativo, categoria_id) values ("Mussarela",29.00,true,1);
insert tb_pizza (nome, preco, ativo, categoria_id) values ("Margherita",44.00,true,1);
insert tb_pizza (nome, preco, ativo, categoria_id) values ("Calabresa",29.00,true,3);
insert tb_pizza (nome, preco, ativo, categoria_id) values ("Bauru",40.00,true,1);
insert tb_pizza (nome, preco, ativo, categoria_id) values ("Prestigio",49.50,true,2);
insert tb_pizza (nome, preco, ativo, categoria_id) values ("Romeu e Juliete",50.00,true,2);
insert tb_pizza (nome, preco, ativo, categoria_id) values ("Morango",56.00,true,4);

-- busca produtos com preço maior que 45
select * from tb_pizza where preco>45;

-- busca produtos com preço entre 29 e 60 
select * from tb_pizza where preco>29 AND  preco<60  ;

-- busca com like
select * from tb_pizza  where nome Like "m%";

-- inner join
SELECT * FROM  tb_pizza
inner join tb_categoria on  tb_pizza.categoria_id=tb_categoria.id ;
 
select tb_pizza.nome, tb_pizza.preco, tb_categoria.tipo from tb_pizza
inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.tipo = 'doce';

 
 