CREATE TABLE tb_escola(
id BIGINT NOT NULL AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
nota INT,
RA INT NOT NULL,
peso DECIMAL(5,2),
idade INT,
sexo enum ('M','F','NB'),

PRIMARY KEY(id)
);
DROP TABLE tb_escola;
INSERT INTO tb_escola(nome,nota,RA,peso,idade,sexo) VALUES("Carlos",3,1120213064,70,22,"M");
INSERT INTO tb_escola(nome,nota,RA,peso,idade,sexo) VALUES("Pierre",7,1120218940,88,17,"NB");
INSERT INTO tb_escola(nome,nota,RA,peso,idade,sexo) VALUES("Cassandra",5,1120210640,70.88,22,"F");
INSERT INTO tb_escola(nome,nota,RA,peso,idade,sexo) VALUES("João",2,1120216034,99.9,23,"M");
INSERT INTO tb_escola(nome,nota,RA,peso,idade,sexo) VALUES("Raquel",10,1120218770,80.8,25,"F");
INSERT INTO tb_escola(nome,nota,RA,peso,idade,sexo) VALUES("Valesca",9,1120218960,70.66,26,"NB");
INSERT INTO tb_escola(nome,nota,RA,peso,idade,sexo) VALUES("Roberta",2,1120217770,60.9,24,"F");
INSERT INTO tb_escola(nome,nota,RA,peso,idade,sexo) VALUES("Maria",4,1120213090,99.9,28,"F");
select*from tb_escola where nota<7;