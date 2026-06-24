CREATE DATABASE Cursos;

USE Cursos;



create table Aluno (

id_aluno int primary key auto_increment not null,

nome varchar (128) not null,

email varchar (128) unique not null,

dt_nascimento date

);



create table Professor (

id_professor int primary key auto_increment not null,

nome varchar (128),

email varchar (128) unique not null,

especialidade varchar (128) 

);



create table Curso (

id_curso int primary key auto_increment not null,

titulo varchar(128) not null,

descricao text,

carga_horaria varchar (128) not null


);





create table Turma(

id_turma int primary key auto_increment not null,

    id_curso int,

    id_professor int,

    horario varchar (64),

    

constraint fk_curso_turma foreign key (id_curso)

    references curso (id_curso)

    on delete cascade,

    

    constraint fk_professor_turma foreign key (id_professor)

    references professor (id_professor)

    on delete cascade

);





create table Matricula (

id_matricula int primary key auto_increment not null,

data_matricula date not null,

id_aluno int,

id_turma int,

    nota float,





constraint fk_aluno_matricula foreign key (id_aluno)

references aluno(id_aluno)

on delete cascade,



constraint fk_turma_matricula foreign key (id_turma)

references turma(id_turma)

on delete cascade

    );




    /*ALUNOS*/

insert into Aluno(nome, email, dt_nascimento) values

("Luiza de Sousa", "luiza@gmail.com", "2002-07-20"),

("Ana Silva", "ana@gmail.com", "2007-02-21"),

("Pedro Costa","pedro@gmail.com","2003-06-15"),

("Paulo Cunha", "paulo@gmail.com", "2005-11-04"),

('Carlos Henrique Oliver', 'carlos.oliver@gmail.com', '1998-03-12'),

('Mariana Souza Santos', 'mari.santos@gmail.com', '2001-07-25'),

('Lucas Gabriel Lima', 'lucas.lima@outlook.com', '2003-11-02'),

('Beatriz Costa Araujo', 'bia.araujo@gmail.com', '2000-05-18'),

('Gabriel Ribeiro Alves', 'gabs.alves@gmail.com', '1999-09-30'),

('Amanda Martins Melo', 'amanda.melo@hotmail.com', '2002-01-14'),

('Rafael Fonseca Dias', 'rafa.dias@gmail.com', '1997-12-05'),

('Larissa Carvalho Reis', 'lari.reis@gmail.com', '2004-04-22'),

('Mateus Rocha Silva', 'mateus.rocha@outlook.com', '2001-08-09'),

('Camila Nogueira Lima', 'camila.nog@gmail.com', '2000-02-27'),

('Thiago Mendes Cruz', 'thiago.cruz@gmail.com', '1996-10-16'),

('Isabela Freire Gomes', 'isa.freire@gmail.com', '2003-06-21'),

('Bruno Cardoso Pinto', 'bruno.cardoso@hotmail.com', '1999-04-03'),

('Letícia Vieira Rocha', 'le.vieira@gmail.com', '2002-11-11'),

('Rodrigo Cunha Barbosa', 'rodrigo.cunha@gmail.com', '1995-07-08'),

('Juliana Castro Neves', 'ju.castro@gmail.com', '2001-03-19'),

('Diego Fernandes Lima', 'diego.fer@outlook.com', '1998-08-24'),

('Fernanda Ramos Pires', 'fe.ramos@gmail.com', '2004-01-05'),

('Leonardo Moraes Maciel', 'leo.moraes@gmail.com', '2000-09-14'),

('Gabriela Ortiz Farias', 'gabi.ortiz@gmail.com', '2003-05-29'),

('Vitor Hugo Teixeira', 'vitor.hugo@hotmail.com', '1997-11-18'),

('Sophia Malta Fagundes', 'sophia.malta@gmail.com', '2002-06-07'),

('Marcelo Augusto Neto', 'marcelo.guto@gmail.com', '1996-02-23'),

('Natália Guerra Meireles', 'nat.guerra@gmail.com', '2001-10-12'),

('Felipe Dantas Sales', 'felipe.dantas@outlook.com', '1999-01-29'),

('Alice Ramos Nogueira', 'alice.ramos@gmail.com', '2004-08-04'),

('Gustavo Henrique Paz', 'gustavo.paz@gmail.com', '2000-12-15'),

('Heloísa Frota Dorneles', 'helo.frota@gmail.com', '2002-04-09'),

('Caio Vinícius Malta', 'caio.vini@hotmail.com', '1998-05-22'),

('Lorena Vasconcelos', 'lore.vasco@gmail.com', '2003-09-03'),

('Arthur Schimidt Barbosa', 'arthur.sb@gmail.com', '1995-04-17'),

('Cecília Meireles Prado', 'cecilia.prado@gmail.com', '2001-12-26'),

