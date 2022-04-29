Create table CidadeEX
(
  IDCidade  int         not null,
  Nome      varchar(30) not null,
  UF        varchar(2)  not null,
    constraint PK_CidadeEX1 primary key (IDCidade)
);

Create table AssociadoEX
(
  IDAssociado    int         not null,
  Nome           varchar(50) not null,
  DataNascimento date    not null,
  Sexo           char(1)     not null,
  CPF            varchar(11) ,
  Endereco       varchar(35),
  Bairro         varchar(25),
  Complemento    varchar(20),
  IDCidade       int,
     constraint PK_AssociadoEX primary key (IDAssociado),
	 constraint FK_AssociadoEX foreign key (IDCidade)
	    references CidadeEX (IDCidade)
);

insert into CidadeEX (IDCidade, Nome, UF)
values (1, 'Sao Leopoldo', 'RS');
insert into CidadeEX (IDCidade, Nome, UF)
values (2, 'Porto Alegre', 'RS');
insert into CidadeEX (IDCidade, Nome, UF)
values (3, 'Parobe', 'RS');
insert into CidadeEX (IDCidade, Nome, UF)
values (4, 'Taquara', 'RS');
insert into CidadeEX (IDCidade, Nome, UF)
values (105, 'São Paulo', 'SP');
insert into CidadeEX (IDCidade, Nome, UF)
values (106, 'Guarulhos', 'SP');
insert into CidadeEX (IDCidade, Nome, UF)
values (27, 'Rio de Janeiro', 'RJ');
insert into CidadeEX (IDCidade, Nome, UF)
values (108, 'Brasilia', 'DF');
insert into CidadeEX (IDCidade, Nome, UF)
values (109, 'Belo Horizonte', 'MG');
insert into CidadeEX (IDCidade, Nome, UF)
values (110, 'Uberlândia', 'MG');
insert into CidadeEX (IDCidade, Nome, UF)
values (5, 'CidadeEX de Alagoas', 'AL');
insert into CidadeEX (IDCidade, Nome, UF)
values (6, 'Maceio', 'AL');
insert into CidadeEX (IDCidade, Nome, UF)
values (7, 'Itu', 'SP');
insert into CidadeEX (IDCidade, Nome, UF)
values (8, 'Campinas', 'SP');
insert into CidadeEX (IDCidade, Nome, UF)
values (9, 'Guaratingueta', 'SP');
insert into CidadeEX (IDCidade, Nome, UF)
values (10, 'Santa Barbara', 'MG');
insert into CidadeEX (IDCidade, Nome, UF)
values (11, 'Campos dos Goitacases', 'RJ');
insert into CidadeEX (IDCidade, Nome, UF)
values (12, 'Sao Gabriel', 'RS');
insert into CidadeEX (IDCidade, Nome, UF)
values (13, 'Brasopolis', 'MG');
insert into CidadeEX (IDCidade, Nome, UF)
values (14, 'Cristina', 'MG');
insert into CidadeEX (IDCidade, Nome, UF)
values (15, 'Umbuzeiro', 'PB');
insert into CidadeEX (IDCidade, Nome, UF)
values (16, 'Vicosa', 'MG');
insert into CidadeEX (IDCidade, Nome, UF)
values (17, 'Macae', 'RJ');
insert into CidadeEX (IDCidade, Nome, UF)
values (18, 'Sao Luis', 'MA');
insert into CidadeEX (IDCidade, Nome, UF)
values (19, 'Cuiaba', 'MT');
insert into CidadeEX (IDCidade, Nome, UF)
values (20, 'Sao Borja', 'RS');
insert into CidadeEX (IDCidade, Nome, UF)
values (21, 'Natal', 'RN');
insert into CidadeEX (IDCidade, Nome, UF)
values (22, 'Diamantina', 'MG');
insert into CidadeEX (IDCidade, Nome, UF)
values (23, 'Campo Grande', 'MS');
insert into CidadeEX (IDCidade, Nome, UF)
values (24, 'Fortaleza', 'CE');
insert into CidadeEX (IDCidade, Nome, UF)
values (25, 'Bage', 'RS');
insert into CidadeEX (IDCidade, Nome, UF)
values (26, 'Bento Goncalves', 'RS');
insert into CidadeEX (IDCidade, Nome, UF)
values (28, 'Pinheiro', 'MA');
insert into CidadeEX (IDCidade, Nome, UF)
values (29, 'Salvador', 'BA');
insert into CidadeEX (IDCidade, Nome, UF)
values (30, 'Garanhuns', 'PE');
Insert into CidadeEX (IDCidade, Nome, UF)
values (31, 'São Paulo', 'SP');    
Insert into CidadeEX (IDCidade, Nome, UF)
values (32, 'Guarulhos', 'SP');    
Insert into CidadeEX (IDCidade, Nome, UF)
values (33, 'Rio de Janeiro', 'RJ');    
Insert into CidadeEX (IDCidade, Nome, UF)
values (34, 'Brasilia', 'DF');    
Insert into CidadeEX (IDCidade, Nome, UF)
values (35, 'Belo Horizonte', 'MG');        
Insert into CidadeEX (IDCidade, Nome, UF)
values  (36, 'Uberlândia', 'MG');      
Insert into CidadeEX (IDCidade, Nome, UF)
values  (37, 'Santana do Livramento', 'RS');
Insert into CidadeEX (IDCidade, Nome, UF)
values  (38, 'Santa Maria', 'RS');
Insert into CidadeEX (IDCidade, Nome, UF)
values  (39, 'Santa Rosa', 'RS');
Insert into CidadeEX (IDCidade, Nome, UF)
values  (40, 'São Francisco de Paula', 'RS'); 

