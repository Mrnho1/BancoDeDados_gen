-- Criar o BD's
CREATE DATABASE empresa_RH;

-- Usar o BD
USE empresa_RH;


-- Criar a tabela
CREATE TABLE colaboradores (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    funcao VARCHAR(100),
    salario DECIMAL(8,2),
    hierarquia VARCHAR(30),
    ferias BOOLEAN
);

-- Mostrar todos os dados da tabela
SELECT * FROM colaboradores;


-- Inserindo os dados dos colaboradores
INSERT INTO colaboradores(nome_funcionario,funcao,salario,hierarquia,ferias) VALUES ("Jorge","Contador",2750.00,"Junior",false);
INSERT INTO colaboradores(nome_funcionario,funcao,salario,hierarquia,ferias) VALUES ("Amelia","Gerente",10500.00,"Senior",false);
INSERT INTO colaboradores(nome_funcionario,funcao,salario,hierarquia,ferias) VALUES ("Josefa","Fundadora",100000.00,"CEO",true);
INSERT INTO colaboradores(nome_funcionario,funcao,salario,hierarquia,ferias) VALUES ("Robertison","Estagiário",1200.00,"Estagiário",false);

-- Desabilitando a segurança
SET SQL_SAFE_UPDATES = 0;

-- Procurando o nome em especifico
SELECT nome_funcionario FROM colaboradores WHERE salario < 2000.00;
SELECT nome_funcionario FROM colaboradores WHERE salario > 2000.00;
-- Procurando todos os dados
SELECT * FROM colaboradores WHERE salario < 2000.00;
SELECT * FROM colaboradores WHERE salario > 2000.00;


-- Atualizando um dado
UPDATE colaboradores SET ferias=true WHERE id=2;


-- Mostrar todos os dados da tabela
SELECT * FROM colaboradores;
