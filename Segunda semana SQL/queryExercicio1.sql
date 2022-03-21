CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT NOT NULL,
	nivel INT,
	classe VARCHAR(255),
	gearScore INT,
	ranged BOOLEAN,
	dano VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT NOT NULL,
	nome VARCHAR(255),
	raca VARCHAR(255),
	vida INT,
	defesa INT,
	ataque INT,
    classe_id BIGINT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);
	INSERT INTO tb_classe(nivel,classe,gearScore,ranged,dano) 
    VALUES(32,"Lutador",300,FALSE,"Físico");
    INSERT INTO tb_classe(nivel,classe,gearScore,ranged,dano) 
    VALUES(50,"Mago",806,TRUE,"Mágico");
    INSERT INTO tb_classe(nivel,classe,gearScore,ranged,dano) 
    VALUES(50,"Bardo",1050,TRUE,"Mágico");
    INSERT INTO tb_classe(nivel,classe,gearScore,ranged,dano) 
    VALUES(46,"GunLancer",900,FALSE,"Físico");
    INSERT INTO tb_classe(nivel,classe,gearScore,ranged,dano) 
    VALUES(50,"Assasino",1100,FALSE,"Físico");
    
    SELECT*FROM tb_classe;
    
    INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
    VALUES("Hattori","Humana",5000,3650,4544,1);
    INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
    VALUES("Kayumi","Elfa",3000,1906,3000,1);
    INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
    VALUES("Motome","Anão",4506,2098,4878,1);
    INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
    VALUES("Umeki","Humana",2348,2198,2837,5);
    INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
    VALUES("Takeda","Humana",3985,2345,2984,1);
    INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
    VALUES("Cantones","Elfa",8787,2415,8746,4);
    INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
    VALUES("Kondo","Elfa",3487,2897,584,3);
    INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
    VALUES("Yoshiya","Humana",3984,2222,5854,5);
    
    SELECT*FROM tb_personagem;
    
    SELECT*FROM tb_personagem WHERE ataque >2000;
	SELECT*FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
    SELECT*FROM tb_personagem WHERE nome LIKE "%c%";
    SELECT*FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id;