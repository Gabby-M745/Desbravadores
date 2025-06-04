/*COPIA ALTERARA*/
CREATE DATABASE ClubeD7;
USE ClubeD7;
-- desc Usuario;

-- alter table  Usuario drop constraint chkUser;
-- drop table Usuario;
drop table Resultado;

-- drop database ClubeD7;
CREATE TABLE Usuario (
  idUsuario INT PRIMARY KEY auto_increment,
  Nome VARCHAR(45),
  Clube VARCHAR(45),
  Unidade VARCHAR(45),
  AssoMissao VARCHAR(45),
  Usuar varchar (45),
  Senha VARCHAR(45)
  );
  show tables;
  
  create table Quiz (idQuiz int primary key auto_increment,
  nome varchar(45)
  );
  -- ALTER TABLE Usuario drop constraint chkUser ;

 /* create table Perguntas (idPerguntas int auto_increment,
  perguntas text, 
  alternativas char(1),
  fkQuiz int,
  primary key (idPerguntas, fkQuiz),
  constraint fkquizN foreign key (fkQuiz) references Quiz(idQuiz)
  );*/

/*Associativa */

create table Resultado (idResultado int auto_increment,
fkUsuario int,
constraint fkUser foreign key (fkUsuario) references Usuario (idUsuario),
fkQuiz int,
constraint fkQuin foreign key (fkQuiz) references Quiz (idQuiz),
/*tentativas varchar(45), -- quantidades realizadas          -- PENSAR SOBRE */
totalAcertosQuiz INT, -- total de acertos na tentativa/*simplifica a "alternativaEscolhida" pq aí vamos saber diretamente apenas a soma de tudo e não uma verificação de cada questão*/
totalErrosQuiz INT, -- total de erros na tentativa
pontuacao INT, -- pontuação total
primary key (idResultado, fkUsuario, fkQuiz)
);
/*acertos varchar(45), -- exibir na dashboard
erradas varchar(45), -- exibir na dashbard*/
SELECT * FROM Usuario;
select*from Quiz;
select *from Perguntas;
select *from Resultado;
select*from resultadosQuiz;

insert into Quiz( nomeQ) values
('Quiz1'),
('Quiz2');
alter table Usuario add column Email varchar(45); 
update Usuario set Email = 'kaka@gmail.com' where idUsuario = 64;
/*create table resultadosQuiz (idResultadoQ int primary key auto_increment,
totalAcertosQuiz INT, -- total de acertos na tentativa/*simplifica a "alternativaEscolhida" pq aí vamos saber diretamente apenas a soma de tudo e não uma verificação de cada questão*/
/*totalErrosQuiz INT); */-- total de erros na tentativa
desc Resultado;