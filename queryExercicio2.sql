CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
preço decimal(7,2),
cor VARCHAR(255),
fabricante VARCHAR(255),
origem VARCHAR(255),

PRIMARY KEY(id)

);
INSERT INTO tb_produtos(tipo,preço,cor,fabricante,origem) VALUES ("Shampoo",25.00,"Branco","SEDA","Brasil");
INSERT INTO tb_produtos(tipo,preço,cor,fabricante,origem) VALUES ("Skate",499.00,"Colorido","Fatal Surf","Brasil");
INSERT INTO tb_produtos(tipo,preço,cor,fabricante,origem) VALUES ("Óculos",500.00,"Preto","Chilibeans","Brasil");
INSERT INTO tb_produtos(tipo,preço,cor,fabricante,origem) VALUES ("Celular",4800.00,"Prata","Samsung","Indonesia");
INSERT INTO tb_produtos(tipo,preço,cor,fabricante,origem) VALUES ("Celular",5000.44,"Vermelho","Apple","Taiwan");
INSERT INTO tb_produtos(tipo,preço,cor,fabricante,origem) VALUES ("Bola de futebol",10.00,"Azul","Whang","China");
INSERT INTO tb_produtos(tipo,preço,cor,fabricante,origem) VALUES ("Lava Roupas",4999.99,"Branco","Eletrolux","Brasil");
INSERT INTO tb_produtos(tipo,preço,cor,fabricante,origem) VALUES ("Notebook",8400.00,"Preto","Toshiba","Japão");

select*from tb_produtos where preço>500;

UPDATE tb_produtos set cor = "Preto" where id =4;