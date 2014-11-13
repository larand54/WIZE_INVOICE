Select distinct dms.ProductIdentifier, tp.Identifier, wxp.ProductNo, SUM(ls.TotalNumberOfUnitsValue) AS Styck,
--(Select Top 1 PL.ActualLengthMM FROM dbo.ProductLength PL WHERE PL.ActualLengthMM = ls.LengthCategory
--AND PL.NominalLengthMM = ls.LengthCategory) AS Längd,

(Select c.clientcode FROM dbo.NameAddress na 
Inner Join dbo.PartyIdentifier paid on paid.DeliveryMessageNumber = na.DeliveryMessageNumber
Left Outer Join dbo.Client c on c.PartyIdentifier = paid.PartyIdentifier
WHERE 
na.DeliveryMessageNumber = dms.DeliveryMessageNumber
AND na.PartyType = 'Supplier'
AND paid.PartyIdentifierType = 'AssignedBySeller'
AND paid.Partytype = 'Supplier')
 
FROM dbo.DeliveryMessageShipment dms
Inner Join dbo.Transportpackageinformation tp on tp.DeliveryShipmentLineItemNumber = dms.DeliveryShipmentLineItemNumber
Inner Join dbo.ProductIdentifier pid on pid.ProductIdentifier = dms.ProductIdentifier
		--		AND pid.ProductIdentifierType = 'SKU'	
Inner Join dbo.LengthSpecification ls on ls.Identifier = tp.Identifier
Left Outer Join dbo.wx_prod_trsl wxp on wxp.PartNumber = dms.ProductIdentifier
--Left Outer Join dbo.ProductLength PL on PL.ActualLengthMM = ls.LengthCategory 	AND PL.NominalLengthMM = ls.LengthCategory
Group By dms.ProductIdentifier, tp.Identifier, wxp.ProductNo, dms.DeliveryMessageNumber
Order By tp.Identifier