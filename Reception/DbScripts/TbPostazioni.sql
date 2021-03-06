/****** Object:  Table [dbo].[TbPostazione]    Script Date: 04/11/2021 12:03:16 ******/
DROP TABLE IF EXISTS [dbo].[TbPostazione]
GO
/****** Object:  Table [dbo].[TbPostazione]    Script Date: 04/11/2021 12:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPostazione](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Piano] [varchar](255) NOT NULL,
	[CodiceStanza] [varchar](255) NOT NULL,
 CONSTRAINT [PK__postazio__3214EC0733DD0D84] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbPostazione] ON 

INSERT [dbo].[TbPostazione] ([Id], [Piano], [CodiceStanza]) VALUES (1, N'Sviluppatori', N'Riunione')
INSERT [dbo].[TbPostazione] ([Id], [Piano], [CodiceStanza]) VALUES (2, N'Sviluppatori', N'RilasciZ42')
INSERT [dbo].[TbPostazione] ([Id], [Piano], [CodiceStanza]) VALUES (3, N'Progettazione', N'Stanza caffè')
INSERT [dbo].[TbPostazione] ([Id], [Piano], [CodiceStanza]) VALUES (4, N'Progettazione', N'Creazione')
SET IDENTITY_INSERT [dbo].[TbPostazione] OFF
GO
