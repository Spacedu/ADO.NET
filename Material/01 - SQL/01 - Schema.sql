CREATE TABLE [dbo].[Usuarios] (
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Nome] VARCHAR(70) NOT NULL,
	[Email] VARCHAR(100) NOT NULL,
	[Sexo] CHAR(1) NULL,
	[RG] VARCHAR(15) NULL,
	[CPF] CHAR(14) NULL,
	[NomeMae] VARCHAR(70) NULL,
	[SituacaoCadastro] CHAR(1) NOT NULL,
	[DataCadastro] DATETIMEOFFSET NOT NULL,

	CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED ([Id] ASC)
);

/*One-To-One*/
CREATE TABLE [dbo].[Contatos] (
	[Id] INT IDENTITY(1,1) NOT NULL,
	[UsuarioId] INT NOT NULL,
	[Telefone] VARCHAR(15) NULL,
	[Celular] VARCHAR(15) NULL,

	CONSTRAINT [PK_Contatos] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Contatos_Usuarios] FOREIGN KEY ([UsuarioId]) REFERENCES [dbo].[Usuarios] ([Id]) ON DELETE CASCADE
);

/*One-To-Many*/
CREATE TABLE [dbo].[EnderecosEntrega] (
	[Id] INT IDENTITY(1,1) NOT NULL,
	[UsuarioId] INT NOT NULL,
	[NomeEndereco] VARCHAR(100) NOT NULL,
	[CEP] CHAR(10) NOT NULL,
	[Estado] CHAR(2) NOT NULL,
	[Cidade] VARCHAR(120) NOT NULL,
	[Bairro] VARCHAR(200) NOT NULL,
	[Endereco] VARCHAR(200) NOT NULL,
	[Numero] VARCHAR(20) NULL,
	[Complemento] VARCHAR(30) NULL,
	
	CONSTRAINT [PK_EnderecosEntrega] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_EnderecosEntrega_Usuarios] FOREIGN KEY ([UsuarioId]) REFERENCES [dbo].[Usuarios] ([Id]) ON DELETE CASCADE

);

/*Many-To-Many*/
CREATE TABLE [dbo].[Departamentos] (
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Nome] VARCHAR(100) NOT NULL,
	CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED ([Id] ASC),
);

CREATE TABLE [dbo].[UsuariosDepartamentos] (
	[Id] INT IDENTITY(1,1) NOT NULL,
	[UsuarioId] INT NOT NULL,
	[DepartamentoId] INT NOT NULL,

	CONSTRAINT [PK_UsuariosDepartamentos] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_UsuariosDepartamentos_Usuarios] FOREIGN KEY ([UsuarioId]) REFERENCES [dbo].[Usuarios] ([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_UsuariosDepartamentos_Departamentos] FOREIGN KEY ([DepartamentoId]) REFERENCES [dbo].[Departamentos] ([Id]) ON DELETE CASCADE
);
go


-- Store Procedures na tabela de Usuarios
CREATE PROCEDURE dbo.SelecionarUsuarios
AS
    SELECT * FROM [dbo].[Usuarios]
go

CREATE PROCEDURE dbo.SelecionarUsuario
(
	@id int
)
AS
    SELECT * FROM [dbo].[Usuarios] WHERE Id = @id
go

CREATE PROCEDURE dbo.CadastrarUsuario
(
	@nome varchar(70),
	@email varchar(100),
	@sexo char(1),
	@rg varchar(15),
	@cpf char(14),
	@nomeMae varchar(70),
	@situacaoCadastro char(1),
	@dataCadastro datetimeoffset
)
AS
	INSERT INTO [dbo].[Usuarios] (Nome, Email, Sexo, RG, CPF, NomeMae, SituacaoCadastro, DataCadastro) VALUES
	(@nome, @email, @sexo, @rg, @cpf, @nomeMae, @situacaoCadastro, @dataCadastro); SELECT CAST(scope_identity() AS int)
go



CREATE PROCEDURE dbo.AtualizarUsuario 
(
	@id int,
	@nome varchar(70),
	@email varchar(100),
	@sexo char(1),
	@rg varchar(15),
	@cpf char(14),
	@nomeMae varchar(70),
	@situacaoCadastro char(1),
	@dataCadastro datetimeoffset
)
AS
	UPDATE [dbo].[Usuarios] SET 
	Nome = @nome,
	Email = @email,
	Sexo = @sexo,
	RG = @rg,
	CPF = @cpf,
	NomeMae = @nomeMae,
	SituacaoCadastro = @situacaoCadastro, 
	DataCadastro = @dataCadastro
	WHERE Id = @id
go

CREATE PROCEDURE dbo.DeletarUsuario
(
	@id int
)
AS
	DELETE FROM [dbo].[Usuarios] WHERE Id = @id
go
