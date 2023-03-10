-- Criar BD's
CREATE DATABASE db_pizzaria_legal;
-- Usando o BD
USE db_pizzaria_legal;


-- Criando a primeira tabela 
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipoP VARCHAR(10),
    tamanhoP VARCHAR(20),
	PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
	idPizza BIGINT AUTO_INCREMENT,
    sabor VARCHAR(50),
    
    PRIMARY KEY(idPizza)
);







-- SELECT tb_personagem.nome, tb_personagem.nivel, tb_classes.nome as classe
-- No meu fiz a consulta usando o id

-- SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe = tb_classes.id_classe WHERE id_classe = 5;
