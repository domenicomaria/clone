USE [DbReception]
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TbNormalizzami', N'COLUMN',N'IdTipologia'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TbNormalizzami', @level2type=N'COLUMN',@level2name=N'IdTipologia'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TbNormalizzami', N'COLUMN',N'Reddito'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TbNormalizzami', @level2type=N'COLUMN',@level2name=N'Reddito'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TbNormalizzami', N'COLUMN',N'Tipologia'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TbNormalizzami', @level2type=N'COLUMN',@level2name=N'Tipologia'
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbNormalizzami]') AND type in (N'U'))
ALTER TABLE [dbo].[TbNormalizzami] DROP CONSTRAINT IF EXISTS [DF_TbNormalizzami_Reddito]
GO
/****** Object:  Table [dbo].[TbNormalizzami]    Script Date: 05/11/2021 10:47:42 ******/
DROP TABLE IF EXISTS [dbo].[TbNormalizzami]
GO
/****** Object:  Table [dbo].[TbNormalizzami]    Script Date: 05/11/2021 10:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbNormalizzami](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[Tipologia] [nvarchar](max) NOT NULL,
	[Reddito] [money] NOT NULL,
	[IdTipologia] [int] NULL,
 CONSTRAINT [PK_TbNormalizzami] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbNormalizzami] ON 

INSERT [dbo].[TbNormalizzami] ([Id], [Nome], [Tipologia], [Reddito], [IdTipologia]) VALUES (1, N'Daniele', N'Docente', 100.0000, 2)
INSERT [dbo].[TbNormalizzami] ([Id], [Nome], [Tipologia], [Reddito], [IdTipologia]) VALUES (2, N'Domenico', N'Consulente', 120.0000, 1)
INSERT [dbo].[TbNormalizzami] ([Id], [Nome], [Tipologia], [Reddito], [IdTipologia]) VALUES (3, N'Antonio', N'ProjectManager', 95.0000, 4)
INSERT [dbo].[TbNormalizzami] ([Id], [Nome], [Tipologia], [Reddito], [IdTipologia]) VALUES (4, N'Alessandro', N'Consulente', 180.0000, 1)
INSERT [dbo].[TbNormalizzami] ([Id], [Nome], [Tipologia], [Reddito], [IdTipologia]) VALUES (5, N'Paperino', N'Fumetto', 10.0000, 3)
INSERT [dbo].[TbNormalizzami] ([Id], [Nome], [Tipologia], [Reddito], [IdTipologia]) VALUES (6, N'Topolino', N'Fumetto', 30.0000, 3)
INSERT [dbo].[TbNormalizzami] ([Id], [Nome], [Tipologia], [Reddito], [IdTipologia]) VALUES (7, N'Minnie', N'Fumetto', 5.0000, 3)
INSERT [dbo].[TbNormalizzami] ([Id], [Nome], [Tipologia], [Reddito], [IdTipologia]) VALUES (8, N'Macchia nera', N'Fumetto', 200.0000, 3)
SET IDENTITY_INSERT [dbo].[TbNormalizzami] OFF
GO
ALTER TABLE [dbo].[TbNormalizzami] ADD  CONSTRAINT [DF_TbNormalizzami_Reddito]  DEFAULT ((0)) FOR [Reddito]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Posso eliminare questa colonna dopo la normalizzazione' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TbNormalizzami', @level2type=N'COLUMN',@level2name=N'Tipologia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Questa descfrizione mi aiuta a associare il campo tramite commento nello script, ad un termine specifico del dominio applicativo DDD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TbNormalizzami', @level2type=N'COLUMN',@level2name=N'Reddito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dopo normalizzazione posso settare non null' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TbNormalizzami', @level2type=N'COLUMN',@level2name=N'IdTipologia'
GO
