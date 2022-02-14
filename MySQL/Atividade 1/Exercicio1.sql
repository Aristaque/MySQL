CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE empregados (
id_funcionario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
cpf VARCHAR(255),
email VARCHAR(255),
salario FLOAT NULL,
PRIMARY KEY (id_funcionario)
);

INSERT INTO empregados (nome, cpf, email, salario)
VALUES
("Gabriel", "122.122.122.12", "Gabriel@gmail.com", "2500.00"),
("Lucas", "122.122.123.12", "Lucas@gmail.com", "1700.00"),
("Ana", "122.122.124.12", "Ana@gmail.com", "1600.00"),
("Maria", "122.122.152.12", "Maria@gmail.com", "2000.00"),
("Leticia", "122.122.162.12", "Leticia@gmail.com", "2100.00");

SELECT  nome AS `Funcionario`,salario
FROM empregados
WHERE salario > 2000.00;

SELECT  nome AS `Funcionario`,salario
FROM empregados
WHERE salario < 2000.00;

ALTER TABLE empregados CHANGE COLUMN id_funcionario  id_funcionario  INT NOT NULL;
SELECT * FROM empregados;


