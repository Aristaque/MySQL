CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT,
    tipo ENUM ("SALGADA","DOCE") NOT NULL,
    tamanho ENUM ("GRANDE", "PEQUENA") NOT NULL,
    acompanhamento ENUM("SIM", "NÃO") NOT NULL,
    PRIMARY KEY (id_categoria)
);
CREATE TABLE tb_pizza (
	id_pizza INT AUTO_INCREMENT,
    sabor VARCHAR(255),
    preço DOUBLE,
    fk_categoria INT,
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (fk_categoria) REFERENCES  tb_categoria(id_categoria)
);
INSERT INTO tb_categoria (tipo, acompanhamento, tamanho)
	VALUES ("SALGADA", "SIM", "GRANDE"),
("DOCE", "SIM", "PEQUENA"),
("DOCE", "NÃO", "PEQUENA"),
("SALGADA", "SIM", "GRANDE"),
("SALGADA", "NÃO", "GRANDE");

INSERT INTO tb_pizza (sabor, preço, fk_categoria)
	VALUES ("Frango desfiado", 46, 1),
    ("Presunto e queijo", 32, 1),
    ("Brocolis com alho", 48, 5),
    ("Mussarela", 35, 5),
    ("Chocolate", 32, 2),
    ("Beijinho", 35, 3),
    ("Frango com catupiry", 55, 4),
    ("Nutella com morango", 47, 3);
    
SELECT * FROM tb_pizza
WHERE preço > 45;

SELECT * FROM tb_pizza
WHERE preço > 29 AND PREÇO <60;

SELECT * FROM tb_pizza
WHERE sabor LIKE 'C%';

SELECT tb_categoria.tipo , tb_pizza.sabor, tb_pizza.preço
FROM tb_categoria 
INNER JOIN tb_pizza ON tb_categoria.id_categoria = tb_pizza.fk_categoria;

SELECT tb_categoria.tipo, tb_pizza.sabor
FROM tb_categoria
INNER  JOIN tb_pizza ON tb_categoria.id_categoria = tb_pizza.fk_categoria
WHERE tb_categoria.tipo = "SALGADA";



    
	