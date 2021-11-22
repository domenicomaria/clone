UPDATE Nor
SET 
Nor.IdTipologia=Tip.Id



FROM TbNormalizzami Nor
 INNER JOIN
dbo.TbTipologie Tip ON Nor.Tipologia = Tip.Nome
-- esempio di update da join 
-- dove Nor è la tabella da normalizzare e
-- tip è la tabella di lookup appena creata
-- nota! prima di questa esecuzione in Nor.IdTipologia c'è ancora null