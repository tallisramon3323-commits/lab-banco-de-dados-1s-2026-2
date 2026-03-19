CREATE database BIBLIOTECA_PESSOAL;
show tables;

alter table livro
add column id_usuario int,
add constraint fk_livro_usuario
foreign key (id_usuario)
references usuario(id_usuario)
on delete restrict;

describe livro;

