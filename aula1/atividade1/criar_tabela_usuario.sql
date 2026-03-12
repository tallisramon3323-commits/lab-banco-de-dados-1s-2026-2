create database biblioteca_pessoal1s2026;
USE biblioteca_pessoal1s2026;
show tables;
create table usuario(
	id_usuario int primary key auto_increment,
    nome varchar(255) not null,
    email varchar (128) not null unique,
    data_cadastro date default (current_date) not null
);
show tables;