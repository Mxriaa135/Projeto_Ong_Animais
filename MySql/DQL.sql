USE ong_database;

-- View criada por Maria
CREATE VIEW View_usuarios_ativos_tipos AS
SELECT 
	u.CPF,
    CONCAT(u.nome, ' ', u.sobrenome) AS nome_completo_usuario,
    t.descricao
FROM 
	usuario AS u, tipo_usuario AS t, usuario_tipo AS ut
WHERE
	u.CPF = ut.CPF_usuario
    AND ut.id_TipoUsuario = t.id
    AND u.ativo = 1
ORDER BY 
	u.CPF;

-- View criada por Ana Lívia
CREATE VIEW View_contribuicoes_ONG as
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
	AND DATE (data_contribuicao) BETWEEN  '2024-12-01' AND '2024-12-31' 
	AND DATE (data_cobranca) BETWEEN '2024-12-01' AND '2024-12-31';
 
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
    M.descricao AS metodo_pagamento
FROM 
    Contribuicao_financeira AS CF, Usuario AS U, metodo_pagamento AS M
WHERE 
	CF.CPF_usuario = U.CPF
    AND CF.id_metodoPagamento = M.id;

-- View criada por Gabriel
CREATE VIEW View_ContribuicaoRecorrenteUsuarioTipo AS
SELECT 
    cr.id AS id_contribuicao,
    CONCAT(u.nome, ' ', u.sobrenome) AS nome_completo_usuario, 
    cr.valor_fixo,
    cr.frequencia,
    cr.data_cobranca,
    m.descricao AS Metodo_pagamento
FROM 
    Contribuicao_recorrente cr, 
    Usuario u, 
    Metodo_pagamento M
WHERE 
	cr.CPF_usuario = u.CPF 
	AND cr.id_metodoPagamento = m.id;

-- View criada por Nicoly
CREATE VIEW View_Usuario_Doacao_Item AS
SELECT 
    u.CPF,
    u.nome AS nome_usuario,
    u.sobrenome AS sobrenome_usuario,
    u.email AS email_usuario,
    u.telefone AS telefone_usuario,
    d.nome_item AS item_doado
FROM 
    Usuario u, Doacao_item d
WHERE 
	d.CPF_usuario = u.CPF;

-- SELECT * FROM View_Usuarios_ativos_tipos;
-- SELECT * FROM View_contribuicoes_ONG;
-- SELECT * FROM View_Adocao;
-- SELECT * FROM View_Contribuicoes;
-- SELECT * FROM View_ContribuicaoRecorrenteUsuarioTipo;
-- SELECT * FROM View_Usuario_Doacao_Item;