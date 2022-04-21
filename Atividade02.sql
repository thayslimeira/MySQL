create database db_mercado;

use db_mercado;

create table tb_produtos(
id bigint auto_increment,
prod char(255) not null,
codigoProduto int not null,
marca char(255) not null, 
sessao char(255) not null,
preco double not null,
primary key(id)
);

select * from tb_funcionarios;

insert into tb_produtos (prod,codigoProduto,marca,sessao,preco)
values ("Rodo",120,"Puxatoda a água","Limpeza",13,99);

insert into tb_produtos (prod,codigoProduto,marca,sessao,preco)
values("Feijao",305,"Urbano","Alimentos",5.90);

insert into tb_produtos (prod,codigoProduto,marca,sessao,preco)
values("Pão de forma",633,"Plus Vitta","Padaria",3.50);

insert into tb_produtos (prod,codigoProduto,marca,sessao,preco)
values ("Cenoura",321,"Horta","Hortifruti",11.90);

insert into tb_produtos (prod,codigoProduto,marca,sessao,preco)
values ("Sabão em barra",858,"OMO","Material de Limpeza",1.30);

insert into tb_produtos (prod,codigoProduto,marca,sessao,preco)
values ("Fermento",555,"Dona Benta","Confeitaria",2.50);

insert into tb_produtos (prod,codigoProduto,marca,sessao,preco)
values ("Garfo",333,"Tramontina","Talher",34.86);

insert into tb_produtos (prod,codigoProduto,marca,sessao,preco)
values ("Arroz",336,"Urbano","Alimentos",5.20);

select * from tb_produtos where preco > 10.00;

select * from tb_produtos where preco < 10.00;

update tb_produtos set codigoProduto = 999 where id = 6;