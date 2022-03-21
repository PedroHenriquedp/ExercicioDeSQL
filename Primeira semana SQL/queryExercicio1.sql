
USE db_exercicio1;

CREATE TABLE tb_empresa(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
	RA int(11),
	sexo enum('M','F','B'),
    peso decimal(5,2),
	altura decimal(3,2),
	salário decimal,

	PRIMARY KEY(id)
);
select*from tb_empresa;

INSERT INTO tb_empresa(nome,RA,sexo,peso,altura,salário) VALUES('José Maria',1202188644,'M','70.02','1.70',1500.90);
INSERT INTO tb_empresa(nome,RA,sexo,peso,altura,salário) VALUES('Marcelo',1202177624,'M','83.27','1.69',12300.88);
INSERT INTO tb_empresa(nome,RA,sexo,peso,altura,salário) VALUES('Danilo',1202124994,'M','75.02','1.61',3270.78);
INSERT INTO tb_empresa(nome,RA,sexo,peso,altura,salário) VALUES('Mayara',1202144694,'F','88.02','1.59',5852.97);
INSERT INTO tb_empresa(nome,RA,sexo,peso,altura,salário) VALUES('Anna',1202185269,'B','50.02','1.68',9000.90);

select*from tb_empresa where salário>2000;

UPDATE tb_empresa set altura = 1.78 where id =2;
