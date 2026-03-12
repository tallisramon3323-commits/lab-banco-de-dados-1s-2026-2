create database biblioteca_pessoal1s2026;
USE biblioteca_pessoal1s2026;
create table livro(
	id_livro int primary key auto_increment,
    titulo varchar(255) not null,
    sinopse text not null,
    autor varchar (128) not null,
    editora varchar (128) not null,
    categoria varchar (128) not null,
    ano_publicacao year not null
);
show tables;