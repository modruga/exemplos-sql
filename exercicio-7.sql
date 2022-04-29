--exc 1

select to_char(current_timestamp, 'DD-mon-YYYY hh:mi:ss')

--exc 2

select LOWER(LEFT(nomeempregado,4)) from empregado;

--exc 3

select	CONCAT(nomeempregado,cargo)	 nomecargo1,
		nomeempregado||cargo		as nomecargo2
		from empregado e;
		
--exc 4

SELECT to_char(e.dataadmissao + '8 hours'::interval, 'DD/MM/YYYY HH24:MI:SS')
FROM empregado e;