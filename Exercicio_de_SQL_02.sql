CREATE DATABASE db_genetation_game_online;

USE db_genetation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    nome_jogo VARCHAR(50),
    genero_jogo VARCHAR(50),
	PRIMARY KEY(id)
);


CREATE TABLE tb_personagens(
	id_personagens BIGINT AUTO_INCREMENT,
	personagem VARCHAR(100),
    poder_atk DECIMAL(6,2),
    poder_def DECIMAL(6,2),
    classe VARCHAR(50),
    arma VARCHAR(50),
	id_classe BIGINT,
	PRIMARY KEY(id_personagens),
    FOREIGN KEY(id_classe) REFERENCES tb_classes(id)
);	


INSERT INTO tb_classes(nome_jogo,genero_jogo) VALUES 
("D&D", "Aventura"),
("Minecraft", "Arcade"),
("World of War Craft", "Aventura"),
("The Sims", "Arcade"),
("Warzone", "Ação");

SELECT * FROM tb_classes;


INSERT INTO tb_personagens(id_classe,personagem,poder_atk,poder_def,classe,arma) VALUES 
(1,"Clauber",9000.00,9000.00,"Amapaense","BSM"),
(2,"Steve",1250.00,900.00,"Orc","Porrete de madeira"),
(4,"Gabriel",1.00,1.00,"Sin","Palavras"),
(5,"Ghost",3500,1902.00,"Soldado","M4-A1"),
(1,"Jess",9000.00,9000.00,"Paulista","SQL/Spring"),
(3,"Ceni",6500.00,9000.00,"Goleiro","Luvas"),
(5,"Alfa",1700.00,3200.00,"Soldado de Elite","AK-47");

SELECT * FROM tb_personagens;


SELECT * FROM tb_personagens WHERE poder_atk > 2000.00;
SELECT * FROM tb_personagens WHERE poder_def >= 1000.00 AND poder_def <= 2000.00; 

SELECT * FROM tb_personagens WHERE personagem LIKE "%C%";





SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_classe;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_classe
WHERE tb_classes.nome_jogo = "Warzone";

