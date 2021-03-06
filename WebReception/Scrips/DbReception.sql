USE [DbReception]
GO
ALTER TABLE [dbo].[TbAppuntamenti] DROP CONSTRAINT [FK_ReferentiAppuntamenti]
GO
ALTER TABLE [dbo].[TbAppuntamenti] DROP CONSTRAINT [FK_PostazioneAppuntamenti]
GO
ALTER TABLE [dbo].[TbAppuntamenti] DROP CONSTRAINT [FK_ClientiAppuntamenti]
GO
/****** Object:  Table [dbo].[TbReferenti]    Script Date: 08/11/2021 16:25:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbReferenti]') AND type in (N'U'))
DROP TABLE [dbo].[TbReferenti]
GO
/****** Object:  Table [dbo].[TbPostazioni]    Script Date: 08/11/2021 16:25:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbPostazioni]') AND type in (N'U'))
DROP TABLE [dbo].[TbPostazioni]
GO
/****** Object:  Table [dbo].[TbClienti]    Script Date: 08/11/2021 16:25:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbClienti]') AND type in (N'U'))
DROP TABLE [dbo].[TbClienti]
GO
/****** Object:  Table [dbo].[TbAppuntamenti]    Script Date: 08/11/2021 16:25:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbAppuntamenti]') AND type in (N'U'))
DROP TABLE [dbo].[TbAppuntamenti]
GO
/****** Object:  Table [dbo].[TbAppuntamenti]    Script Date: 08/11/2021 16:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbAppuntamenti](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdReferente] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdPostazione] [int] NOT NULL,
	[Orario] [datetime] NOT NULL,
	[Durata] [time](7) NOT NULL,
 CONSTRAINT [PK_TbAppuntamenti] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbClienti]    Script Date: 08/11/2021 16:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbClienti](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](255) NOT NULL,
	[Cognome] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Telefono] [nvarchar](255) NULL,
 CONSTRAINT [PK__TbClient__3214EC0794FD50F6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPostazioni]    Script Date: 08/11/2021 16:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPostazioni](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Piano] [varchar](255) NOT NULL,
	[CodiceStanza] [varchar](255) NOT NULL,
 CONSTRAINT [PK__postazio__3214EC0733DD0D84] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbReferenti]    Script Date: 08/11/2021 16:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbReferenti](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](255) NOT NULL,
	[Cognome] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Telefono] [nvarchar](255) NULL,
 CONSTRAINT [PK__TbReferenti__3214EC0794FD50F6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbClienti] ON 

INSERT [dbo].[TbClienti] ([Id], [Nome], [Cognome], [Email], [Telefono]) VALUES (1, N'Alessandro', N'Graziosi', N'alessandro8graziosi@gmail.com', N'3272154820')
INSERT [dbo].[TbClienti] ([Id], [Nome], [Cognome], [Email], [Telefono]) VALUES (2, N'Antonio', N'Tambuzzo', N'antonio.tambuzzo@gmail.com', N'3895531527')
INSERT [dbo].[TbClienti] ([Id], [Nome], [Cognome], [Email], [Telefono]) VALUES (3, N'Domenico', N'Cimò', N'mimmocimo@gmail.com', N'3206054359')
INSERT [dbo].[TbClienti] ([Id], [Nome], [Cognome], [Email], [Telefono]) VALUES (4, N'Pluto', N'Bau Bau', N'pluto@baubau.dog', N'00000000')
SET IDENTITY_INSERT [dbo].[TbClienti] OFF
GO
SET IDENTITY_INSERT [dbo].[TbPostazioni] ON 

INSERT [dbo].[TbPostazioni] ([Id], [Piano], [CodiceStanza]) VALUES (1, N'Sviluppatori', N'Riunione')
INSERT [dbo].[TbPostazioni] ([Id], [Piano], [CodiceStanza]) VALUES (2, N'Sviluppatori', N'RilasciZ42')
INSERT [dbo].[TbPostazioni] ([Id], [Piano], [CodiceStanza]) VALUES (3, N'Progettazione', N'Stanza caffè')
INSERT [dbo].[TbPostazioni] ([Id], [Piano], [CodiceStanza]) VALUES (4, N'Progettazione', N'Creazione')
SET IDENTITY_INSERT [dbo].[TbPostazioni] OFF
GO
SET IDENTITY_INSERT [dbo].[TbReferenti] ON 

INSERT [dbo].[TbReferenti] ([Id], [Nome], [Cognome], [Email], [Telefono]) VALUES (1, N'Daniele', N'Ziccardi', N'danceoften@gmail.com', N'3287230900')
SET IDENTITY_INSERT [dbo].[TbReferenti] OFF
GO
ALTER TABLE [dbo].[TbAppuntamenti]  WITH CHECK ADD  CONSTRAINT [FK_ClientiAppuntamenti] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[TbClienti] ([Id])
GO
ALTER TABLE [dbo].[TbAppuntamenti] CHECK CONSTRAINT [FK_ClientiAppuntamenti]
GO
ALTER TABLE [dbo].[TbAppuntamenti]  WITH CHECK ADD  CONSTRAINT [FK_PostazioneAppuntamenti] FOREIGN KEY([IdPostazione])
REFERENCES [dbo].[TbPostazioni] ([Id])
GO
ALTER TABLE [dbo].[TbAppuntamenti] CHECK CONSTRAINT [FK_PostazioneAppuntamenti]
GO
ALTER TABLE [dbo].[TbAppuntamenti]  WITH CHECK ADD  CONSTRAINT [FK_ReferentiAppuntamenti] FOREIGN KEY([IdReferente])
REFERENCES [dbo].[TbReferenti] ([Id])
GO
ALTER TABLE [dbo].[TbAppuntamenti] CHECK CONSTRAINT [FK_ReferentiAppuntamenti]
GO
