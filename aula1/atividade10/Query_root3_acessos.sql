/*cria usuarios*/
create user "ujoao"@"%" identified by "123";
create user "upedro"@"%" identified by "123";

/*Garante o acesso*/
grant select, update on biblioteca_pessoal.livro 
to "ujoao"@"%";

select * from audit_livro;

grant select, delete on biblioteca_pessoal.livro 
to "upedro"@"%";

select * from audit_livro;


/*Remove o acesso*/
revoke select, update on biblioteca_pessoal.livro 
from "ujoao"@"%";



revoke select, update on biblioteca_pessoal.livro 
from "upedro"@"%";
drop trigger audit_delete_livro;
