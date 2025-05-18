CREATE DATABASE ClubeD7;
USE ClubeD7;

CREATE TABLE Cadastro (
  idCadastrar INT PRIMARY KEY,
  Nome VARCHAR(45),
  Usuario varchar(45),/*CAMPO COMPOSTO?*/
  constraint chkUsuario
  check (Usuario in ('Desbravdor', 'Conselheiro')),
  Cargo VARCHAR(45),
  Clube VARCHAR(45),
  Unidade VARCHAR(45),
  constraint chkUnidade 
  check (Unidade in ('Leões','Tigresas', 'Onças', 'Panteras')),
  Email VARCHAR(45) unique,  
  dtNasc date,
  AssoMissao VARCHAR(45),
  Senha VARCHAR(45) unique
  );
  
CREATE TABLE Login (
  idLogin INT PRIMARY KEY,
  nome VARCHAR(45),
  Clube VARCHAR(45),
  Unidade VARCHAR(45),
  Senha VARCHAR(45),
  statusMembro varchar (30),
constraint chkStatus
check (statusMembro in ('Ativo', 'Inativo'))
);

SELECT * FROM Cadastro;

-- APELIDOS -ALIASES
-- as: como " este campo será como..."
SELECT statusMembro AS 'Status do Membro' from Login;
SELECT statusMembro AS 'Tipo de Usuário' from Login; 
