--exc1

select e1.nomeempregado as nome, e2.nomeempregado as nomegerente, e1.iddepartamento as departamento, e2.iddepartamento as departamentogerente from empregado e1
inner join empregado e2 on e1.idgerente = e2.idempregado;

--exc2

select d.iddepartamento, d.nomedepartamento, e from departamento d
inner join empregado e on e.iddepartamento = d.iddepartamento
order by salario desc limit 1;

--exc3

ALTER TABLE departamento ADD CONSTRAINT novakey UNIQUE (nomedepartamento);
insert into departamento (iddepartamento, nomedepartamento, localizacao)
values (90, 'Planejamento', 'CAPAO DO LEAO')
ON CONFLICT (nomedepartamento)
do update
set nomedepartamento = 'Jesplanejamento'

--exc4

SELECT nome, uf, COUNT(*)
FROM cidadeex
GROUP BY nome, uf
HAVING COUNT(*) > 1

--exc5

--SELECT cex.nome, cex.uf, cex.idcidade FROM cidadeex cex
--inner join cidadesduplicatas cd on cd.verstappen = cex.idcidade
--	GROUP BY cex.nome, cex.uf, cex.idcidade
--	ORDER BY cex.nome, cex.idcidade desc;
	
CREATE VIEW cidadesduplicatas as 
	SELECT nome, uf, COUNT(*), max(idcidade) verstappen
	FROM cidadeex
	GROUP BY nome, uf
	HAVING COUNT(*) > 1

update cidadeex
set nome = nome || '*'
where idcidade in (SELECT verstappen FROM cidadesduplicatas);

select * from cidadeex where nome LIKE 'Bra%';