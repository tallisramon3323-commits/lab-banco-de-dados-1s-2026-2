use BIBLIOTECA_PESSOAL;
create table livro(
	id_livro int not null auto_increment primary key,
    status_livro varchar (255),
    titulo varchar (255) not null,
    sinopse text not null,
    ano_publicacao year,
    
);