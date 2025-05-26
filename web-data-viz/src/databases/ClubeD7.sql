CREATE DATABASE ClubeD7;
USE ClubeD7;
-- desc Usuario;

-- alter table  Usuario drop constraint chkUser;
-- drop table Usuario;
-- drop database ClubeD7;
CREATE TABLE Usuario (
  idUsuario INT PRIMARY KEY auto_increment,
  Nome VARCHAR(45),
  Clube VARCHAR(45),
  Unidade VARCHAR(45),
/*  constraint chkUnidade 
  check (Unidade in ('Leões','Tigresas', 'Onças', 'Panteras')),*/
 -- Email VARCHAR(45) unique,  
  -- dtNasc date,
  AssoMissao VARCHAR(45),
 Usuar varchar (45),
 /*constraint chkUser check(Usuar in("Visita","Desbravador")),*/
  Senha VARCHAR(45)
  );
  show tables;
  -- ALTER TABLE Usuario drop constraint chkUser ;
  /*Tabela perguntas1*/
  create table Perguntas (idPerguntas int primary key auto_increment,
  perguntas text, 
  alternativas char(1)
  );

/*Associativa Petguntas1*/
create table Resultado (idResultado int primary key auto_increment,
fkUsuario int,
constraint fkUser foreign key (fkUsuario) references Usuario (idUsuario),
fkPerguntas int,
constraint fkPerg foreign key (fkPerguntas) references Perguntas (idPerguntas),
tentativas varchar(45),
alternativaEscolhida char(1)
);

/*Tabela perguntas2*/
  create table Perguntas2 (idPerguntas2 int primary key auto_increment,
  perguntas2 text, 
  alternativas2 char(1)
  );
  
/*Associativa Petguntas2*/
create table Resultado2 (idResultado2 int primary key auto_increment,
fkUsuario2 int,
constraint fkUser2 foreign key (fkUsuario2) references Usuario (idUsuario),
fkPerguntas2 int,
constraint fkPerg2 foreign key (fkPerguntas2) references Perguntas2 (idPerguntas2),
tentativas2 varchar(45),
alternativaEscolhida2 char(1)
);

SELECT * FROM Usuario;
select *from Perguntas;
select *from Resultado;

select *from Perguntas2;
select *from Resultado2;

