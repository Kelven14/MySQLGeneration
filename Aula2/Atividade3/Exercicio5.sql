-- cria o banco de dados
create database db_construindo_a_nossa_vida;
 
 -- acessa o banco de dados
use db_construindo_a_nossa_vida;

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
preco decimal(10,2),
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- insere dados na tabela
insert tb_categoria (descricao, ativo) values ("Material hidráulico",true);
insert tb_categoria (descricao, ativo) values ("Pisos e Revestimentos",true);
insert tb_categoria (descricao, ativo) values ("Material de Construção",true);
insert tb_categoria (descricao, ativo) values ("Decoração",true);
insert tb_categoria (descricao, ativo) values ("Tintas e acessórios",true);

-- insere dados na tabela
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Porcelanato Esmaltado",32.00,100,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cimento 50kg",26.99,60,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Argamassa",25.99,36,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Caixa D'Água 310L",299.99,60,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Chuveiro Elétrico",106.99,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Prateleira",37.99,50,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Tinta Acrílica",105.99,20,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Pincel para parede",22.99,15,5);

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
where tb_categoria.descricao = 'Material hidráulico';
