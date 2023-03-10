CREATE DATABASE AULA_2DS;

-- COMANDOS DDL (LINGUAGEM DE DEFINIÇÃO DE DADOS)

-- SEXO = {CODSEXO, NOMESEXO}
CREATE TABLE SEXO(
	CODSEXO SERIAL PRIMARY KEY,
	NOMESEXO VARCHAR(9) NOT NULL UNIQUE
);

-- CURSO = {CODCURSO, NOMECURSO}
CREATE TABLE CURSO(
	CODCURSO SERIAL PRIMARY KEY,
	NOMECURSO VARCHAR(80) NOT NULL UNIQUE
);

-- CIDADE = {CODCIDADE, NOMECIDADE}
CREATE TABLE CIDADE(
	CODCIDADE SERIAL PRIMARY KEY,
	NOMECIDADE VARCHAR(80) NOT NULL
);

-- ALUNO = {CODALUNO, NOMEALUNO, CODSEXO_FK,CODCURSO_FK, 
-- CODCIDADE_FK, DATANASC}
CREATE TABLE ALUNO(
	CODALUNO SERIAL PRIMARY KEY,
	NOMEALUNO VARCHAR(80) NOT NULL,
	CODSEXO_FK INTEGER REFERENCES SEXO(CODSEXO) MATCH
	  SIMPLE ON DELETE CASCADE ON UPDATE CASCADE,
	CODCURSO_FK INTEGER REFERENCES CURSO(CODCURSO) MATCH
	  SIMPLE ON DELETE CASCADE ON UPDATE CASCADE,
	CODCIDADE_FK INTEGER REFERENCES CIDADE(CODCIDADE) MATCH
	  SIMPLE ON DELETE CASCADE ON UPDATE CASCADE,
	DATANASC DATE NOT NULL
);

-- COMANDOS DML (LINGUAGEM DE MANIPULAÇÃO DE DADOS)

-- INSERINDO DADOS NAS TABELAS
-- INSERT INTO <NOMETABELA>(<CAMPO1>, ... , <CAMPON>) VALUES(VCAMPO1, VCAMPO2);

-- SEXO = {CODSEXO, NOMESEXO}
INSERT INTO SEXO(NOMESEXO) VALUES('FEMININO');
INSERT INTO SEXO(NOMESEXO) VALUES('MASCULINO');

select * from sexo

-- CURSO = {CODCURSO, NOMECURSO}
INSERT INTO CURSO(NOMECURSO) VALUES
('DESENVOLVIMENTO DE SISTEMAS'),
('ENFERMAGEM'),
('MECÂNICA'),
('ELETROTÉCNICA');

-- CIDADE = {CODCIDADE, NOMECIDADE}
INSERT INTO CIDADE(NOMECIDADE) VALUES('ILHA SOLTEIRA');
INSERT INTO CIDADE(NOMECIDADE) VALUES('ANDRADINA');
INSERT INTO CIDADE(NOMECIDADE) VALUES('ITAPURA');
INSERT INTO CIDADE(NOMECIDADE) VALUES('PEREIRA BARRETO');
INSERT INTO CIDADE(NOMECIDADE) VALUES('SELVÍRIA');
INSERT INTO CIDADE(NOMECIDADE) VALUES('GUADALUPE DO ALTO PARANÁ');


-- ALUNO = {CODALUNO, NOMEALUNO, CODSEXO_FK, CODCURSO_FK,
--          CODCIDADE_FK, DATANASC}
INSERT INTO ALUNO(NOMEALUNO, CODSEXO_FK, 
				  CODCURSO_FK, CODCIDADE_FK, 
				  DATANASC)
VALUES
('IVERSON', 2, 1, 5, '2023-10-10');

INSERT INTO ALUNO(NOMEALUNO, CODSEXO_FK, 
				  CODCURSO_FK, CODCIDADE_FK, 
				  DATANASC)
VALUES
('MARIA', 1, 2, 1, '2023-10-10');

SELECT * FROM ALUNO

-- AULA 23/02

-- CONTAGEM DE REGISTROS (COUNT)

--CONTAR QUANTOS SEXOS ESTÃO CADASTRADOS
--SEXO = {CODSEXO, NOMESEXO}
SELECT COUNT(NOMESEXO) FROM SEXO;
--APELIDOS PARA OS CAMPOS
SELECT COUNT(NOMESEXO) AS QUANTIDADE FROM SEXO;










