DELIMITER //
START TRANSACTION;

UPDATE animal SET ativo = 0 WHERE id_animal = 2;

IF (SELECT status_adocao FROM adocao WHERE id_animal = 2) = 'A' 
    COMMIT
ELSE
	ROLLBACK;
END IF;
END //
DELIMITER ;
