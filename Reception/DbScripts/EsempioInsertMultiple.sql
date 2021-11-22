insert into TbTipologie(Nome) 
 SELECT Tipologia as Nome
FROM     dbo.TbNormalizzami
GROUP BY Tipologia
-- esempio di inserimento record multipli provenienti da una select