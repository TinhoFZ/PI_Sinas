CREATE DATABASE sinTeste;

use sinTeste;

CREATE TABLE usuario (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
telefone VARCHAR(255) NOT NULL UNIQUE,
senha VARCHAR(255) NOT NULL
);

CREATE TABLE comunidade (
    id_comunidade INT PRIMARY KEY AUTO_INCREMENT,
    uf varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL,
    bairro varchar(255) NOT NULL
);

CREATE TABLE postagem (
id_postagem INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(255) NOT NULL,
texto VARCHAR(255) NOT NULL
);

SELECT * FROM usuario;
SELECT * FROM comunidade;
SELECT * FROM postagem;