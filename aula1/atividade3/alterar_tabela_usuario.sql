USE BIBLIOTECA_PESSOAL;
CREATE TABLE usuario(
	id_usuario int not null auto_increment primary key,
    nome varchar (128) not null,
    email varchar(128) not null unique,
    senha  varchar (255) unique not null,
    data_cadastro timestamp,
    data_atualizacao timestamp
);