insert into AssociadoEX 
      (IDAssociado, 
       Nome, 
       DataNascimento, 
       Sexo)
  values 
      (1, 
       'Ana Paula Padrao', 
       to_date('10/05/1980','DD/MM/YYYY'), 
       'F' );
--
insert into AssociadoEX 
      (IDAssociado, 
       Nome, 
       DataNascimento, 
       Sexo)
  values  
      (2, 
       'Joao Soares', 
       to_date('20/02/1980','DD/MM/YYYY'), 
       'M' );

CREATE TABLE CidadeAux as SELECT * FROM CidadeEX;

TRUNCATE TABLE CidadeAux;

INSERT INTO CidadeAux (IDCidade, Nome, UF)
SELECT IDCidade, Nome, UF FROM CidadeEX
WHERE UF = 'RS';

Create table EstoqueEx
(
	IDEstoque  			int not null,
	nomeEstoque       	varchar(255) not null,
	dataCriacao       	date  not null,
	capacidade			numeric(6) not null,
  
	primary key (IDEstoque)
);

INSERT INTO EstoqueEx (IDEstoque, nomeEstoque, dataCriacao, capacidade)
values (172, 'testeSom', '1998-06-15', 50);
	
Create table ProdutoEx
(
	IDProduto  			int not null,
	nomeProduto       	varchar(255) not null,
	descProduto       	varchar(255) not null,
	dtCriacao       	date not null,
	IDEstoque			int not null,
	quantidade			numeric(6) not null,
	preco				decimal(5,2) not null,
  
	primary key (IDProduto),
	foreign key (IDEstoque) references EstoqueEX (IDEstoque)
);

INSERT INTO ProdutoEx (IDProduto, nomeProduto, descProduto, dtCriacao, IDEstoque, quantidade, preco)
values (22, 'xampu', 'xampu e condicionador head & shoulders', '2022-04-19', 172, 200, 29.50);

INSERT INTO ProdutoEx (IDProduto, nomeProduto, descProduto, dtCriacao, IDEstoque, quantidade, preco)
values (76, 'sorvete', 'de chocolate branco', '2022-04-19', 172, 70, 19.50);

UPDATE AssociadoEX
SET IDCidade = 4
WHERE IDAssociado = 1;

DELETE FROM CidadeEX WHERE Nome = 'Taquara';
DELETE FROM CidadeEX WHERE Nome = 'Campinas';