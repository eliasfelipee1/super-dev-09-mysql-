-- tabelas_relacionadas.sql
DROP DATABASE IF EXISTS biblioteca;

CREATE DATABASE biblioteca;

USE biblioteca;


-- Categoria é nx1, pois a categoria tem varios livros
CREATE TABLE categorias ( 
    id INT PRIMARY KEY AUTO_INCREMENT, -- chave Primaria (PK) da tabela de categorias
    nome VARCHAR(50) NOT NULL

);


-- Livro é 1xn, pois o livro tem uma categoria
CREATE TABLE livros(
    id INT PRIMARY KEY AUTO_INCREMENT, -- chave primaria (PK)
    nome VARCHAR(100) NOT NULL,
    id_categoria INT NOT NULL,
    -- chave estrangeira (FK): relaciomento com chave primaria (PK) de outra tabela
    FOREIGN KEY(id_categoria) references categorias(id)
);


INSERT INTO categorias (nome) VALUES
("critica"), -- 1
("Comedia"), -- 2
("Aventura"), -- 3

SELECT id, nome FROM categorias;
SELECT id, nome, id_categorias FROM livros;

INSERT INTO categorias (nome) VALUES ("Motivacao");

INSERT INTO livros (nome, id_categorias) VALUES
("Evolucao dos  bichos", 1),
("Big Brother e a mentira", 1),
("Diario de um banana", 2),
("Monica", 2),
("Percy Jackson 1", 3),
("Habitos Atomicos", 4);


SELECT id, nome FROM categorias;

SELECT
    livros.id,
    livros.nome AS 'livro',
    categorias.nome AS 'Categoria'
FROM livros
INNER JOIN categorias ON ( livros.id_categorias = categorias.id);


