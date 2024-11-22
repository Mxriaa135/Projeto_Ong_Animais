USE ong_database;
INSERT INTO tipo_usuario (descricao) VALUES ('Administrador'), ('Usuario'), 
('Doador'), ('Voluntário'), ('Adotante'), ('Contribuinte');

INSERT INTO metodo_pagamento (descricao) VALUES ('PIX'), ('Cartão de Crédito'), 
('Cartão de Débito'), ('Boleto bancário');

INSERT INTO usuario(CPF, nome, sobrenome, email, senha, sexo, data_nascimento, telefone) VALUES 
('52541088846', 'Maria Clara', 'Corrêa Moraes', 'mariaclaracorreamoraes@gmail.com', 'clara123', 'F', '2005-11-09', '11980300414'), 
('83274873465', 'Rodrigo', 'Santos Fernandes', 'rodriguinho34@gmail.com', 'rodri980304', 'M', '1998-04-03', '11923453489'),
('88728982984', 'Olívia', 'Rodrigues dos Santos', 'livisantos@gmail.com', 'livi4004rs', 'F', '2000-08-29', '11938264389'),
('48783632105', 'Ana Lívia', 'Marques Wermelinger', 'amarques123@gmail.com', '1234ana', 'F', '2000-10-18','11973451234'),
('43591864307', 'Paulo', 'de Araujo Valverde', 'paulinho1994@gmail.com', '1bf245','M', '1994-08-07','11945634567'),
('35748693883', 'Sandra', 'de Jesus', 'jesus@hotmail.com', 'eu345ue', 'F', '1984-05-12', '11957756830'),
('36709925691','Giovanne', 'Prado Brito', 'pradobg@gmail.com', 'Gpr4d0', 'M', '1980-12-22', '11957899600');
-- ('', 'Nicoly', '', ''),
-- ('', 'Cristane', ''),
-- ('', 'Gabriel', ''), 
-- ('', 'Maria Clara', 'Ferreira Rodrigues', '')
;

INSERT INTO usuario_tipo (id_TipoUsuario, CPF_usuario) VALUES 
('1', '52541088846'),
('1', '48783632105'),
('5', '83274873465'),
('3', '88728982984'),
('6', '88728982984'),
('4', '48783632105'),
('5', '43591864307'),
('3','43591864307'),
('5','35748693883'),
('6','35748693883'),
('3', '48783632105'),
('6', '43591864307'),
('6', '36709925691');
-- ('','')...


INSERT INTO animal (nome, idade, sexo, peso, especie, descricao) VALUES 
('Pipoca', 14, 'M', 5.500, 'cachorro', 'Muito brincalhão'),
('Lilica', 20, 'F', 5.289, 'gato', 'Muito carinhosa e brincalhona');

INSERT INTO animal (nome, idade, sexo, peso, especie, descricao, deficiencia, doenca) VALUES
('Torresmo', 84, 'M', 20.399, 'cachorro', 'Dócil e brincalhão, adora cosquinha na barriga', 'cego', 'renal cronico'),
('Leticia', 24, 'F', 6.438, 'gato', 'Dorminhoca e carinhosa', 'amputação pata esquerda traseira', 'felv');

-- INSERT INTO animal (nome, idade, sexo, peso, especie, descricao, deficiencia, doenca) VALUES ();

INSERT INTO adocao (id_animal, CPF_usuario) VALUES 
('1', '83274873465'),
('2', '52541088846'),
('3', '43591864307'),
('4', '35748693883');

INSERT INTO doacao_item (nome_item, foto, CPF_usuario ) VALUES 
('Ração', '', '88728982984'),
('Shampoo para cachorros', '', '52541088846'),
('Ração', '', '48783632105'),
('Roupa para cachorro', '', '48783632105');

INSERT INTO Contribuicao_financeira (valor, CPF_usuario, id_metodoPagamento) VALUES
(5.00, '52541088846', 1),
(10.00, '88728982984', 1),
(30.00, '36709925691',1),
(50.00, '43591864307',1);

INSERT INTO Contribuicao_recorrente (valor_fixo, frequencia, CPF_usuario, id_metodoPagamento) VALUES
('30.00', 'Mensalmente', '52541088846', 2),
('20.00', 'Trimestral', '83274873465', 2),
('50.00', 'Mensalmente',  '36709925691',3),
('150.00', 'Trimestral', '43591864307', 2)
;

