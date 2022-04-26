CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
descrricao varchar (1000) not null,
primary key(id)
);

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
cidade varchar(255),
ataque double not null,
defesa double not null,
id_classe bigint,
primary key(id),
foreign key (id_classe) references tb_classes(id)
);

INSERT INTO tb_classes (classe, descricao) VALUES 
('mago(a/e)', 'Tem como características principais a inteligência, que é usado para conjurar suas magias');
INSERT INTO tb_classes (classe,descricao) VALUES 
('guerreiro(a/e)','São exímios lutadores marciais, sempre prontos para o combate. Possuem extremas habilidades de combate.');
INSERT INTO tb_classes (classe,descricao) VALUES 
('elfo(a/e)','Eram divindades maiores da natureza e da fertilidade. Os elfos são geralmente mostrados como jovens de grande beleza vivendo entre as florestas.');
INSERT INTO tb_classes (classe,descricao) VALUES 
('arqueiro(a/e)','Um arqueiro é um verdadeiro mestre no uso de arco, e nem mesmo um guerreiro muito experiente pode se igualar as suas capacidades.');
INSERT INTO tb_classes (classe,descricao) VALUES 
('ninja','É um agente secreto ou mercenário especializado em artes marciais de guerra não ortodoxas.');

INSERT INTO tb_personagens (nome,ataque,defesa,id_classe) VALUES ('ash',2000,1500,3);
INSERT INTO tb_personagens (nome,cidade,ataque,defesa,id_classe) VALUES ('xena','atenas',1000,1900,5);
INSERT INTO tb_personagens (nome,cidade,ataque,defesa,id_classe) VALUES ('thor','argasd',500,1);
INSERT INTO tb_personagens (nome,cidade,ataque,defesa,id_classe) VALUES ('chapolin','mexico',1200,3000,2);
INSERT INTO tb_personagens (nome,cidade,ataque,defesa,id_classe) VALUES ('lindinha','Townsville',2000,4500,3);
INSERT INTO tb_personagens (nome,cidade,ataque,defesa,id_classe) VALUES ('geralt','Rivia',3217,3124,1);
INSERT INTO tb_personagens (nome,cidade,ataque,defesa,id_classe) VALUES ('jak','Haven City',3560,4210,2);
INSERT INTO tb_personagens (nome,cidade,ataque,defesa,id_classe) VALUES ('lara croft','Himalaia',3560,4210,2);


SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT nome, cidade FROM
tb_personagens INNER JOIN 
tb_classes ON 
tb_personagens.id_classe = tb_classes.id;

SELECT nome, cidade FROM
tb_personagens INNER JOIN 
tb_classes ON 
tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.classe = 'guerreiro(a/e)';tb_classestb_personagens

