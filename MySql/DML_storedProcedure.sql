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
