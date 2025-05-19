CREATE DATABASE ClubeD7;
USE ClubeD7;
desc Usuario;
drop table Usuario;
CREATE TABLE Usuario (
  idUsuario INT PRIMARY KEY auto_increment,
  Nome VARCHAR(45),
  Clube VARCHAR(45),
  Unidade VARCHAR(45),
  constraint chkUnidade 
  check (Unidade in ('Leões','Tigresas', 'Onças', 'Panteras')),
 -- Email VARCHAR(45) unique,  
  -- dtNasc date,
  AssoMissao VARCHAR(45),
  Senha VARCHAR(45) unique
  );
  
/*CREATE TABLE Login (
  idLogin INT PRIMARY KEY auto_increment,
  fkCadastro int,
  nome VARCHAR(45),
  Clube VARCHAR(45),
  Unidade VARCHAR(45),
  Senha VARCHAR(45),
  statusMembro varchar (30),
constraint chkStatus
check (statusMembro in ('Ativo', 'Inativo'))
);*/

insert into Usuario (nome, membro) values ('Fulano1', 'Desbravador');
insert into Usuario (nome, membro) values ('Fulano2', 'Conselheiro');

insert into Usuario (membro, Unidade ) VALUES
('Desbravador', 'Tigresas');

SELECT * FROM Usuario;
--  drop database ClubeD7;
-- APELIDOS -ALIASES
-- as: como " este campo será como..."
-- SELECT statusMembro AS 'Status do Membro' from Login;
-- SELECT statusMembro AS 'Tipo de Usuário' from Login; 
