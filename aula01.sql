-- Criar banco de dados
CREATE DATABASE restau_calabresa;

-- definir qual banco de dados que utilizaremos
USE restau_calabresa;

-- Criar tabela
CREATE TABLE funcionarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

-- APRESENTAR AS TABELAS
SHOW TABLES;

-- Visualizar a tabela como ela é
DESCRIBE funcionarios;

-- Cadastrar um registro
-- INSERT INTO <nome-tabela> (colunas) VALUE (valores);
INSERT INTO funcionarios  (nome) VALUES ("Justin Bieber");

-- Consultar registros
-- SELECT <colunas> FROM <tabela>;
SELECT id, nome FROM funcionarios;

-- adicionar uma coluna em uma tabela existente
-- ALTER TABLE <nome_tabela> ADD COLUMN <nome_coluna> <TIPO_COLUNA>;
ALTER TABLE funcionarios ADD COLUMN cargo VARCHAR(30);

-- Consultar os registros
SELECT id, nome, cargo FROM funcionarios;

-- adicionar coluna data de nascimento
ALTER TABLE funcionarios ADD COLUMN data_nascimento DATE;

-- adicionar coluna salario
ALTER TABLE funcionarios ADD COLUMN salario DOUBLE;

-- Consultar todas as colunas da tabela funcionarios
SELECT id, nome, cargo, data_nascimento, salario FROM funcionarios;

-- atualizar dados de um registro
-- UPDATE <nome_tabela> SET <coluna> = <valor>
UPDATE funcionarios SET cargo = "Garçom" WHERE id = 1;


-- atualizar mais de uma coluna por vez
UPDATE funcionarios SET 
  data_nascimento = "1998-01-09",
  salario = 2500.20
  WHERE id = 1;


INSERT INTO funcionarios (nome, cargo, data_nascimento, salario)
     VALUE("ELIAS da Silva", "Caixa", "2000-07-12", 1996.50);
INSERT INTO funcionarios (nome, cargo, data_nascimento, salario)
     VALUE("Victor sem C", "Manobrista", "2012-09-29", 300.00);
INSERT INTO funcionarios (nome, cargo, data_nascimento, salario)
     VALUE("Peter Souza", "Cozinheiro Junior", "1995-02-28", 6795.30);

-- Consultar todas as colunas da tabela funcionarios
SELECT id, nome, cargo, data_nascimento, salario FROM funcionarios;




