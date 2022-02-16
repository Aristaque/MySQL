CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_prod(
id_produtos INT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
marca VARCHAR (255) NOT NULL,
categoria VARCHAR (255),
preco DECIMAL (10, 2),
PRIMARY KEY (id_produtos)
);

INSERT INTO tb_prod  (nome, marca, categoria, preco) VALUES ("Nootbook", "Sony", "Eletrônico", 4500.00);
INSERT INTO tb_prod  (nome, marca, categoria, preco) VALUES ("Impressora", "HP", "Eletrônico", 400.00);
INSERT INTO tb_prod  (nome, marca, categoria, preco) VALUES ("Geladeira", "Consul", "Eletrodoméstico", 2500.00);
INSERT INTO tb_prod  (nome, marca, categoria, preco) VALUES ("Celular", "Sansung", "Eletrônico", 1700.00);
INSERT INTO tb_prod  (nome, marca, categoria, preco) VALUES ("Celular", "Motorola", "Eletrônico", 800.00);
INSERT INTO tb_prod  (nome, marca, categoria, preco) VALUES ("Fone", "HP", "Eletrônico", 40.00);
INSERT INTO tb_prod  (nome, marca, categoria, preco) VALUES ("TV Smart 60", "Sansung", "Eltrônico", 4000.00);
INSERT INTO tb_prod  (nome, marca, categoria, preco) VALUES ("Carregador Portátil", "Sony", "Eletrônico", 100.00);

SELECT * FROM tb_prod WHERE preco > 500.00;

SELECT * FROM tb_prod WHERE preco < 500.00;

UPDATE tb_prod SET marca = "Sansung" WHERE id_produtos = 5;

SELECT * FROM tb_prod;