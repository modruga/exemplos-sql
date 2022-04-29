CREATE TABLE usuarios (


    idUsuario INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    username VARCHAR(20) NOT NULL,
    senha VARCHAR(20) NOT NULL,
    nome VARCHAR(20) NOT NULL,
    cpf NUMERIC(11,0) UNIQUE NOT NULL,
    tipoUsuario INT NOT NULL CHECK (tipoUsuario BETWEEN 1 AND 4),

    PRIMARY KEY (idUsuario)

);

CREATE TABLE chamados (

    idChamado INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    idUsuario INT NOT NULL,

    descricaoProblema VARCHAR(200) NOT NULL,

    respostaArea VARCHAR(200),

    statusChamado INT NOT NULL,

    PRIMARY KEY (idChamado),
    FOREIGN KEY (idUsuario) REFERENCES usuarios (idUsuario)

);

CREATE TABLE andamentoChamado (

    idAndamento INT NOT NULL PRIMARY KEY REFERENCES chamados (idChamado),
	
	diaAbertura TIMESTAMP NOT NULL,
	
	tempoInicioAtribuido TIME,
	tempoFimAtribuido TIME,
	
	tempoInicioAndamento TIME,
	tempoFimAndamento TIME,
	
	tempoInicioEsperaUsuario TIME,
	tempoFimEsperaUsuario TIME,
	
	tempoInicioEsperaSuporte TIME,
	tempoFimEsperaSuporte TIME,
	
	tempoInicioCancelado TIME,
	tempoFimCancelado TIME,
	
	tempoInicioResolvido TIME,
	tempoFimResolvido TIME

);

CREATE TABLE areas (

    idArea INT NOT NULL GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR(40) NOT NULL,
    

    PRIMARY KEY (idArea)

);

CREATE TABLE servicos (

    idArea INT NOT NULL,
	idServico INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    idChamado INT NOT NULL UNIQUE,

    PRIMARY KEY (idServico),
    FOREIGN KEY (idArea) REFERENCES areas (idArea),
    FOREIGN KEY (idChamado) REFERENCES chamados (idChamado)

);