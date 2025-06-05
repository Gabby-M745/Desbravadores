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
  desc Usuario;
  create table Quiz (idQuiz int primary key auto_increment,
  nome varchar(45)
  );

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

SELECT * FROM Usuario;

desc Usuario;
select*from Quiz;

select *from Resultado;


alter table Usuario add column Email varchar(45); 
update Usuario set Email = 'kaka@gmail.com' where idUsuario = 64;

desc Resultado;
alter table Resultado modify column pontuacao decimal(10,2);
alter table Quiz rename column nome to nomeQ;/*ALTERAÇÃO DE NOME,---ATUALIZAÇÃO*/

insert into Quiz (idQuiz, nomeQ) values/*se declarado o id, acrescentar o default*/
(default, 'Quiz1' ),
(default,'Quiz2');

 INSERT INTO Resultado (fkUsuario,fkQuiz,totalAcertosQuiz, totalErrosQuiz, pontuacao)
        VALUES (1,1,3, 5,7.25);

SELECT idUsuario, Email FROM Usuario WHERE Email = 'miguel@gmail.com' AND senha = '123';
-- truncate table Usuario;


SELECT LENGTH(senha) FROM Usuario 
WHERE Email = "felipe@gmail.com";

insert into Usuario (Nome,Clube, Unidade,AssoMissao,Usuar,Senha,Email) values ('teste', 'nao', 'nao', 'nao', 'Visita', '123', 'teste@gmail.com');