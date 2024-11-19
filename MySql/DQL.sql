USE ong_database;

-- View criada por Maria
CREATE VIEW adocao_dados_completos AS
SELECT ad.status_adocao, ad.data_solicitacao, CONCAT(u.nome, ' ', u.sobrenome) AS nome_completo_usuario, u.telefone, an.nome AS Nome_animal, an.especie
FROM adocao AS ad
JOIN usuario AS u ON ad.CPF_usuario = u.CPF
JOIN animal AS an ON ad.id_animal = an.id_animal;