Select distinct tp.Identifier, ls.LengthCategory, ls.TotalNumberOfUnitsValue, wxp.ProductNo, 
-- PL.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthMM, 
(Select Top 1 PL.ActualLengthMM FROM dbo.ProductLength PL WHERE PL.ActualLengthMM = ls.LengthCategory
AND PL.NominalLengthMM = ls.LengthCategory) AS Längd
FROM dbo.DeliveryMessageShipment dms
Inner Join dbo.Transportpackageinformation tp on tp.DeliveryShipmentLineItemNumber = dms.DeliveryShipmentLineItemNumber
Inner Join dbo.ProductIdentifier pid on pid.ProductIdentifier = dms.ProductIdentifier
		--		AND pid.ProductIdentifierType = 'SKU'	
Inner Join dbo.LengthSpecification ls on ls.Identifier = tp.Identifier
Left Outer Join dbo.wx_prod_trsl wxp on wxp.PartNumber = dms.ProductIdentifier
--Left Outer Join dbo.ProductLength PL on PL.ActualLengthMM = ls.LengthCategory 	AND PL.NominalLengthMM = ls.LengthCategory

Order By tp.Identifier, ls.LengthCategory