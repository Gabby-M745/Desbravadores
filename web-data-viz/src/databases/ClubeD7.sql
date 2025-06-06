/*COPIA ALTERARA*/
CREATE DATABASE ClubeD7;
USE ClubeD7;

-- desc Usuario;
-- alter table  Usuario drop constraint chkUser;
-- drop table Usuario;
-- drop table Resultado;
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
totalAcertosQuiz INT,
totalErrosQuiz INT, 
pontuacao INT, -- pontuação total
primary key (idResultado, fkUsuario, fkQuiz)
);

SELECT * FROM Usuario;
select*from Quiz;
select *from Resultado;
desc Usuario;

alter table Usuario add column Email varchar(45); 
-- update Usuario set Email = 'kaka@gmail.com' where idUsuario = 64;
alter table Resultado modify column pontuacao decimal(10,2);
alter table Quiz rename column nome to nomeQ;/*ALTERAÇÃO DE NOME,---ATUALIZAÇÃO*/
alter table Usuario modify column Email varchar(45) unique; 
desc Resultado;

insert into Quiz (idQuiz, nomeQ) values/*se declarado o id, acrescentar o default!!*/
(default, 'Quiz1' ),
(default,'Quiz2');

-- SELECT idUsuario, Email FROM Usuario WHERE Email = 'miguel@gmail.com' AND senha = '123';
-- truncate table Usuario;

SELECT LENGTH(senha) FROM Usuario 
WHERE Email = "felipe@gmail.com";

/*FILTRAÇÃO DE ACERTOS DO USUÁRIO EM RESPEITO AS QUESTÕES MARCADAS NO QUIZ */
select  resu.totalAcertosQuiz as ACERTOS, sudo.Nome as Nome, q.nomeQ as QUIZ /*aparentemente deu certo*/
from Resultado resu
join Usuario sudo on resu.fkUsuario= sudo.idUsuario
join Quiz q on resu.fkQuiz=idQuiz;/*está certo????? conferir em tb Resultado*/
/*ATENÇÃO!
quiz2: invertido os valores de acertos e pontuação!!!!!*/

/*FILTRAÇÃO DE TOTAL DE ERRADAS DO USUÁRIO EM RESPEITO AS QUESTÕES MARCADAS NO QUIZ */
select  resu.totalErrosQuiz as Errado, sudo.Nome as Nome, q.nomeQ as QUIZ /*aparentemente deu certo*/
from Resultado resu
join Usuario sudo on resu.fkUsuario= sudo.idUsuario
join Quiz q on resu.fkQuiz=idQuiz; /*legal, parece que deu certo*/

/*FILTRAÇÃO DA PONTUAÇÃO DE ACERTOS E ERROS*/
select  sudo.Nome as Nome, resu.totalErrosQuiz as ERRADAS, resu.pontuacao as PONTUACAO, q.nomeQ as QUIZ
FROM Usuario sudo
join Resultado resu on resu.fkUsuario=sudo.idUsuario
/*join Resultado total on total.fkUsuario=sudo.idUsuario*/
join Quiz q on q.idQuiz=resu.fkQuiz;

/*UNIÃO DA PONTUAÇÃO , ACERTOS, ERROS E USUARIO E SEU QUIZ ESCOLHIDO*/
SELECT 
    sudo.Nome AS Nome, 
    resu.totalAcertosQuiz AS acertas, 
    resu.totalErrosQuiz AS erradas, 
    resu.pontuacao AS PONTUACAO, 
    q.nomeQ AS QUIZ 
FROM 
    Usuario sudo
JOIN 
    Resultado resu ON resu.fkUsuario = sudo.idUsuario
JOIN 
    Quiz q ON q.idQuiz = resu.fkQuiz
    where idUsuario=1;
    
select *from Resultado;

-- insert into Usuario (Nome,Clube, Unidade,AssoMissao,Usuar,Senha,Email) values ('teste', 'nao', 'nao', 'nao', 'Visita', '123', 'teste@gmail.com');
INSERT INTO Resultado (fkUsuario,fkQuiz,totalAcertosQuiz, totalErrosQuiz, pontuacao)
        VALUES (83,2,3, 5,7.25);