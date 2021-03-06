USE [DbReception]
GO
/****** Object:  View [dbo].[VwNormalizzamiExTbNormalizzami]    Script Date: 05/11/2021 10:47:42 ******/
DROP VIEW IF EXISTS [dbo].[VwNormalizzamiExTbNormalizzami]
GO
/****** Object:  View [dbo].[VwNormalizzamiExTbNormalizzami]    Script Date: 05/11/2021 10:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwNormalizzamiExTbNormalizzami]
AS
SELECT dbo.TbNormalizzami.Id, dbo.TbNormalizzami.Nome, dbo.TbTipologie.Nome AS Tipologia, dbo.TbNormalizzami.Reddito
FROM     dbo.TbNormalizzami INNER JOIN
                  dbo.TbTipologie ON dbo.TbNormalizzami.Id = dbo.TbTipologie.Id
GO
