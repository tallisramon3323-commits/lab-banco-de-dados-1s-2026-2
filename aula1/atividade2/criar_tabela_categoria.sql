use BIBLIOTECA_PESSOAL;
CREATE table categoria (
	id_categoria int not null auto_increment primary key,
    nome varchar (255) not null,
    descricao text,
	data_cadastro timestamp,
    data_atualizacao timestamp
);