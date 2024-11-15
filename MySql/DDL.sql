CREATE DATABASE ong_database;
USE ong_database;
CREATE TABLE Animal(
    id_animal INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(15) NOT NULL,
    idade SMALLINT,
    sexo CHAR(1) NOT NULL,
    peso FLOAT NOT NULL,
    especie VARCHAR(8) NOT NULL,
    descricao VARCHAR(100),
    deficiencia VARCHAR(15) NULL,
    doenca VARCHAR(15) NULL,
    data_registro DATE DEFAULT (CURDATE())
);

CREATE TABLE Usuario (
CPF INT PRIMARY KEY,
nome VARCHAR(15) NOT NULL,
sobrenome VARCHAR (40) NOT NULL,
email VARCHAR(50) NOT NULL,
sexo CHAR (1) NOT NULL,
data_nascimento DATE NOT NULL,
data_registro DATE DEFAULT (CURDATE())
);

CREATE TABLE tipo_usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR (100) NULL
);

CREATE TABLE usuario_tipo(
id_TipoUsuario INT,
CPF_usuario INT,
FOREIGN KEY(id_TipoUsuari) REFERENCES tipo_usuario (id),
FOREIGN KEY (CPF_Usuario) REFERENCES Usuario (CPF)
);

CREATE TABLE Adocao (
id INT PRIMARY KEY AUTO_INCREMENT,
status_adocao VARCHAR (10),
observação VARCHAR (100) NULL,
data_adocao DATE NOT NULL,
id_animal INT,
CPF_Usuario INT,
FOREIGN KEY (id_animal) REFERENCES Animal (id),
FOREIGN KEY (CPF_Usuario)REFERENCES Usuario (CPF)
);

CREATE TABLE  Doacao_Item (
id INT PRIMARY KEY AUTO_INCREMENT,
nome_item VARCHAR (20),

);