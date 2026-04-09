/*Verifico se os dados estão corretos*/
select * from autor;
select * from usuario;
select * from editora;
select * from categoria;
select * from livro;

/*Busco os livros de J.K. Rowlling*/
select * from autor;
select * from autor where id_autor = 8;

/*Busco os livros da categoria Filosofia*/
select * from categoria;
select * from categoria where id_categoria = 6;

/*Atualizo o nome de filosofia para censurado*/
update categoria 
set nome = "Censurado"
where id_categoria = 6;

/*Deleto todos os livros censurados*/
delete from livro
where id_categoria = 6;

delete from categoria
where id_categoria = 6;