('Danilo Soares Rezende', 'danilo.soares@outlook.com', '1999-07-11'),

('Manuela Antunes Vila', 'manu.vila@gmail.com', '2004-02-13'),

('Samuel Peixoto Correa', 'samuel.peixoto@gmail.com', '2000-03-08'),

('Evelyn Assis Fontes', 'evelyn.assis@gmail.com', '2002-10-20'),

('Igor Guimarães Torres', 'igor.gt@hotmail.com', '1997-06-14'),

('Bárbara Silveira Luz', 'barbara.luz@gmail.com', '2003-01-31'),

('Renan Lopes Pinheiro', 'renan.lopes@gmail.com', '1996-09-05'),

('Clarice Mendes Franco', 'clarice.franco@gmail.com', '2001-05-14');





/*PROFESSORES*/

insert into Professor(nome, email, especialidade) values

("Carlos Eduardo Silva", "carlos@gmail.com", "P.O.O."),

("Ana Beatriz Rodrigues","anab@gmail.com","Rede de Computadores"),

("João Pedro Macleure Nunes dos Santos", "joao@gmail.com", "Laborarotio de banco de dados"),

("Mariana Costa Lima","mariana@gmail.com","Métodos Ágeis");





/*CURSOS*/

insert into Curso(titulo, descricao, carga_horaria) values

("Progamação Orientada a Objetos", "Um paradigma de programação é um estilo fundamental de programação que molda como os programadores estruturam, organizam e escrevem código.", "120h"),

("Rede de Compudadores", "um sistema que interconecta computadores  para trocar dados e compartilhar recursos.", "80h"),

("Laboratório de Banco de Dados","Desenvolvimento de consultas SQL, processamento de dados, modelagem, triggers, índices e controle de transações em plataformas como PostgreSQL, MySQL ou Oracle.", "60h"),

("Métodos Ágeis","abordagens iterativas e incrementais focadas na entrega de valor contínua, colaboração e rápida adaptação às mudanças.","40h");



/*TURMA*/

insert into Turma(id_curso, id_professor, horario) values

(1,1, "Matutino"),

(2,2, "Verspertino"),

(3,3, "Verspertino"),

(4,4, "Noturno");



/*MATÍCULA*/

insert into Matricula(id_aluno, data_matricula, id_turma, nota) values
(5, '2026-02-10', 1, 8.5),
(5, '2026-02-10', 2, 7.0),
(6, '2026-02-11', 1, 9.2),
(6, '2026-02-11', 3, 6.5),
(7, '2026-02-12', 2, 5.8),
(7, '2026-02-12', 4, 8.0),
(8, '2026-02-12', 3, 10.0),
(8, '2026-02-12', 1, 7.5),
(9, '2026-02-13', 4, 4.5),
(10, '2026-02-15', 1, 8.8),
(11, '2026-02-15', 2, 9.0),
(12, '2026-02-16', 3, 7.2),
(13, '2026-02-17', 4, 6.0),
(14, '2026-02-18', 1, 8.0),
(15, '2026-02-19', 2, 5.5),
(16, '2026-02-20', 3, 7.8),
(17, '2026-02-22', 4, 9.5),
(18, '2026-02-22', 1, 6.2),
(19, '2026-02-23', 2, 8.3),
(20, '2026-02-24', 3, 4.0),
(21, '2026-02-25', 4, 7.9),
(22, '2026-02-25', 1, 8.7),
(23, '2026-02-26', 2, 6.8),
(24, '2026-02-27', 3, 9.1),
(25, '2026-03-01', 4, 10.0),
(26, '2026-03-02', 1, 5.0),
(27, '2026-03-03', 2, 7.4),
(28, '2026-03-04', 3, 8.2),
(29, '2026-03-05', 4, 6.9),
(30, '2026-03-05', 1, 9.6),
(31, '2026-03-06', 2, 8.1),
(32, '2026-03-08', 3, 7.3),
(33, '2026-03-09', 4, 5.2),
(34, '2026-03-10', 1, 8.0),
(35, '2026-03-11', 2, 9.4),
(36, '2026-03-12', 3, 6.7);



describe aluno;

select * from aluno;

select * from curso;

select * from professor;

select * from turma;

select * from matricula;



/*JOINS*/

select

t1.nome as nome_aluno,

    t3.titulo as nome_curso,

    t4.nome as nome_professor,

    t2.horario as horario_turma,

    t5.data_matricula,

    count(t5.id_matricula) as total_matriculas

from

Aluno t1

join

Matricula t5 on (t1.id_aluno = t5.id_aluno)

join

Turma t2 on (t5.id_turma = t2.id_turma)

join

Curso t3 on (t2.id_curso = t3.id_curso)

join

Professor t4 on (t2.id_professor = t4.id_professor);



create or replace view aluno_nota as (

select

t2.nome as aluno,

    avg

);