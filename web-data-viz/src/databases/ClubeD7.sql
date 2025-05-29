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
  
  create table Quiz (idQuiz int primary key auto_increment,
  nome varchar(45)
  );
  -- ALTER TABLE Usuario drop constraint chkUser ;
  /*Tabela perguntas1*/
  create table Perguntas (idPerguntas int auto_increment,
  perguntas text, 
  alternativas char(1),
  fkQuiz int,
  primary key (idPerguntas, fkQuiz),
  constraint fkquizN foreign key (fkQuiz) references Quiz(idQuiz)
  );

/*Associativa Petguntas1*/
create table Resultado (idResultado int auto_increment,
fkUsuario int,
constraint fkUser foreign key (fkUsuario) references Usuario (idUsuario),
fkPerguntas int,
constraint fkPerg foreign key (fkPerguntas) references Perguntas (idPerguntas),
fkQuiz int,
constraint fkQuin foreign key (fkQuiz) references Quiz (idQuiz),
tentativas varchar(45),
alternativaEscolhida char(1),
primary key (idResultado, fkUsuario, fkPerguntas, fkQuiz)
);

SELECT * FROM Usuario;
select*from Quiz;
select *from Perguntas;
select *from Resultado;


