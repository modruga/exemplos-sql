CREATE TABLE AlunoAula1 (

    idAluno INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    CursoMatriculado INT,

    Nome VARCHAR(20) NOT NULL,
    DataNascimento TIMESTAMP NOT NULL,
    Cidade VARCHAR(20) NOT NULL,
    CPF INT UNIQUE NOT NULL,
    Matricula INT UNIQUE NOT NULL,

    PRIMARY KEY (idAluno)
    

);

CREATE TABLE CursoAula1 (

    idCurso INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    idAlunoCursante INT NOT NULL,
    preRequisitos INT,

    Nome VARCHAR(20) NOT NULL,
    DataCurso DATE NOT NULL,
    Situacao BOOLEAN NOT NULL DEFAULT 'FALSE',
    Localizacao VARCHAR(20) NOT NULL,

    PRIMARY KEY (idCurso),
    FOREIGN KEY (idAlunoCursante) REFERENCES AlunoAula1(idAluno),
    FOREIGN KEY (preRequisitos) REFERENCES CursoAula1(idCurso)

);

ALTER TABLE AlunoAula1
    ADD FOREIGN KEY (CursoMatriculado) REFERENCES CursoAula1(idCurso);

ALTER TABLE CursoAula1
    ADD Valor NUMERIC(4,2);



-- eu acrescentaria uma table auxiliar tanto para cursoMatriculado quanto para preRequisitos, com uma lista de cursos para cada, para que obedecesse à norma de que
-- poderiam existir múltiplos cursos como pré requisitos e múltiplos cursos sendo cursados simultaneamente. 