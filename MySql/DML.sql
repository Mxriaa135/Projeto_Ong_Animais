USE ong_database;
INSERT INTO tipo_usuario (descricao) VALUES ('Administrador'), ('Usuario'), 
('Doador'), ('Voluntário'), ('Adotante'), ('Contribuinte');

INSERT INTO metodo_pagamento (descricao) VALUES ('PIX'), ('Cartão de Crédito'), 
('Cartão de Débito'), ('Boleto bancário');

INSERT INTO usuario(CPF, nome, sobrenome, email, senha, sexo, data_nascimento, telefone) VALUES 
('52541088846', 'Maria Clara', 'Corrêa Moraes', 'mariaclaracorreamoraes@gmail.com', 'clara123', 'F', '2005-11-09', '11980300414'), 
('83274873465', 'Rodrigo', 'Santos Fernandes', 'rodriguinho34@gmail.com', 'rodri980304', 'M', '1998-04-03', '11923453489'),
('88728982984', 'Olívia', 'Rodrigues dos Santos', 'livisantos@gmail.com', 'livi4004rs', 'F', '2000-08-29', '11938264389'),
('', 'Ana Lívia', '', ''),
('', 'Nicoly', '', ''),
('', 'Cristane', ''),
('', 'Gabriel', ''), 
('', 'Maria Clara', 'Ferreira Rodrigues', '');

INSERT INTO usuario_tipo (id_TipoUsuario, CPF_usuario) VALUES 
('1', '52541088846'),
('5', '83274873465'),
('3', '88728982984'),
('6', '88728982984'),
('', ''),
('', ''); 

INSERT INTO animal (nome, idade, sexo, peso, especie, descricao) VALUES 
('Pipoca', 14, 'M', 5.500, 'cachorro', 'Muito brincalhão'),
('Lilica', 20, 'F', 5.289, 'gato', 'Muito carinhosa e brincalhona');

INSERT INTO animal (nome, idade, sexo, peso, especie, descricao, deficiencia, doenca) VALUES 
();

INSERT INTO adocao (id_animal, CPF_usuario) VALUES 
('1', '83274873465'),
('2', '52541088846');

INSERT INTO doacao_item (nome_item, foto, CPF_usuario ) VALUES 
('Ração', 'https://www.petshopjunior.com.br/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/r/a/ra_o_seca_premier_pet_golden_formula_carne_e_arroz_para_c_es_adultos_de_ra_as_pequenas_-_1_kg_3108193-1_1.jpg', '88728982984'),
('Shampoo para cachorros', '', '52541088846');

INSERT INTO Contribuicao_financeira (valor, CPF_usuario, id_metodoPagamento) VALUES
(5.00, '52541088846', 1),
(10.00, '88728982984', 1);

INSERT INTO Contribuicao_recorrente (valor_fixo, frequencia, CPF_usuario, id_metodoPagamento) VALUES
('30.00', 'Mensalmente', '52541088846', 2),
('20.00', 'Trimestral', '83274873465', 2);

