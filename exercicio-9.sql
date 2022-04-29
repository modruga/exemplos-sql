--exc1

with countnome as (select split_part(nome,' ',1) as primeironome, count(1) as contagem from cliente --WHERE split_part(nome,' ',1) <> 'Cliente'-- (caso nao seja cliente na lista)
group by primeironome),
maxnome as (select max(contagem) as maxcontagem from (select contagem from countnome) sq)
select cn.primeironome, mn.maxcontagem from countnome cn join maxnome mn on cn.contagem = mn.maxcontagem;

--exc2

select count(*) as numeroPedidosEmMarco, sum(valorpedido) as somatotal from pedido where datapedido between '2018-03-01' and '2018-03-31';

--exc3

(select ci.uf, count(*) contador from cliente c inner join cidade ci on c.idcidade = ci.idcidade
group by ci.uf
order by contador desc limit 1)
UNION
(select ci.uf, count(*) contador from cliente c inner join cidade ci on c.idcidade = ci.idcidade
group by ci.uf
order by contador asc limit 1) order by 2 desc

--exc4

select * from produto;

insert into produto (idproduto, nome, precocusto, precovenda, situacao)
values ((select idproduto+1 from produto order by idproduto desc limit 1), 'Coturno Pica-Pau', 29.25, 77.95, 'A');

--exc5

select * from produto where idproduto not in (select idproduto from pedidoitem);

--exc6

select p.nome, (coalesce(p.precovenda - p.precocusto,0) * pi.quantidade) valorliquido from produto p
inner join pedidoitem pi on p.idproduto = pi.idproduto
inner join pedido pe on pi.idpedido = pe.idpedido
where pe.datapedido between '2018-01-01' and '2018-12-31' order by valorliquido desc
limit 30
