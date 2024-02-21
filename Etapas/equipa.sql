CREATE DATABASE EQUIPA
go
USE EQUIPA
GO
CREATE TABLE Equipamento (
	cd_equipamento int NOT NULL,
	ds_equipamento varchar(50)
)
go
CREATE TABLE Fornecedores (
	cd_forn int NOT NULL,
	nm_forn varchar(50) NULL,
	nm_matriz varchar(50)
)
go
CREATE TABLE Custo (
	cd_forn int NOT NULL,
	cd_equipamento int NOT NULL,
	vl_Custo Money
)
--chaves
ALTER TABLE Equipamento 
	ADD PRIMARY KEY (cd_equipamento)
GO
ALTER TABLE Fornecedores
	ADD PRIMARY KEY (cd_forn)
GO
ALTER TABLE Custo
	ADD PRIMARY KEY (cd_equipamento, cd_forn)
GO
ALTER TABLE Custo
	ADD FOREIGN KEY (cd_equipamento)
	REFERENCES Equipamento
GO
ALTER TABLE Custo
	ADD FOREIGN KEY (cd_forn)
	REFERENCES Fornecedores
go

--Renomeando as 
ALTER TABLE Custo
	DROP CONSTRAINT [PK__custo__A8F38C3FFE967E7B]
ALTER TABLE Custo
	DROP CONSTRAINT [FK__custo__cd_equipa__33D4B598]
ALTER TABLE Custo
	DROP CONSTRAINT [FK__custo__cd_forn__34C8D9D1]
ALTER TABLE Custo
	ADD CONSTRAINT PK_Custo PRIMARY KEY (cd_equipamento, cd_forn)
ALTER TABLE Custo
	ADD CONSTRAINT FK_Equipamento FOREIGN KEY (cd_equipamento)
	REFERENCES Equipamento
ALTER TABLE Custo
	ADD CONSTRAINT FK_fornecedore FOREIGN KEY (cd_forn)
	REFERENCES Fornecedores
