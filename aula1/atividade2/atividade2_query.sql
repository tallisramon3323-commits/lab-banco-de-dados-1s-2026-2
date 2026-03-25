CREATE database BIBLIOTECA_PESSOAL;
show tables;

alter table livro
add column id_usuario int,
add constraint fk_livro_usuario
foreign key (id_usuario)
references usuario(id_usuario)
on delete restrict;

alter table livro
add column id_autor int,
add constraint fk_livro_autor
foreign key(id_autor)
references autor (id_autor)
on delete restrict;

alter table livro
add column id_editora int,
add constraint fk_livro_editora
foreign key (id_editora)
references editora (id_editora)
on delete restrict;

alter table livro
add column id_categoria int,
add constraint fk_livro_categoria
foreign key (id_categoria)
references categoria (id_categoria)
on delete restrict;


alter table livro
add column status_lido int,
modify status_lido boolean default (0);

alter table livro
add constraint check_status_leitura
check (status_lido in (0,1) );

describe livro;