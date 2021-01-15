-- cria o banco de dados
create database db_cidade_das_carnes;
 
 -- acessa o banco de dados
use db_cidade_das_carnes;

-- cria a tabela
create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- cria a tabela
create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- insere dados na tabela
insert tb_categoria (descricao, ativo) values ("Bovino",true);
insert tb_categoria (descricao, ativo) values ("Suino",true);
insert tb_categoria (descricao, ativo) values ("Aves",true);
insert tb_categoria (descricao, ativo) values ("embutidos",true);
insert tb_categoria (descricao, ativo) values ("outros",true);

-- insere dados na tabela
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Linguiça",30.00,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",19.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",55.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Costela",30.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Alcatra",40.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",20.00,30,4);

-- busca
select * from tb_produtos;

-- busca produtos com preço maior que 50
select * from tb_produtos where preco>50;

-- busca produtos com preço entre 3 e 60 
select * from tb_produtos where preco between 3 AND 60;

-- busca com like
select * from tb_produtos where nome Like "c%";

-- inner join
SELECT * FROM  tb_produtos
inner join tb_categoria on  tb_produtos.categoria_id=tb_categoria.id ;

SELECT * FROM  tb_produtos
inner join tb_categoria on  tb_produtos.categoria_id=tb_categoria.id 
where tb_categoria.descricao = 'Aves';

