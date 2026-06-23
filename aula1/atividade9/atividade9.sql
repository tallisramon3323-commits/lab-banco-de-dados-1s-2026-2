use biblioteca_pessoal;
create table audit_livro(
	acao varchar(255),
    usuario_bd varchar (255),
    id_livro int,
    dados_antigos text,
    dados_novos text,
    data_acao timestamp default current_timestamp
);

/*criando a trigger de controle*/
delimiter $$
create trigger audit_update_livro
after update on livro
for each row 
begin
	insert into audit_livro
		(acao, usuario_bd, id_livro, dados_antigos, dados_novos)
    values
		("update", user(), old.id_livro, 
			concat("titulo: ", old.titulo , " lido: ", old.lido),
			concat("titulo: ", new.titulo , " lido: ", new.lido)
		);
end $$
delimiter ;
 /*verifica dados*/
select * from livro;

/*altera dados lidos*/

update livro
set lido = 0
where id_livro = 2;

/*verifica as alterações feitas*/
select * from audit_livro;

/*criando novo usuário de bd*/
create user "usuario_auxiliar"@"%" identified by "catolica";
