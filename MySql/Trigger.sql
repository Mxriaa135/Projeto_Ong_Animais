DELIMITER //
CREATE TRIGGER usuario_novo_tipo
AFTER INSERT ON Usuario
FOR EACH ROW 
BEGIN
	INSERT INTO usuario_tipo (id_TipoUsuario, CPF_usuario) VALUES (2, NEW.CPF);
END//
DELIMITER ;