CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(255),
    manipulavel BOOLEAN,
    tipoDeUso VARCHAR(255),
	PRIMARY KEY(id)
);

	SELECT*FROM tb_categoria;
    
CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    preco FLOAT,
    codigoDeBarra INT,
	marca VARCHAR(255),
    cor VARCHAR(255),
    faixaEtaria VARCHAR(255),
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

SELECT*FROM tb_produto;

INSERT INTO tb_categoria(tipo,manipulavel,tipoDeUso) 
VALUES("MEDICAMENTO",TRUE,"ORAL");
INSERT INTO tb_categoria(tipo,manipulavel,tipoDeUso) 
VALUES("MEDICAMENTO",TRUE,"INALAÇÃO");
INSERT INTO tb_categoria(tipo,manipulavel,tipoDeUso) 
VALUES("COSMÉTICO",FALSE,"PELE PELE");
INSERT INTO tb_categoria(tipo,manipulavel,tipoDeUso) 
VALUES("VITAMINA",TRUE,"ORAL");
INSERT INTO tb_categoria(tipo,manipulavel,tipoDeUso) 
VALUES("SUPLEMENTO",TRUE,"ORAL");

SELECT*FROM tb_categoria;

INSERT INTO tb_produto(preco,codigoDeBarra,marca,cor,faixaEtaria,categoria_id)
VALUES(199.99,5241568,"ROCHE","PRETO","14+",3);
INSERT INTO tb_produto(preco,codigoDeBarra,marca,cor,faixaEtaria,categoria_id)
VALUES(30.57,5443523,"GEROVITAL","LARANJA","14+",1);
INSERT INTO tb_produto(preco,codigoDeBarra,marca,cor,faixaEtaria,categoria_id)
VALUES(60.00,5255547,"ADVIL","VERMELHO","LIVRE",1);
INSERT INTO tb_produto(preco,codigoDeBarra,marca,cor,faixaEtaria,categoria_id)
VALUES(88.99,5242874,"PENETRO","INCOLOR","14+",2);
INSERT INTO tb_produto(preco,codigoDeBarra,marca,cor,faixaEtaria,categoria_id)
VALUES(79.67,5672587,"WHEY","BRANCO","18+",5);
INSERT INTO tb_produto(preco,codigoDeBarra,marca,cor,faixaEtaria,categoria_id)
VALUES(99.99,5582239,"INTEGRALMEDICA","BRANCO","14+",5);
INSERT INTO tb_produto(preco,codigoDeBarra,marca,cor,faixaEtaria,categoria_id)
VALUES(10.99,5942665,"NESTLE","LARANJA","LIVRE",4);
INSERT INTO tb_produto(preco,codigoDeBarra,marca,cor,faixaEtaria,categoria_id)
VALUES(399.99,599998,"ROCHE","PRETO","14+",3);

SELECT*FROM tb_produto;

SELECT*FROM tb_produto WHERE preco > 50;
SELECT*FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT*FROM tb_produto WHERE nome LIKE "%b%";
SELECT*FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;