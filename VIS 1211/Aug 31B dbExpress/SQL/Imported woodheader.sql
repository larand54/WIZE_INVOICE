Select distinct c.ClientName, paid.PartyIdentifier, na.Name1, dmwh.DeliveryMessageNumber, paid.*, dmwh.*, na.*
FROM dbo.DeliveryMessageWoodHeader dmwh
Inner Join dbo.NameAddress na on na.DeliveryMessageNumber = dmwh.DeliveryMessageNumber
Inner Join dbo.PartyIdentifier paid on paid.DeliveryMessageNumber = dmwh.DeliveryMessageNumber
Left Outer Join dbo.Client c on c.PartyIdentifier = paid.PartyIdentifier
WHERE na.PartyType = 'Supplier'
AND paid.PartyIdentifierType = 'AssignedBySeller'
AND paid.Partytype = 'Supplier'

