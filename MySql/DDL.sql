CREATE DATABASE ong_database;
USE ong_database;
CREATE TABLE Animal(
    id_animal INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    idade INT CHECK(idade>2 AND idade<=240),
    sexo CHAR(1) NOT NULL CHECK(sexo="F" OR sexo="M"),
    peso FLOAT NOT NULL,
    especie VARCHAR(8) NOT NULL CHECK(especie="cachorro" OR especie="gato"),
    descricao VARCHAR(100) NULL,
    deficiencia VARCHAR(40) NULL DEFAULT 'Nenhuma',
    doenca VARCHAR(20) NULL DEFAULT 'Nenhuma',
    data_registro DATE DEFAULT (CURDATE()),
    ativo SMALLINT DEFAULT 1
);

CREATE INDEX idx_animal_ativo
ON Animal(ativo);

CREATE TABLE Usuario (
	CPF CHAR(11) PRIMARY KEY,
	nome VARCHAR(15) NOT NULL,
	sobrenome VARCHAR (40) NOT NULL,
	email VARCHAR(60) NOT NULL UNIQUE,
	senha VARCHAR(20) NOT NULL,
	sexo CHAR (1) NOT NULL CHECK(sexo="F" OR sexo="M" OR sexo="I"),
	data_nascimento DATE NOT NULL,
	telefone CHAR(11) NOT NULL,
	data_registro DATE DEFAULT (CURDATE()),
    ativo SMALLINT DEFAULT 1
);

CREATE INDEX idx_usuario_ativo
ON Usuario(ativo);

CREATE TABLE tipo_usuario (
	id SMALLINT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(15) NOT NULL UNIQUE CHECK(descricao='Administrador' OR descricao='Usuario' OR
	descricao='Voluntário' OR descricao='Doador' OR descricao='Adotante' OR descricao='Contribuinte')
);

CREATE TABLE Metodo_pagamento (
	id SMALLINT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(25) NOT NULL UNIQUE CHECK(descricao='PIX' OR
    descricao='Cartão de Crédito' OR descricao='Cartão de Débito' OR descricao='Boleto bancário')
);

CREATE TABLE usuario_tipo(
	id_TipoUsuario SMALLINT,
	CPF_usuario CHAR(11) NOT NULL,
	FOREIGN KEY(id_TipoUsuario) REFERENCES tipo_usuario (id),
	FOREIGN KEY (CPF_Usuario) REFERENCES Usuario (CPF),
	UNIQUE(id_TipoUsuario, CPF_usuario)
);

CREATE TABLE Adocao (
	id INT PRIMARY KEY AUTO_INCREMENT,
	status_adocao CHAR(1) NULL CHECK(status_adocao='P' OR status_adocao='A' OR status_adocao='R') DEFAULT 'P',
	observação VARCHAR (100) NULL,
	data_solicitacao DATE DEFAULT (CURDATE()),
	data_adocao DATE NULL,
	id_animal INT,
	CPF_Usuario CHAR(11) NOT NULL,
	FOREIGN KEY (id_animal) REFERENCES Animal (id_animal),
	FOREIGN KEY (CPF_Usuario)REFERENCES Usuario (CPF)
);

CREATE INDEX idx_adocao_status
ON adocao(status_adocao);

CREATE TABLE  Doacao_Item (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome_item VARCHAR (40),
	foto VARCHAR(225) NOT NULL,
	status_doacao CHAR(1) NULL CHECK(status_doacao='P' OR status_doacao='A' OR status_doacao='R')  DEFAULT 'P', 
	observacao VARCHAR(100) NULL DEFAULT 'Nenhuma',
	data_solicitacao DATE DEFAULT (CURDATE()),
	data_doacao DATE NULL,
	CPF_usuario CHAR(11) NOT NULL,
	FOREIGN KEY (CPF_usuario) REFERENCES Usuario (CPF)
);

CREATE INDEX idx_doacao_status
ON doacao_item(status_doacao);

CREATE TABLE Contribuicao_financeira(
	id INT PRIMARY KEY AUTO_INCREMENT,
	valor FLOAT NOT NULL CHECK(valor>2),
	observacao VARCHAR(100) NULL DEFAULT 'Nenhuma',
	data_contribuicao DATE DEFAULT (CURDATE()),
	CPF_usuario CHAR(11) NOT NULL,
	id_metodoPagamento SMALLINT NOT NULL,
	FOREIGN KEY (CPF_usuario) REFERENCES Usuario(CPF),
	FOREIGN KEY (id_metodoPagamento) REFERENCES Metodo_pagamento (id)
);

CREATE TABLE Contribuicao_recorrente(
	id INT PRIMARY KEY AUTO_INCREMENT,
	valor_fixo FLOAT NOT NULL CHECK(valor_fixo>2), 
	data_cobranca DATE DEFAULT (CURDATE()),
	frequencia VARCHAR(20) NOT NULL,
	CPF_usuario CHAR(11) NOT NULL,
	id_metodoPagamento SMALLINT NOT NULL,
	FOREIGN KEY (CPF_usuario) REFERENCES Usuario(CPF),
	FOREIGN KEY (id_metodoPagamento) REFERENCES Metodo_pagamento(id)
);