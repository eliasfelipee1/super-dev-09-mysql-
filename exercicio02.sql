CREATE DATABASE pet_shop;

USE pet_shop;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    observacao VARCHAR(50)
);

INSERT INTO clientes (nome, observacao) VALUES ("Matheus", "nada");
INSERT INTO clientes (nome, observacao) VALUES ("Francisco", "nada");
INSERT INTO clientes (nome, observacao) VALUES ("Lucas", "nada");
INSERT INTO clientes (nome, observacao) VALUES ("Igor", "nada");

ALTER TABLE clientes ADD COLUMN sobrenome VARCHAR(50);

ALTER TABLE clientes ADD COLUMN telefone VARCHAR(20);

SELECT id, nome, observacao, sobrenome, telefone FROM clientes;


CREATE TABLE especies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)

);

INSERT INTO especies (nome, id) VALUES ("Gato", 1);
INSERT INTO especies (nome, id) VALUES ("Cachorro", 2);
INSERT INTO especies (nome, id) VALUES ("Coelho", 3);
INSERT INTO especies (nome, id) VALUES ("Ave", 4);

SELECT nome, id FROM especies;


CREATE TABLE racas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    id_especie INT NOT NULL,
    FOREIGN KEY(id_especie)REFERENCES especies(id)
);

INSERT INTO racas (nome, id_especie) VALUES ("Lobisomen", 1);
INSERT INTO racas (nome, id_especie) VALUES ("Lobo", 2);

SELECT 
    racas.nome,
    racas.id,
    especies.nome AS especie,
    especies.id
FROM racas
INNER JOIN especies ON(racas.id_especie = especies.id);


CREATE TABLE pets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    data_nascimento DATE,
    id_clientes INT NOT NULL,
    FOREIGN KEY(id_clientes) REFERENCES clientes(id),
    id_racas INT NOT NULL,
    FOREIGN KEY(id_racas) REFERENCES racas(id)
);


INSERT INTO pets (nome, data_nascimento, id_clientes, id_racas) VALUES ("pasto alemao", 2026, 1, 2, )