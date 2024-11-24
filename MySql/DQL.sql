USE ong_database;

-- View criada por Maria
CREATE VIEW adocao_dados_completos AS
SELECT ad.status_adocao, ad.data_solicitacao, CONCAT(u.nome, ' ', u.sobrenome) AS nome_completo_usuario, u.telefone, u.email, an.nome AS Nome_animal, an.especie
FROM adocao AS ad
JOIN usuario AS u ON ad.CPF_usuario = u.CPF
JOIN animal AS an ON ad.id_animal = an.id_animal;

-- View criada por Ana Lívia
#Saber total arrecadado financeiro
CREATE VIEW contribuicao_total_ONG as
SELECT CR.valor_fixo, CR.data_cobranca, CR_id, CF.id, CF.valor, CF.data_contribuicao, U.CPF
FROM contribuicao_recorrente as CR, contribuicao_financeira as CF, usuario as U
WHERE  CR.valor_fixo = valor_recorrente and CF.valor = valor_contribuicao_unica and CR.id = id_recorrente and
 CF.id = id_contribuicao_unica and 	CR.data_cobranca = data_contribuicao_recorrente
 and CF.data_contribuicao = data_contribuicao_unica and U.CPF = CPF
(CF.valor + CR.valor_fixo) = (select max ( valor_contribuicao_unica + valor_recorrente )
 and date (data_contribuicao) between  '2024-11-01'and '2024-11-30' 
 and date (data_cobranca) between '2024-11-01' and '2024-11-30'
 from usuario); 
 
 -- View criada por Cristane
 CREATE VIEW View_Adocao AS
SELECT  A.id AS id_adocao, A.status_adocao, A.data_solicitacao, A.data_adocao, An.nome AS nome_animal, An.especie AS especie_animal, U.nome AS nome_usuario, U.email AS email_usuario
FROM Adocao A
JOIN Animal An ON A.id_animal = An.id_animal
JOIN Usuario U ON A.CPF_Usuario = U.CPF;

-- View criada por Maria Ferreira
CREATE VIEW View_Contribuicoes AS
SELECT 
    CF.id,
    U.Nome AS Nome_Usuario,
    U.Email,
    CF.Valor,
    CF.Data_Contribuicao,
    CF.id_metodoPagamento
FROM 
    Contribuicao_financeira AS CF
JOIN 
    Usuario AS U 
ON 
	CF.CPF_usuario = U.CPF;
    
CREATE VIEW View_Animais_Disponiveis AS
SELECT 
A.id_animal,
A.nome AS Nome_Animal,
A.idade,
A.especie,
A.sexo,
A.peso,
A.descricao,
A.deficiencia,
A.doenca,
A.data_registro,
IF(A.ativo = 1, 'Disponível', 'Adotado') AS Status
FROM Animal AS A WHERE 
A.ativo = 1;  



