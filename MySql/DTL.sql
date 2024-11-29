DELIMITER //
START TRANSACTION;

UPDATE adocao SET status_adocao = 'A' WHERE id_animal = 2; 
UPDATE animal SET ativo = 0 WHERE id_animal = 2;
UPDATE adocao SET data_adocao = CURDATE() WHERE id_animal = 2;

IF (SELECT status_adocao FROM adocao WHERE id_animal = 2) = 'P' 
    COMMIT;
ELSE
	ROLLBACK;
END IF;
END //
DELIMITER ;
