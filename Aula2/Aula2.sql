-- INNER JOIN 

SELECT * FROM  tb_produtos
inner join tb_marcas on tb_marcas.id=tb_produtos.marca_id;

SELECT  tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
inner join tb_marcas on tb_marcas.id=tb_produtos.marca_id;

SELECT  tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
inner join tb_marcas on tb_marcas.id=tb_produtos.marca_id
where tb_marcas.nome="Rolex";

SELECT  tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
inner join tb_marcas on tb_marcas.id=tb_produtos.marca_id
where tb_marcas.nome like "%Ro%" 
and tb_produtos.preco<50
and tb_produtos.nome="calça";

SELECT  tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
inner join tb_marcas on tb_marcas.id=tb_produtos.marca_id
where tb_marcas.nome="Rolex"
or tb_marcas.nome="Polo";

-- LEFT JOIN
SELECT * FROM  tb_produtos
left join tb_marcas on tb_marcas.id=tb_produtos.marca_id;

-- Right JOIN 
SELECT * FROM  tb_produtos
right join tb_marcas on tb_marcas.id=tb_produtos.marca_id;

