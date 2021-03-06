/****** Object:  Table [dbo].[TbClienti]    Script Date: 04/11/2021 12:22:40 ******/
DROP TABLE IF EXISTS [dbo].[TbClienti]
GO
/****** Object:  Table [dbo].[TbClienti]    Script Date: 04/11/2021 12:22:40 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbClienti] ON 

INSERT [dbo].[TbClienti] ([Id], [Nome], [Cognome], [Email], [Telefono]) VALUES (1, N'Alessandro', N'Graziosi', N'alessandro8graziosi@gmail.com', N'3272154820')
INSERT [dbo].[TbClienti] ([Id], [Nome], [Cognome], [Email], [Telefono]) VALUES (2, N'Antonio', N'Tambuzzo', N'antonio.tambuzzo@gmail.com', N'3895531527')
INSERT [dbo].[TbClienti] ([Id], [Nome], [Cognome], [Email], [Telefono]) VALUES (3, N'Domenico', N'Cimò', N'mimmocimo@gmail.com', N'3206054359')
SET IDENTITY_INSERT [dbo].[TbClienti] OFF
GO
