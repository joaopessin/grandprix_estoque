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
  id_item int not null,  -- foreign key
  quantidade_item int not null,
  unidade_medida varchar(55),
  valor_unitario_item decimal(10,2) not null,
  valor_total decimal(10,2) not null,
  data_entrada date not null      -- primary key
);

create table Retirada_itens (
  id int auto_increment primary key,
  id_item int not null,  -- foreign key
  id_entrada int not null,  -- foreign key
  motivo_retirada text,
  data_retirada date not null  -- primary key
);

create table Consulta_itens (
  id int auto_increment primary key,
  id_item int not null,  -- foreign key
  id_entrada int not null -- foreign key
);

create table Relatorios_itens (
  id int auto_increment primary key,
  id_item int not null,   -- foreign key
  id_entrada int not null,  -- foreign key
  id_retirada int not null,  -- foreign key
  id_consulta int not null  -- foreign key
);


CREATE TABLE Estoque_itens (
    id int auto_increment primary key,
    id_item int not null,      -- foreign key 
    id_entrada int not null    -- foreign key
);









