Create database Biblioteca
go
use Biblioteca
go
-- Tabelas
Create Table Assunto(
	sg_Assunto char(01) not null,
	ds_Assunto varchar(40))
go
Create Table Editora(
	cd_Editora int not null,
	nm_Editora varchar(40))
go
Create Table Autor(
	cd_Autor int not null,
	nm_Autor varchar(40),
	ds_EnderecoAutor varchar(50))
go
Create Table Livro(
	cd_Livro int not null,
	nm_Titulo varchar(30),
	vl_Livro money,
	dt_Lancamento datetime,
	sg_Assunto char(01),
	cd_Editora int)
go
Create Table Autor_Livro(
	cd_Livro int not null,
	cd_Autor int not null
)
-- Chaves Primarias
Alter Table Assunto
	Add Primary Key (sg_Assunto)
go
Alter Table Editora
	Add Primary Key (cd_Editora)
go
Alter Table Autor
	Add Primary Key (cd_Autor)
go
Alter Table Livro
	Add Primary Key (cd_Livro)
go
Alter Table Autor_Livro
	Add Primary key (cd_Livro, cd_Autor)
go
-- Chaves Estrangeiras
Alter Table Livro
	Add Foreign Key (sg_Assunto)
	References Assunto
go
Alter Table Livro
	Add Foreign Key (cd_Editora)
	References Editora
go
Alter Table Autor_Livro
	Add Foreign key (cd_Livro)
	References Livro
go
Alter Table Autor_Livro
	Add Foreign key (cd_Autor)
	References Autor
go
-- Registros
Insert Into Assunto
	Values 	('D','Drama'),
		('A','Aventura'),
		('C','Comédia')
go
Insert Into Editora
	Values 	(1,'Erica'),
		(2,'Campus')
go
Insert Into Autor
	Values 	(1,'MARIA DA SILVA','RUA DO GRITO, 45'),
		(2,'ANDRÉ CARDOSO','AV. DA SAUDADE,325'),
		(3,'TATIANA SOUZA','AV. BRASIL, 4011'),		
		(4,'MARCO ANDRADE','RUA DO IMPERADOR, 778')
go
Insert Into Livro
	(cd_Livro, nm_Titulo, cd_Editora, sg_Assunto, vl_Livro)
	Values 	(1,'Mar em Fária',1,'D',65.00),
		(2,'O Aeroporto',2,'A',30.00),
		(3,'Einstein',2,'D',4.50),
		(4,'Mar sem fim',1,'A',58.00)

	
--1)
Create Table Autor_Livro(
	cd_Livro int not null,
	cd_Autor int not null
)
Alter Table Autor_Livro
	Add Primary key (cd_Livro, cd_Autor)
go
	Alter Table Autor_Livro
	Add Foreign key (cd_Livro)
	References Livro
go
Alter Table Autor_Livro
	Add Foreign key (cd_Autor)
	References Autor
go
Alter Table Autor_Livro
	Drop Constraint [PK__Autor_Li__088111455BBE4F70]
Alter Table Autor_Livro
	Drop Constraint [FK__Autor_Liv__cd_Au__2F10007B]
Alter Table Autor_Livro
	Drop Constraint [FK__Autor_Liv__cd_Li__2E1BDC42]
Alter Table Autor_Livro
	Add Constraint PK_Autor_Livro Primary key (cd_Autor, cd_Livro)
Alter Table Autor_Livro
	Add Constraint FK_Autor Foreign key (cd_Autor)
	References Autor
Alter Table Autor_Livro
	Add Constraint FK_Livro Foreign key (cd_Livro)
	References Livro
go
insert into Autor_Livro
values	(1, 3),
		(1, 2),
		(2, 1),
		(3, 4),
		(4, 2),
		(4, 3)
go
Select * From Autor_Livro
--2)
Alter Table Livro
	Add qt_Edicao int check (qt_Edicao < 20)
go
Alter Table Livro
Drop Constraint [CK__Livro__qt_Edicao__32E0915F]
go
Alter Table Livro
	Drop Column qt_Edicao
go

--3)
EXEC sp_rename 'Livro.vl_Livro', 'vl_VolumeLivro'
--4)
