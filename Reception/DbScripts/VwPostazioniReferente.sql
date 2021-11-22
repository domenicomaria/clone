/****** Object:  View [dbo].[VwPostazioniReferenti]    Script Date: 04/11/2021 17:24:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VwPostazioniReferenti]
AS
SELECT TOP (100) PERCENT dbo.TbReferenti.Cognome AS Referente, dbo.TbPostazione.Piano, dbo.TbPostazione.CodiceStanza AS Sala, dbo.TbAppuntamenti.Orario, dbo.TbAppuntamenti.Durata
FROM     dbo.TbAppuntamenti INNER JOIN
                  dbo.TbPostazione ON dbo.TbAppuntamenti.IdPostazione = dbo.TbPostazione.Id INNER JOIN
                  dbo.TbReferenti ON dbo.TbAppuntamenti.IdReferente = dbo.TbReferenti.Id
ORDER BY dbo.TbAppuntamenti.Orario
GO

