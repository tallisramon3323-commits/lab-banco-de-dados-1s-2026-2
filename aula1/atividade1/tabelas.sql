USE biblioteca_pessoal_1S2026;
CREATE TABLE Usuario(
		id_usuario int auto_increment primary key,
		nome varchar (255) not null,
        email varchar (255) not null unique,
        data_cadastro date not null
);
show tables;