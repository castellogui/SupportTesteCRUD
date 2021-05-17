CREATE DATABASE db_supportteste;

USE db_supportteste;

CREATE TABLE tb_pessoa(
codigo INT PRIMARY KEY auto_increment,
nome VARCHAR(200),
telefone VARCHAR(14),
email VARCHAR(200)
);

SELECT * from tb_pessoa;
