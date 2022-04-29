--exc 1

SELECT	idpedido as idpedido,
		idcliente as idcliente,
		datapedido as data,
		valorpedido as valor,
		situacao as situacao
		FROM pedido
		WHERE situacao = 'A' AND idcliente = 11518 OR valorpedido > 9000
		ORDER BY valorpedido;
		
--exc 2

	SELECT	* from material
	WHERE pesoliquido > 4 AND precocusto < 0.3;
		
--exc 3

	SELECT	DISTINCT nome as nome,
	uf as uf
	FROM cidadeex
	WHERE uf = 'RS'
	ORDER BY nome;
	
	SELECT * FROM cidadeex
	ORDER BY nome;
		
--exc 4

	SELECT	* FROM PRODUTO p WHERE p.idproduto in 
	(SELECT pi.idproduto FROM pedidoitem pi WHERE pi.idpedido in 
	(SELECT idpedido FROM PEDIDO WHERE valorpedido = 28299.76 AND situacao = 'Q'))

--exc 5

	SELECT * from cliente
	WHERE situacao = 'A' and CEP is null;
	
--exc 6
	
	SELECT idpedido, (quantidade * precounitario) as valortotal, idproduto FROM PEDIDOITEM WHERE idpedido = 168
	ORDER BY valortotal DESC;

--exc 7

	SELECT	* from material
	WHERE pesoliquido BETWEEN 0.5 AND 0.6;
		
--exc 8

--exc 9

SELECT (coalesce(quantidade,1)*5) as novoinventario FROM PRODUTOMATERIAL WHERE idmaterial = 2492;

--exc 10

	SELECT	* FROM pedido
	WHERE situacao in ('A', 'C', 'I') AND valorpedido <= 9800;
	
	