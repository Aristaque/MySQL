CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT,
    setor ENUM ("ADULTO","INFANTIL") NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_categoria)
);
CREATE TABLE tb_produto (
	id_produto INT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL, 
    preço INT  NOT NULL, 
    validade DATE NOT NULL,
    fk_categoria INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);
INSERT INTO tb_categoria (setor, categoria)
	VALUE ("INFANTIL", "LEITE"),
	("INFANTIL","FRALDAS"),
    ("INFANTIL","REMEDIOS EM GOTA"),
    ("ADULTO","PRESERVATIVOS"),
    ("ADULTO","HIGIENE");
    
INSERT INTO tb_produto (nome, preço, validade, fk_categoria)
	VALUES ("OLA", "11", "2023/10/10", 4),
    ("NINHO", "17", "2023/10/10", 1),
    ("PAMPERS", "31","2023/10/10", 2),
    ("HUGGIES", "70","2023/10/10", 2),
    ("REXONA", "15","2023/10/10", 5),
    ("GILLETTE", "37", "2023/10/10", 5),
    ("DIPIRONA", "6", "2023/10/10", 3),
    ("ENFAMIL", "100", "2023/10/10", 1);
    
SELECT * FROM tb_produto
WHERE preço > 50;

SELECT * FROM tb_produto
WHERE preço > 3 AND PREÇO < 60;

SELECT * FROM tb_produto 
WHERE nome LIKE '%b%';

SELECT tb_categoria.setor, tb_produto.nome, tb_produto.preço
FROM tb_categoria
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT tb_categoria.setor, tb_produto.nome
FROM tb_categoria
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
WHERE tb_categoria.setor = "ADULTO";

    

    


    