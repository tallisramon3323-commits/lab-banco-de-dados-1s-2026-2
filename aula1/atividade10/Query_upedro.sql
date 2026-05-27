use biblioteca_pessoal;

select * from livro;

update livro
set titulo = "The Hobbit"
where id_livro=3;

delete from livro
where id_livro = 11;
