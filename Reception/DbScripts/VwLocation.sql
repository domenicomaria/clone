SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwLocation]
AS
SELECT TOP (100) PERCENT dbo.TbPostazione.Piano, dbo.TbPostazione.CodiceStanza, dbo.TbAppuntamenti.Orario
FROM     dbo.TbAppuntamenti INNER JOIN
                  dbo.TbPostazione ON dbo.TbAppuntamenti.IdPostazione = dbo.TbPostazione.Id
WHERE  (dbo.TbAppuntamenti.Orario BETWEEN CONVERT(DATETIME, '2021-11-10 00:00:00', 102) AND CONVERT(DATETIME, '2021-11-20 00:00:00', 102))
ORDER BY dbo.TbPostazione.Piano, dbo.TbPostazione.CodiceStanza
GO
