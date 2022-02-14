CREATE DATABASE bd_generation_game_online;

USE bd_generation_game_online;

CREATE TABLE tb_classe (
	id_classe INT AUTO_INCREMENT,
    nome VARCHAR(255),
    habilidade VARCHAR(255),
    PRIMARY KEY (id_classe)
);
CREATE TABLE tb_personagem (
	id_personagem INT AUTO_INCREMENT,
    nome VARCHAR(255),
    ataque INT,
    defesa INT,
    fk_classe INT,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (fk_classe) REFERENCES  tb_classe(id_classe)
);
INSERT INTO tb_classe (nome, habilidade)
	VALUES ("Lutador", "Força"),
("Telepata", "Controle da mente"),
("Mercenario", "Assassinar sem deixar pistas"),
("Corredor", "Velocidade"),
("Arqueiro", "Precisão");

INSERT INTO tb_personagem (nome, ataque, defesa, fk_classe)
	VALUES ("Edy", 2200, 1900, 1),
    ("Professor", 2800, 2500, 2),
    ("Hitman", 1300, 1800, 3),
    ("Arqueiro verde", 1800, 1500, 5),
    ("Flash", 1800, 2100, 4),
    ("SpiderSilva", 2800, 3500, 1),
    ("Arqueiro Junior", 1500, 1200, 5),
    ("MisterM", 1800, 1500, 2);
    
SELECT * FROM tb_personagem
WHERE ataque > 2000;

SELECT * FROM tb_personagem
WHERE defesa > 1000
AND defesa < 2000;

SELECT * FROM tb_personagem
WHERE nome LIKE 'A%';

SELECT tb_classe.nome , tb_classe.habilidade , tb_personagem.fk_classe
FROM tb_classe 
INNER JOIN tb_personagem ON tb_classe.id_classe = tb_personagem.fk_classe;

SELECT tb_classe.nome , tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa 
FROM tb_classe
INNER JOIN tb_personagem ON tb_classe.id_classe = tb_personagem.fk_classe 
WHERE tb_classe.nome = 'Telepata';

    
	