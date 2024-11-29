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
('36709925691','Giovanne', 'Prado Brito', 'pradobg@gmail.com', 'Gpr4d0', 'M', '1980-12-22', '11957899600'),
('58963578818', 'João', 'Silva', 'joao.silva@email.com', 'jos1lva', 'M', '1997-04-03', '11987654321'),
('53328174916', 'Maria', 'Souza', 'maria.souza@email.com', 'msouza321', 'F', '1995-04-04', '21987654321'),
('12345678901', 'João Henrique', 'Prado', 'joaoprado@email.com', 'senha123', 'M', '1980-08-10', '11999999999'),
('98765432100', 'Maria Clara', 'Ferreira Rodrigues', 'mariaferreira@email.com', 'senha456','F', '2005-09-21', '11988888888'),
('12345678910', 'Olavo', 'de Carvalho', 'olavodecarvalho@hotmail.com', 'olavo123', 'M', '1980-08-11', '11911234556'),
('12345678801', 'Carlos', 'Silva Oliveira', 'carlos.silva@email.com', 'senha123', 'M', '1992-07-15', '11987654321'),
('56781234567', 'Juliana', 'Martins Rocha', 'julianamartins@gmail.com', 'jmr12345', 'F', '1992-05-20', '11934567890'),
('87654321098', 'Felipe', 'Costa Almeida', 'felipe.costa@email.com', 'felipe123', 'M', '1988-11-14', '11987654320');

INSERT INTO usuario_tipo (id_TipoUsuario, CPF_usuario) VALUES 
('1', '52541088846'),
('1', '48783632105'),
('2', '83274873465'),
('2', '88728982984'),
('2', '43591864307'),
('2', '35748693883'),
('2', '36709925691'),
('2', '53328174916'),
('2', '58963578818'),
('1', '98765432100'),
('2', '12345678910'),
('2', '12345678801'),
('2', '56781234567'),
('2', '87654321098');

INSERT INTO animal (nome, idade, sexo, peso, especie, descricao) VALUES 
('Pipoca', 14, 'M', 5.500, 'cachorro', 'Muito brincalhão'),
('Lilica', 20, 'F', 5.289, 'gato', 'Muito carinhosa e brincalhona'),
('Chanel', 24, 'F', 5.400, 'cachorro', 'Muito companheira'),
('Snoopy', 20, 'M', 5.500, 'cachorro', 'Muito dócil e carinhoso' ),
('Atlas', 90, 'M', 9.289, 'gato', 'Velhinho e bem quietinho, mas ainda adora um carinho e colo'),
('Princesa', 108, 'F', 15.289, 'cachorro', 'Muito brincalhona e alegre, adora um carinho'),
('Pipoco', 6, 'M', 5.0, 'gato', 'Muito esperto e carinhoso'), 
('Neymar', 3, 'M', 5.289, 'gato', 'Muito carinhoso e amavel'),
('Tutu', 4, 'M', 1.500, 'gato', 'Muito elétrico e "miante"'),
('Hercules', 3, 'M', 1.400 , 'cachorro', 'muito animado e carinhoso'),
('Pandora', 18, 'F', 5.000, 'gato', 'Desanimada e arisca, precisa de cuidados adequados' );

INSERT INTO animal (nome, idade, sexo, peso, especie, descricao, deficiencia) VALUES
('Floquinho', 48, 'M', 9.387, 'gato', 'Bem tímido mas muito carinhoso', 'Surdo');

INSERT INTO animal (nome, idade, sexo, peso, especie, descricao, deficiencia, doenca) VALUES
('Torresmo', 84, 'M', 20.399, 'cachorro', 'Dócil e brincalhão, adora cosquinha na barriga', 'cego', 'renal cronico'),
('Leticia', 24, 'F', 6.438, 'gato', 'Dorminhoca e carinhosa', 'amputação pata esquerda traseira', 'felv');

INSERT INTO adocao (id_animal, CPF_usuario) VALUES 
('1', '83274873465'),
('2', '52541088846'),
('3', '43591864307'),
('4', '35748693883'),
('5', '53328174916'),
('6', '58963578818'),
('7', '36709925691'),
('8', '12345678901'),
('9','12345678910'),
('10', '12345678801');

INSERT INTO doacao_item (nome_item, foto, CPF_usuario ) VALUES 
('Ração', '', '88728982984'),
('Shampoo para cachorros', '', '52541088846'),
('Ração', '', '48783632105'),
('Roupa para cachorro', '', '48783632105'),
('Toalha', '', '58963578818 '),
('Caminha', '', '53328174916'),
('Shampoo para gatos', '', '12345678901'),
('Condicionador para gatos', '', '12345678901'),
('Agua', '', '12345678801'), 
('Shampoo', '', '12345678910'),
('Brinquedo para cachorro', '', '56781234567'),
('Coleira para gato', '', '87654321098');


INSERT INTO Contribuicao_financeira (valor, CPF_usuario, id_metodoPagamento) VALUES
(5.00, '52541088846', 1),
(10.00, '88728982984', 1),
(30.00, '36709925691',1),
(50.00, '43591864307',1),
(40.00, '53328174916', '1'),
(20.00, '58963578818', '1'),
(50.00, '12345678901', '2'),
(150.00, '98765432100', '4'),
(25.00, '12345678801', 1), 
(15.00, '12345678910', 2),
(100.00, '87654321098', 2); 

INSERT INTO Contribuicao_recorrente (valor_fixo, frequencia, CPF_usuario, id_metodoPagamento) VALUES
('30.00', 'Mensalmente', '52541088846', 2),
('20.00', 'Trimestral', '83274873465', 2),
('50.00', 'Mensalmente',  '36709925691',3),
('150.00', 'Trimestral', '43591864307', 2),
('80.00','Mensalmente', '58963578818', '1'),
('20.00', 'Mensalmente', '53328174916', '1'),
('100', 'Semestral', '12345678901', '2'),
('300', 'Anual', '98765432100', 2),
(40.00, 'Mensalmente', '12345678801', 2),  
(50.00, 'Trimestral', '12345678910', 1),
('60.00', 'Mensalmente', '87654321098', 3);

