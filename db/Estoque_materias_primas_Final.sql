create database Estoque_de_materias_primas 
character set utf8mb4
collate utf8mb4_general_ci;

use Estoque_de_materias_primas;

create table Cadastro_itens (
id int auto_increment primary key,
categoria_item varchar(55) not null,
nome_item varchar(100) not null,
descricao_item text 
);

create table Entrada_itens  (
  id int auto_increment primary key,
  nome varchar(55),                                 
  quantidade_item int not null,
  valor_unitario decimal(10,2),
  data_entrada date      
);

create table Retirada_itens (
  id int auto_increment primary key,
  id_item int not null,  
  id_entrada int not null, 
  motivo_retirada text,
  data_retirada date not null 
);

create table Consulta_itens (
  id int auto_increment primary key,
  id_item int not null,  
  id_entrada int not null 
);

create table Relatorios_itens (
  id int auto_increment primary key,
  id_item int not null,   
  id_entrada int not null,  
  id_retirada int not null,  
  id_consulta int not null  
);


CREATE TABLE Estoque_itens (
    id int auto_increment primary key,
    nome varchar(55),
    quantidade smallint,
    valor_unitario decimal(10,2)
);

create user 'Layson'@'localhost' identified by '123456';
grant insert, select, update, delete on Estoque_de_materias_primas.* to Layson;







