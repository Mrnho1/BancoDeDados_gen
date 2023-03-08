-- Comando para criar o banco de dados
CREATE DATABASE db_quitanda;
-- Comando para usarr o bd criado
USE db_quitanda;

-- Comando para criação de tabela
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    preco DECIMAL(6,2),
    
    PRIMARY KEY(id)
);

-- Trazer todos os dados da tabela desejada
SELECT * FROM tb_produtos;

-- Inserindo os dados na tabela 
INSERT INTO tb_produtos(nome_produto,preco) VALUES("Mexirica",7.00),("Banana",5.00);

-- Desativa o modo seguro
SET SQL_SAFE_UPDATES = 0;


-- Atualizar dado
UPDATE tb_produtos SET preco = 7.90 WHERE id = 6;




