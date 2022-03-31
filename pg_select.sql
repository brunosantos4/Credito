CREATE TABLE dados AS
SELECT 
	a."IDCREDITO",
	a."Duracao",
	f."HISTORICO",
	j."PROPOSITO",
	a."Valor",
	g."INVESTIMENTOS",
	b."EMPREGO",
	a."TempoParcelamento",
	c."ESTADOCIVIL",
	d."FIADOR",
	a."ResidenciaDesde",
	a."Idade",
	h."OUTROSFINANCIAMENTOS",
	e."HABITACAO",
	a."EmprestimoExistente",
	i."PROFISSAO",
	a."Dependentes",
	a."SocioEmpresa",
	a."Estrangeiro",
	a."Status"
FROM "CREDITO" as a
	LEFT JOIN "EMPREGO" b             ON a."Emprego" = b."IDEMPREGO"
	LEFT JOIN "ESTADOCIVIL" c         ON a."EstadoCivil" = c."IDESTADOCIVIL"
	LEFT JOIN "FIADOR" d              ON a."FiadorTerceiros" = d."IDFIADOR"
	LEFT JOIN "HABITACAO" e           ON a."Habitacao" = e."IDHABITACAO"
	LEFT JOIN "HISTORICO_CREDITO" f   ON a."HistoricoCredito" = f."IDHISTCRED"
	LEFT JOIN "INVESTIMENTOS" g       ON a."Investimentos" = g."IDINVESTIMENTOS"
	LEFT JOIN "OUTROSFINANC" h        ON a."OutrosFinanciamentos" = h."IDOUTROSFINANC"
	LEFT JOIN "PROFISSAO" i           ON a."Profissao" = i."IDPROFISSAO"
	LEFT JOIN "PROPOSITO" j           ON a."Proposito" = j."IDPROPOSITO"