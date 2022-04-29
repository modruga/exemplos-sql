--exc 1

SELECT	idempregado as id,
		nomeempregado as nome,
		EXTRACT(year from to_date('2021-06-01', 'YYYY-MM-DD')) - EXTRACT(year from e.dataadmissao) as anosadmitidos,
		EXTRACT(year from AGE(to_date('2021-06-01', 'YYYY-MM-DD'),e.dataadmissao)) * 12 + EXTRACT(month from AGE(to_date('2021-06-01', 'YYYY-MM-DD'),e.dataadmissao)) as mesesadmitidos,
		EXTRACT(day from AGE(e.dataadmissao, to_date('2021-06-01', 'YYYY-MM-DD'))) as diasadmitidos
		FROM empregado e
		WHERE extract(year from e.dataadmissao) = 1981;

--exc 2

with countfuncionario as (select cargo,count(1) as contagem from empregado group by cargo),
maxfuncionario as (select max(contagem) as maxcontagem from (select contagem from countfuncionario) sq)
select cf.cargo, mf.maxcontagem from countfuncionario cf join maxfuncionario mf on cf.contagem = mf.maxcontagem;

--exc3

select uf, count(1) as numcidades
from cidade
group by uf
order by numcidades desc

--exc4

INSERT INTO departamento (iddepartamento, nomedepartamento, localizacao)
	VALUES (50, 'Inovacao', 'SAO LEOPOLDO');

update empregado e
	set iddepartamento = 50
	where extract(month from e.dataadmissao) = 12 AND cargo <> 'Atendente';
	
select * from empregado where extract(month from dataadmissao) = 12


