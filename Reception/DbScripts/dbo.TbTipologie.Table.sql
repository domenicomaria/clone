USE [DbReception]
GO
/****** Object:  Table [dbo].[TbTipologie]    Script Date: 05/11/2021 10:47:42 ******/
DROP TABLE IF EXISTS [dbo].[TbTipologie]
GO
/****** Object:  Table [dbo].[TbTipologie]    Script Date: 05/11/2021 10:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTipologie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TbTipologie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbTipologie] ON 

INSERT [dbo].[TbTipologie] ([Id], [Nome]) VALUES (1, N'Consulente')
INSERT [dbo].[TbTipologie] ([Id], [Nome]) VALUES (2, N'Docente')
INSERT [dbo].[TbTipologie] ([Id], [Nome]) VALUES (3, N'Fumetto')
INSERT [dbo].[TbTipologie] ([Id], [Nome]) VALUES (4, N'ProjectManager')
SET IDENTITY_INSERT [dbo].[TbTipologie] OFF
GO
