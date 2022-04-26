CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sabor VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    preco DOUBLE NOT NULL,
    id_categoria BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (tipo, descricao) VALUES 
('salgada', 'pizza salgada');

INSERT INTO tb_categorias (tipo, descricao) VALUES 
('doce', 'pizza doce');

INSERT INTO tb_categorias (tipo, descricao) VALUES 
('borda recheada', 'pizza borda recheada');

INSERT INTO tb_categorias (tipo, descricao) VALUES 
('vegana', 'pizza vegana');

INSERT INTO tb_categorias (tipo, descricao) VALUES 
('tradicional', 'pizza tradicional');

INSERT INTO tb_pizzas (nome,sabor, tamanho, preco, id_categoria) VALUES ('Pizza Portuguesa','queijo, presunto , pimentao', 'familia', 45.99,2);
INSERT INTO tb_pizzas (nome,sabor, tamanho, preco, id_categoria) VALUES ('Pizza Dagmar','champcnon, queijo, cebola','grande',52.12,2);
INSERT INTO tb_pizzas (nome, sabor, tamanho, preco, id_categoria) VALUES ('Pizza Romeu e Julieta', 'goiabada, queijo','pequena', 20,1);
INSERT INTO tb_pizzas (nome,sabor, tamanho, preco, id_categoria) VALUES ('Pizza M&Ms','chocolate M&Ms coloridos','gigante',56.99,1);
INSERT INTO tb_pizzas (nome, sabor, tamanho, preco, id_categoria) VALUES ('Pizza de alho', 'farocha de alho, molho branco','grande', 29.99,3);
INSERT INTO tb_pizzas (nome,sabor, tamanho, preco, id_categoria) VALUES ('Pizza de Abóbora','abóbora com couve-flor','média',32.12,3);
INSERT INTO tb_pizzas (nome,sabor, tamanho, preco, id_categoria) VALUES ('Pizza de Palmito e Brócoli','pizza da casa de palmito e brócoli','gigante', 52.99, 5);
INSERT INTO tb_pizzas (nome,sabor, tamanho, preco, id_categoria) VALUES ('Pizza de Mussarela','mussarela tradicional','grande',22.99,5);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 22 AND 32;
SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';

SELECT sabor, preco FROM
tb_pizzas INNER JOIN 
tb_categorias ON 
tb_pizzas.id_categoria = tb_Categorias.id;

SELECT sabor, preco FROM
tb_pizzas INNER JOIN 
tb_categorias ON 
tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.tipo = 'doce';




