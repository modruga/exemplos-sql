create table Empregado (
 IDEmpregado    int not null
,NomeEmpregado  varchar(30) not null
,Cargo          varchar(15) not null
,IDGerente      int null
,DataAdmissao   date not null
,Salario        decimal(7,2) not null
,Comissao       decimal(7,2)
,IDDepartamento int
);

Create table CidadeEX
(
  IDCidade  int         not null,
  Nome      varchar(30) not null,
  UF        varchar(2)  not null,
    constraint PK_CidadeEX1 primary key (IDCidade)
);

create table Departamento (
 IDDepartamento   int not null
,NomeDepartamento varchar(30)
,Localizacao      varchar(25)
);



SELECT	IDEmpregado as ID,
	NomeEmpregado as Nome
	FROM Empregado
	ORDER BY DataAdmissao;
	
SELECT	NomeEmpregado as Nome,
		Salario as SalarioMensal
		FROM Empregado
		WHERE Comissao is null
		ORDER BY Salario;
	
SELECT	IDEmpregado as ID,
		NomeEmpregado as Nome,
		(Salario * 13) as SalarioAnual,
		(coalesce(Comissao,0) * 12) as ComissaoAnual,
		(salario * 13) + (coalesce(comissao,0) * 13) as RendaAnual
		FROM Empregado	
		ORDER BY NomeEmpregado; --usar coalesce--
		
SELECT	IDEmpregado as ID,
		NomeEmpregado as Nome,
		Cargo as Cargo,
		(Salario * 12) as SalarioAnual
		FROM Empregado
		WHERE (Salario * 12) < 18500 OR Cargo = 'Atendente'
		ORDER BY NomeEmpregado;
		
SELECT	NomeEmpregado as Nome,
		Cargo as Cargo
		FROM Empregado
		WHERE Cargo = 'Atendente' OR IDGerente = 7698
		ORDER BY NomeEmpregado;
		
SELECT	IDDepartamento as ID,
		NomeDepartamento as Nome
		FROM Departamento
		WHERE Localizacao like 'SAO%';
		
SELECT	IDCidade as ID,
		Nome as Nome,
		UF as UF
		FROM CidadeEX
		WHERE IDCidade BETWEEN 4 AND 9
		ORDER BY IDCidade;
		
SELECT	IDDepartamento as ID,
		NomeDepartamento as Nome,
		Localizacao as Local
		FROM Departamento
		WHERE IDDepartamento NOT IN (
		SELECT IDDepartamento FROM Empregado
		);		-- perguntar pro thomazio--
		
SELECT	NomeEmpregado as Nome,
		Cargo as Cargo
		FROM Empregado
		WHERE IDDepartamento is null
		ORDER BY NomeEmpregado;
		
SELECT	NomeEmpregado as Nome
		FROM Empregado
		WHERE IDGerente in (7566, 7698, 7782)
		ORDER BY NomeEmpregado;
		


