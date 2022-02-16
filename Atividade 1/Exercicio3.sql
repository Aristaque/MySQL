CREATE DATABASE db_escola;
 
USE db_escola;

CREATE TABLE alunos (
ra INT NOT NULL AUTO_INCREMENT,
nome_aluno VARCHAR(255) NOT NULL,
cpf VARCHAR(255) NOT NULL,
matricula INT NOT NULL,
nota FLOAT NOT NULL,
PRIMARY KEY (ra)
);

INSERT INTO alunos(nome_aluno, cpf, matricula, nota)
VALUES
("Fernanda", "122.122.122.12", 1, 7.5),
("Beatriz", "123.122.122.12", 2, 8.5),
("Lucas", "124.122.122.12", 3, 3),
("Diego", "152.122.122.12", 4, 1),
("Gabriela", "622.122.122.12", 5, 10),
("Jennifer", "172.122.122.12", 6, 2),
("Andre", "182.122.122.12", 7, 4),
("Jeferson", "182.122.122.12", 7, 6);

SELECT  nome_aluno AS `Nome`,ra AS `Resgistro do Aluno`,nota
FROM alunos
WHERE nota >= 7;

SELECT  nome_aluno AS `Nome`,ra AS `Resgistro do Aluno`,nota
FROM alunos
WHERE nota <= 7;

ALTER TABLE alunos CHANGE COLUMN ra  ra  INT NOT NULL;
SELECT * FROM alunos;