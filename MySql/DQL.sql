USE ong_database;

-- View criada por Maria
CREATE VIEW adocao_dados_completos AS
SELECT 
	ad.status_adocao, 
    ad.data_solicitacao, 
    CONCAT(u.nome, ' ', u.sobrenome) AS nome_completo_usuario, 
    u.telefone, 
    u.email, 
    an.nome AS Nome_animal, 
    an.especie
FROM adocao AS ad
JOIN usuario AS u ON ad.CPF_usuario = u.CPF
JOIN animal AS an ON ad.id_animal = an.id_animal;

-- View criada por Ana Lívia
#Saber total arrecadado financeiro
CREATE VIEW contribuicoes_ONG as
SELECT 
	U.CPF AS CPF,
    CR.id AS id_recorrente, 
	CR.valor_fixo AS valor_recorrente, 
    CR.data_cobranca AS data_contribuicao_recorrente, 
    CF.id AS id_contribuicao_unica, 
    CF.valor AS valor_contribuicao_unica, 
    CF.data_contribuicao AS data_contribuicao_unica
FROM 
	contribuicao_recorrente as CR, 
    contribuicao_financeira as CF, 
    usuario as U
WHERE u.CPF = CR.cpf_usuario 
	AND u.CPF = CF.CPF_usuario
	AND DATE (data_contribuicao) BETWEEN  '2024-11-01' AND '2024-11-30' 
	AND DATE (data_cobranca) BETWEEN '2024-11-01' AND '2024-11-30';
 
 -- View criada por Cristane
CREATE VIEW View_Adocao AS
SELECT 
	A.id AS id_adocao, 
    A.status_adocao, 
    A.data_solicitacao, 
    A.data_adocao, 
    An.nome AS nome_animal, 
    An.especie AS especie_animal, 
    CONCAT(u.nome, ' ', u.sobrenome) AS nome_completo_usuario, 
    U.email AS email_usuario
FROM 
	Adocao A, Usuario U, Animal an
WHERE 
	A.id_animal = An.id_animal 
    AND A.CPF_Usuario = U.CPF;

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
    Contribuicao_financeira AS CF, Usuario AS U
WHERE 
	CF.CPF_usuario = U.CPF;
    
-- View criada por Nicoly    
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

-- View criada por Gabriel
CREATE VIEW ContribuicaoRecorrenteUsuarioTipo AS
SELECT 
    cr.id AS id_contribuicao,
    CONCAT(u.nome, ' ', u.sobrenome) AS nome_completo_usuario, 
    cr.valor_fixo,
    cr.frequencia,
    cr.data_cobranca,
    t.descricao AS tipo_usuario
FROM 
    Contribuicao_recorrente cr, 
    Usuario U, 
    tipo_usuario t, 
    usuario_tipo ut
WHERE 
	cr.CPF_usuario = u.CPF 
	AND u.CPF = ut.CPF_usuario
    AND ut.id_TipoUsuario = t.id;
