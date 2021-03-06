/****** Object:  Table [dbo].[TbReferenti]    Script Date: 04/11/2021 12:22:40 ******/
DROP TABLE IF EXISTS [dbo].[TbReferenti]
GO
/****** Object:  Table [dbo].[TbReferenti]    Script Date: 04/11/2021 12:22:40 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbReferenti] ON 

INSERT [dbo].[TbReferenti] ([Id], [Nome], [Cognome], [Email], [Telefono]) VALUES (1, N'Daniele', N'Ziccardi', N'danceoften@gmail.com', N'3287230900')

SET IDENTITY_INSERT [dbo].[TbReferenti] OFF
GO
