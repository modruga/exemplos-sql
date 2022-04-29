CREATE TABLE AlunoAula1 (

    idAluno INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    CursoMatriculado INT,

    Nome VARCHAR(20) NOT NULL,
	Sexo CHAR NOT NULL,
    DataNascimento TIMESTAMP NOT NULL,
    Cidade VARCHAR(20) NOT NULL,
    CPF NUMERIC(11) UNIQUE NOT NULL,
    Matricula INT UNIQUE NOT NULL,
	Situacao CHAR NOT NULL DEFAULT 'I',

    PRIMARY KEY (idAluno)
    

);

CREATE TABLE CursoAula1 (

    idCurso INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    preRequisitos INT,

    Nome VARCHAR(20) NOT NULL,
    DataCurso DATE NOT NULL,
    Situacao BOOLEAN NOT NULL DEFAULT 'FALSE',
    Localizacao VARCHAR(20) NOT NULL,

    PRIMARY KEY (idCurso),
    FOREIGN KEY (preRequisitos) REFERENCES CursoAula1(idCurso)

);

ALTER TABLE AlunoAula1
    ADD FOREIGN KEY (CursoMatriculado) REFERENCES CursoAula1(idCurso);

ALTER TABLE CursoAula1
    ADD Valor MONEY NOT NULL;
	

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('ccomp', '2022-05-01', 'campus 1', 1500.5);

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('arquitetura', '2022-05-01', 'campus 1', 1500.5);

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('turismo', '2022-05-01', 'campus 1', 1500.5);

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('ri', '2022-05-01', 'campus 1', 1500.5);

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('geografia', '2022-05-01', 'campus 1', 1500.5);

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('geologia', '2022-05-01', 'campus 1', 1500.5);

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('letras', '2022-05-01', 'campus 1', 1500.5);

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('artes visuais', '2022-05-01', 'campus 1', 1500.5);

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('artes cenicas', '2022-05-01', 'campus 1', 1500.5);

INSERT INTO CursoAula1 (Nome, DataCurso, Localizacao, Valor)
VALUES ('musica', '2022-05-01', 'campus 1', 1500.5);



INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (1, 'madruga', 'M', '1998-06-15', 'pelotas', 03386768059, 17200102);

INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (3, 'laura', 'F', '1998-11-17', 'curitiba', 82746502917, 92836481);

INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (1, 'toninho', 'M', '1998-07-20', 'porto alegre', 92739572612, 92837562);

INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (5, 'juninho', 'M', '1998-12-30', 'candelaria', 68201938275, 68402918);

INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (5, 'marquinhos', 'M', '1998-04-12', 'bento goncalves', 75829385647, 90695849);

INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (1, 'thomazio', 'M', '1998-03-22', 'pelotas', 78957281657, 45637261);

INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (4, 'selena', 'F', '1998-11-11', 'curitiba', 21059482657, 76238491);

INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (7, 'carlos', 'M', '1998-05-12', 'candelaria', 75829182736, 95820192);

INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (1, 'roberto', 'M', '1998-03-03', 'goiania', 58291029582, 30492812);

INSERT INTO AlunoAula1 (CursoMatriculado, Nome, Sexo, DataNascimento, Cidade, CPF, Matricula)
VALUES (9, 'pato jr', 'M', '1998-01-25', 'goiania', 75820391856, 25910298);
	


UPDATE CursoAula1 
SET Situacao = 'TRUE'
WHERE Situacao = 'FALSE';
	

UPDATE AlunoAula1 
SET Situacao = 'P'
WHERE Situacao = 'I';
	
DELETE FROM AlunoAula1
WHERE Sexo = 'M';
	
UPDATE CursoAula1 
SET Valor = Valor * 1.05