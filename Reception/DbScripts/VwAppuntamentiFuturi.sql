/****** Object:  View [dbo].[VwAppuntamentiFuturi]    Script Date: 04/11/2021 17:24:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VwAppuntamentiFuturi]
AS
SELECT TOP (100) PERCENT dbo.TbAppuntamenti.Orario, dbo.TbClienti.Cognome AS Cliente, dbo.TbClienti.Telefono, dbo.TbReferenti.Cognome AS Referente
FROM     dbo.TbAppuntamenti INNER JOIN
                  dbo.TbClienti ON dbo.TbAppuntamenti.IdCliente = dbo.TbClienti.Id INNER JOIN
                  dbo.TbReferenti ON dbo.TbAppuntamenti.IdReferente = dbo.TbReferenti.Id
WHERE  (dbo.TbAppuntamenti.Orario >= GETDATE())
ORDER BY dbo.TbAppuntamenti.Orario, Cliente
GO

