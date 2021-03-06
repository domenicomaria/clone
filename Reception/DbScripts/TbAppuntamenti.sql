
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbAppuntamenti]') AND type in (N'U'))
ALTER TABLE [dbo].[TbAppuntamenti] DROP CONSTRAINT IF EXISTS [FK_ReferentiAppuntamenti]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbAppuntamenti]') AND type in (N'U'))
ALTER TABLE [dbo].[TbAppuntamenti] DROP CONSTRAINT IF EXISTS [FK_PostazioneAppuntamenti]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbAppuntamenti]') AND type in (N'U'))
ALTER TABLE [dbo].[TbAppuntamenti] DROP CONSTRAINT IF EXISTS [FK_ClientiAppuntamenti]
GO
/****** Object:  Table [dbo].[TbAppuntamenti]    Script Date: 04/11/2021 14:19:33 ******/
DROP TABLE IF EXISTS [dbo].[TbAppuntamenti]
GO
/****** Object:  Table [dbo].[TbAppuntamenti]    Script Date: 04/11/2021 14:19:33 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TbAppuntamenti]  WITH CHECK ADD  CONSTRAINT [FK_ClientiAppuntamenti] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[TbClienti] ([Id])
GO
ALTER TABLE [dbo].[TbAppuntamenti] CHECK CONSTRAINT [FK_ClientiAppuntamenti]
GO
ALTER TABLE [dbo].[TbAppuntamenti]  WITH CHECK ADD  CONSTRAINT [FK_PostazioneAppuntamenti] FOREIGN KEY([IdPostazione])
REFERENCES [dbo].[TbPostazione] ([Id])
GO
ALTER TABLE [dbo].[TbAppuntamenti] CHECK CONSTRAINT [FK_PostazioneAppuntamenti]
GO
ALTER TABLE [dbo].[TbAppuntamenti]  WITH CHECK ADD  CONSTRAINT [FK_ReferentiAppuntamenti] FOREIGN KEY([IdReferente])
REFERENCES [dbo].[TbReferenti] ([Id])
GO
ALTER TABLE [dbo].[TbAppuntamenti] CHECK CONSTRAINT [FK_ReferentiAppuntamenti]
GO
