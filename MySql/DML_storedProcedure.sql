USE ong_database;

-- Funções da tabela Usuario

DELIMITER //
CREATE PROCEDURE inserirUsuarios(
	IN p_CPF CHAR(11),
    IN p_nome VARCHAR(15),
    IN p_sobrenome VARCHAR(40),
    IN p_email VARCHAR(50),
    IN p_senha VARCHAR(20),
    IN p_sexo CHAR(1),
    IN p_data_nascimento DATE,
    IN p_telefone CHAR(11)
)
BEGIN
	INSERT INTO Usuario (CPF, nome, sobrenome, email, senha, sexo, data_nascimento, telefone) 
    VALUES (p_CPF, p_nome, p_sobrenome, p_email, p_senha, p_sexo, p_data_nascimento, p_telefone);

END //

CREATE PROCEDURE desativarUsuarios(
	IN p_CPF CHAR(11)
)
BEGIN
	UPDATE Usuario SET status_registro = 0 WHERE p_CPF = CPF;
END//

CREATE PROCEDURE excluirUsuario(
	IN p_CPF CHAR(11)
)
BEGIN
	DELETE FROM Usuario WHERE p_CPF = CPF;
END//
DELIMITER ;

-- Funções da tabela Animais

DELIMITER //
CREATE PROCEDURE InserirAnimal (
    IN p_nome VARCHAR(15),
    IN p_idade INT ,
    IN p_sexo CHAR(1),
    IN p_peso FLOAT,
    IN p_especie VARCHAR(8),
    IN p_descricao VARCHAR(100),
    IN p_deficiencia VARCHAR(15),
    IN p_doenca VARCHAR(15))
    
BEGIN
    INSERT INTO Animal ( nome, idade, sexo, peso, especie, descricao, deficiencia, doenca) 
    VALUES (p_nome, p_idade, p_sexo, p_peso, p_especie, p_descricao, p_deficiencia, p_doenca);
END//

CREATE PROCEDURE AtualizarAnimal (
    IN p_id INT,
    IN p_novo_nome VARCHAR (15)
)
BEGIN
    UPDATE Animal
    SET nome = p_novo_nome
    WHERE id = p_id;
END//
    
CREATE PROCEDURE DeleterAnimal (
	IN p_id INT)
BEGIN 
	DELETE FROM Animal WHERE p_id = id;
END//
    DELIMITER ;
    
-- Funções da tabela Adocao
DELIMITER //

CREATE PROCEDURE InserirAdocao(
    IN p_observacao VARCHAR(100),
    IN p_id_animal INT,
    IN p_CPF_usuario CHAR(11)
)
BEGIN
    INSERT INTO Adocao (observação, id_animal, CPF_Usuario)
    VALUES (p_observacao, p_id_animal, p_CPF_usuario);
END //

	CREATE PROCEDURE AtualizarAdocao(
    IN p_id INT,
    IN p_status CHAR(1),
    IN p_observacao VARCHAR(100),
    IN p_data_adocao DATE
	)
	BEGIN
    UPDATE Adocao
    SET status_adocao = p_status, observação = p_observacao, data_adocao = p_data_adocao
    WHERE id = p_id;
END //

	CREATE PROCEDURE ExcluirAdocao(
    IN p_id INT
	)
    BEGIN
    DELETE FROM Adocao WHERE id = p_id;
END //
DELIMITER ;

-- Funções da tabela Contibuicao_financeira

DELIMITER //

CREATE PROCEDURE inserirContribuicao (
    IN p_Valor DECIMAL(10, 2),
    IN p_CPF_usuario CHAR(11),
    IN p_id_metodoPagamento INT
)
BEGIN
    INSERT INTO Contribuicao_Financeira (Valor, CPF_Usuario, id_metodoPagamento)
    VALUES (p_Valor, p_CPF_usuario, p_id_metodoPagamento);
END //

CREATE PROCEDURE atualizarContribuicao (
    IN p_id INT,
    IN p_valor FLOAT
)
BEGIN
    UPDATE Contribuicao_financeira SET valor = p_Valor WHERE id = p_id;
END //

CREATE PROCEDURE excluirContribuicao (
    IN p_id INT
)
BEGIN
    DELETE FROM Contribuicao_financeira WHERE id = p_id;
END //

DELIMITER ;


-- Funções da tabela Doacao_item

DELIMITER //

CREATE PROCEDURE AtualizarDoacaoItem(
    IN p_id_doacao INT,
    IN p_id_item INT,
    IN p_id_doador INT,
    IN p_data_doacao DATE,
    IN p_descricao VARCHAR(255)
)
BEGIN
    UPDATE Doacao_Item
    SET
        id_item = p_id_item,
        id_doador = p_id_doador,
        data_doacao = p_data_doacao,
        descricao = p_descricao
    WHERE id = p_id_doacao;
END //

CREATE PROCEDURE InserirDoacaoItem(
    IN p_nome_item VARCHAR(30),
    IN p_foto VARCHAR(225),
    IN p_status_doacao CHAR(1),
    IN p_observacao VARCHAR(100),
    IN p_data_solicitacao DATE,
    IN p_CPF_usuario CHAR(11)
)
BEGIN
    INSERT INTO Doacao_Item (nome_item, foto, status_doacao, observacao, data_solicitacao, CPF_usuario)
    VALUES (p_nome_item, p_foto, p_status_doacao, p_observacao, p_data_solicitacao, p_CPF_usuario);
END //

CREATE PROCEDURE DeletarDoacaoItem(
    IN p_id INT
)
BEGIN
    DELETE FROM Doacao_Item WHERE id = p_id;
END //

DELIMITER ;

-- Funções da tabela Contribuicao_recorrente

DELIMITER //
CREATE PROCEDURE InsertContribuicaoRecorrente (
    IN p_valor_fixo FLOAT,
    IN p_data_cobranca DATE,
    IN p_frequencia VARCHAR(20),
    IN p_CPF_usuario CHAR(11),
    IN p_id_metodoPagamento INT
)
BEGIN
    INSERT INTO Contribuicao_recorrente (valor_fixo, data_cobranca, frequencia, CPF_usuario, id_metodoPagamento)
    VALUES (p_valor_fixo, p_data_cobranca, p_frequencia, p_CPF_usuario, p_id_metodoPagamento);
END //

CREATE PROCEDURE UpdateContribuicaoRecorrente (
    IN p_id INT,
    IN p_valor_fixo FLOAT,
    IN p_data_cobranca DATE,
    IN p_frequencia VARCHAR(20),
    IN p_CPF_usuario CHAR(11),
    IN p_id_metodoPagamento INT
)
BEGIN
    UPDATE Contribuicao_recorrente
    SET
        valor_fixo = p_valor_fixo,
        data_cobranca = p_data_cobranca,
        frequencia = p_frequencia,
        CPF_usuario = p_CPF_usuario,
        id_metodoPagamento = p_id_metodoPagamento
    WHERE id = p_id;
END //

CREATE PROCEDURE DeleteContribuicaoRecorrente (
    IN p_id INT
)
BEGIN
    DELETE FROM Contribuicao_recorrente WHERE id = p_id;
END //

DELIMITER ;




    
    