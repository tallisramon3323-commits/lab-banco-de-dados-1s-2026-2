use BIBLIOTECA_PESSOAL;
create TABLE editora(
	id_editora int auto_increment not null primary key,
    nome varchar (255) not null,
    cidade varchar (64) not null,
    estado varchar (64) not null,
    pais varchar(64),
	data_cadastro timestamp,
    data_atualizacao timestamp
);