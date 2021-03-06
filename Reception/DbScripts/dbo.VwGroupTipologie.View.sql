USE [DbReception]
GO
/****** Object:  View [dbo].[VwGroupTipologie]    Script Date: 05/11/2021 10:47:42 ******/
DROP VIEW IF EXISTS [dbo].[VwGroupTipologie]
GO
/****** Object:  View [dbo].[VwGroupTipologie]    Script Date: 05/11/2021 10:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwGroupTipologie]
AS
SELECT TOP (100) PERCENT COUNT(*) AS Conteggio, SUM(Reddito) AS RedditoTotale, Tipologia
FROM     dbo.TbNormalizzami
GROUP BY Tipologia
ORDER BY Conteggio
GO
