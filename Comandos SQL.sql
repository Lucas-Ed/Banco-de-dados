--Comandos SQL usáveis

--Criar tabela
CREATE TABLE Cidade (
    id int IDENTITY(1,1) primary key,
    nome varchar(255) not null
);

-----------------------------------------------------
--Insere na tabela do banco de dados
INSERT INTO Cidade (nome)
VALUES ('Rio Claro');

-----------------------------------------------------

--Seleciona a tabela e exibe
select * from Cidade;

-----------------------------------------------------

--Exclui a tabela
drop table Cidade