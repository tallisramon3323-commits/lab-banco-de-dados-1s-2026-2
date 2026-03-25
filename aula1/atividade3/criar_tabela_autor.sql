use BIBLIOTECA_PESSOAL;
create table autor(
	id_autor int auto_increment not null primary key,
    nome varchar (128) not null,
    ano_nascimento year unique,
    ano_morte year,
    descricao text,
    data_cadastro timestamp,
    data_atualizacao timestamp
);