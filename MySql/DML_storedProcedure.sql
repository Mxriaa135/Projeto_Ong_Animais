USE ong_database;

-- Funções da tabela Usuario
#Função de Inserir dados da tabela Usuario
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

#Função update da tabela Usuario
CREATE PROCEDURE desativarUsuarios(
	IN p_CPF CHAR(11)
)
BEGIN
	UPDATE Usuario SET status_registro = 0 WHERE p_CPF = CPF;
END//

#Função delete da tabela Usuario
CREATE PROCEDURE excluirUsuario(
	IN p_CPF CHAR(11)
)
BEGIN
	DELETE FROM Usuario WHERE p_CPF = CPF;
END//
DELIMITER ;

-- Funções da tabela Animais
# Função para Inserir dados na tabela Animal
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
    
    INSERT INTO Animal ( nome, idade, sexo, peso, especie, descricao, deficiencia, doenca
    ) VALUES (p_nome, p_idade, p_sexo, p_peso, p_especie, p_descricao, p_deficiencia, p_doenca);
    END//
    
    # Função update da tabela Animal
    CREATE PROCEDURE AtualizarAnimal (
    IN p_id INT,
    IN p_novo_nome VARCHAR (15)
    )
    BEGIN
    UPDATE Animal
    SET nome = p_novo_nome
    WHERE id = p_id;
    END//
    
    #Função delete da tabela Animal
    CREATE PROCEDURE DeleterAnimal (
    IN p_id INT)
    BEGIN 
    DELETE FROM Animal WHERE p_id = id;
    END//
    DELIMITER ;
    
    
    -- Funções da tabela Adocao
# Função para Inserir dados na tabela Adocao
DELIMITER //

CREATE PROCEDURE InserirAdocao(
    IN p_status CHAR(1),
    IN p_observacao VARCHAR(100),
    IN p_id_animal INT,
    IN p_CPF_usuario CHAR(11)
)
BEGIN
    INSERT INTO Adocao (status_adocao, observação, id_animal, CPF_Usuario)
    VALUES (p_status, p_observacao, p_id_animal, p_CPF_usuario);
END //

	# Função update da tabela Adocao
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


	#Função delete da tabela Usuario
	CREATE PROCEDURE ExcluirAdocao(
    IN p_id INT
	)
    BEGIN
    DELETE FROM Adocao WHERE id = p_id;
END //
DELIMITER ;





    
    