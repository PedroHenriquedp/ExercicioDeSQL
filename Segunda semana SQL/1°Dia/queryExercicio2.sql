CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT NOT NULL,
    bordaRecheada BOOLEAN,
	pizzaSal_Doce VARCHAR(255),
    pizzaFrita_Assada VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT NOT NULL,
	nome VARCHAR(255),
    sabor VARCHAR(255),
	tamanho VARCHAR(255),
    preco INT,
	redonda BOOLEAN,
	vegana BOOLEAN,
    vegetariana BOOLEAN,
    categoria_id BIGINT NOT NULL,
    PRIMARY KEY(id),
	FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(bordaRecheada,PizzaSal_Doce,PizzaFrita_Assada)
VALUE(TRUE,"SALGADA","ASSADA");
INSERT INTO tb_categoria(bordaRecheada,PizzaSal_Doce,PizzaFrita_Assada)
VALUE(FALSE,"DOCE","FRITA");
INSERT INTO tb_categoria(bordaRecheada,PizzaSal_Doce,PizzaFrita_Assada)
VALUE(FALSE,"SALGADA","ASSADA");
INSERT INTO tb_categoria(bordaRecheada,PizzaSal_Doce,PizzaFrita_Assada)
VALUE(TRUE,"DOCE","ASSADA");
INSERT INTO tb_categoria(bordaRecheada,PizzaSal_Doce,PizzaFrita_Assada)
VALUE(FALSE,"SALGADA","ASSADA");
INSERT INTO tb_categoria(bordaRecheada,PizzaSal_Doce,PizzaFrita_Assada)
VALUE(TRUE,"SALGADA","FRITA");

SELECT*FROM tb_categoria;

INSERT INTO tb_pizza(nome,sabor,tamanho,preco,redonda,vegana,vegetariana,categoria_id)
VALUES("PEPINO DOS MARES","PIZZA ITALIANA","PEQUENA",20,TRUE,TRUE,TRUE,1);
INSERT INTO tb_pizza(nome,sabor,tamanho,preco,redonda,vegana,vegetariana,categoria_id)
VALUES("QUEIJINHO","PIZZA 4 QUEIJOS","GRANDE",55,FALSE,FALSE,TRUE,1);
INSERT INTO tb_pizza(nome,sabor,tamanho,preco,redonda,vegana,vegetariana,categoria_id)
VALUES("EME E EME","PIZZA DE M&M","GRANDE",70,FALSE,FALSE,FALSE,4);
INSERT INTO tb_pizza(nome,sabor,tamanho,preco,redonda,vegana,vegetariana,categoria_id)
VALUES("FRANGO E QUEIJINHO","PIZZA DE FRANGO COM CATUPIRY","GRANDE",65,TRUE,FALSE,FALSE,1);
INSERT INTO tb_pizza(nome,sabor,tamanho,preco,redonda,vegana,vegetariana,categoria_id)
VALUES("ELA DISSE","PIZZA HERSHAY'S","PEQUENA",29,TRUE,TRUE,TRUE,2);
INSERT INTO tb_pizza(nome,sabor,tamanho,preco,redonda,vegana,vegetariana,categoria_id)
VALUES("QUERIDINHO","PIZZA MEIA CALABRESA MEIA MUSSARELA","GRANDE",50,TRUE,FALSE,FALSE,3);
INSERT INTO tb_pizza(nome,sabor,tamanho,preco,redonda,vegana,vegetariana,categoria_id)
VALUES("ITALIANO ALONE","PIZZA ITALIANA","PEQUENA",31,TRUE,FALSE,FALSE,6);
INSERT INTO tb_pizza(nome,sabor,tamanho,preco,redonda,vegana,vegetariana,categoria_id)
VALUES("VEGANO?","PIZZA DE QUEIJO","GRANDE",59,TRUE,TRUE,TRUE,3);

SELECT*FROM tb_pizza;

SELECT*FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
SELECT*FROM tb_pizza WHERE nome LIKE "%c%";
SELECT*FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id;