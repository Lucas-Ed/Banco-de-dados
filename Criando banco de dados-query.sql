USE [master]
GO

/****** 
CREATE DATABASE nome_do_banco
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'nome_logico_do_arquivo_de_dados', FILENAME = N'local_do_arquivo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'nome_logico_do_arquivo_de_log', FILENAME = N'local_do_arquivo.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
 ******/

CREATE DATABASE [Projeto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projeto', FILENAME = N'C:\database\Projeto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projeto_log', FILENAME = N'C:\database\Projeto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projeto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER  DATABASE  [Projeto] SET  ANSI_NULL_DEFAULT  OFF 
GO

ALTER  DATABASE  [Projeto] SET  ANSI_NULLS  OFF 
GO

ALTER  DATABASE  [Projeto] SET  ANSI_PADDING  OFF 
GO

ALTER  DATABASE  [Projeto] SET  ANSI_WARNINGS  OFF 
GO

ALTER  DATABASE  [Projeto] SET  ARITHABORT  OFF 
GO

ALTER  DATABASE  [Projeto] SET  AUTO_CLOSE  OFF 
GO

ALTER  DATABASE  [Projeto] SET  AUTO_SHRINK  OFF 
GO

ALTER  DATABASE [Projeto] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER  DATABASE [Projeto] SET  CURSOR_CLOSE_ON_COMMIT  OFF 
GO

ALTER  DATABASE [Projeto] SET  CURSOR_DEFAULT   GLOBAL 
GO

ALTER  DATABASE [Projeto] SET  CONCAT_NULL_YIELDS_NULL  OFF 
GO

ALTER  DATABASE [Projeto]  SET NUMERIC_ROUNDABORT OFF
GO

ALTER  DATABASE [Projeto] SET  QUOTED_IDENTIFIER  OFF 
GO

ALTER  DATABASE [Projeto] SET  RECURSIVE_TRIGGERS  OFF 
GO

ALTER  DATABASE [Projeto] SET   DISABLE_BROKER 
GO

ALTER  DATABASE [Projeto] SET  AUTO_UPDATE_STATISTICS_ASYNC  OFF 
GO

ALTER  DATABASE [Projeto] SET  DATE_CORRELATION_OPTIMIZATION  OFF 
GO

ALTER  DATABASE [Projeto] SET  TRUSTWORTHY  OFF 
GO

ALTER  DATABASE [Projeto] SET  ALLOW_SNAPSHOT_ISOLATION  OFF 
GO

ALTER  DATABASE [Projeto] SET  PARAMETERIZATION  SIMPLE 
GO

ALTER  DATABASE [Projeto] SET  READ_COMMITTED_SNAPSHOT  OFF 
GO

ALTER  DATABASE [Projeto] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER  DATABASE [Projeto] SET RECOVERY SIMPLE  
GO

ALTER  DATABASE [Projeto] SET   MULTI_USER 
GO

ALTER  DATABASE [Projeto] SET  PAGE_VERIFY  CHECKSUM  
GO

ALTER  DATABASE [Projeto] SET  DB_CHAINING  OFF 
GO

ALTER  DATABASE [Projeto] SET  FILESTREAM (NON_TRANSACTED_ACCESS =  OFF )
GO

ALTER  DATABASE [Projeto] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO

ALTER  DATABASE [Projeto] SET  DELAYED_DURABILITY  =  DISABLED 
GO

ALTER  DATABASE [Projeto] SET  QUERY_STORE  =  OFF
GO

ALTER  DATABASE [Projeto] SET   READ_WRITE 
GO