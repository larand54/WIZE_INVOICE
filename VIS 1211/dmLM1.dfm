object daMoLM1: TdaMoLM1
  OldCreateOrder = False
  Height = 544
  Width = 754
  object dsrcAvrop: TDataSource
    DataSet = cdsAvrop
    OnDataChange = dsrcAvropDataChange
    Left = 184
    Top = 360
  end
  object dsrcNormalLO: TDataSource
    DataSet = cdsNormalLO
    Left = 112
    Top = 96
  end
  object dsrcExtraLO: TDataSource
    DataSet = cdsExtraLO
    Left = 192
    Top = 96
  end
  object dsrcLoads: TDataSource
    DataSet = cdsLoads
    Left = 280
    Top = 96
  end
  object dsOrder: TDataSource
    DataSet = cdsOrder
    Left = 352
    Top = 96
  end
  object ds_InvoiceInGroup: TDataSource
    DataSet = cds_InvoiceInGroup
    Left = 400
    Top = 229
  end
  object ds_InvoiceGroup: TDataSource
    DataSet = cds_InvoiceGroup
    Left = 288
    Top = 232
  end
  object ds_GetLOByInvNo: TDataSource
    DataSet = cds_GetLOByInvNo
    Left = 184
    Top = 232
  end
  object cdsAvrop1: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsAvropIndex5'
        Fields = 'CustShipPlanDetailObjectNo'
      end>
    IndexName = 'cdsAvropIndex5'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvCmdExecTimeout, rvDirectExecute]
    ResourceOptions.CmdExecMode = amCancelDialog
    ResourceOptions.CmdExecTimeout = 99999999
    UpdateOptions.AssignedValues = [uvUpdateChngFields]
    SQL.Strings = (
      'SELECT'
      'OH.CurrencyNo,'
      'CSH.ShippingPlanStatus'#9#9#9#9','
      'CSH.ShippingPlanNo '#9#9#9#9','
      'OH.OrderNoText'#9#9#9#9#9'AS ORDERNUMBER,'
      'isNull(CSH.Reference,'#39' '#39')'#9#9#9'AS REFERENCE,'
      'isnull(CSH.ETDYearWeek,-1) '#9#9#9'AS FROMWEEK,'
      'isnull(CSH.ETDWeekEnd,-1) '#9#9#9'AS TOWEEK,'
      'C.ClientName '#9#9#9#9#9'AS CLIENT,'
      'isNull(AG.ClientName,'#39' '#39')'#9#9#9'AS AGENT,'
      'isNull(CSD.Reference,'#39' '#39')'#9#9#9'AS MARK,'
      'OL.OrderLineDescription '#9#9#9'AS PRODUCT,'
      'CSD.LengthDescription '#9#9#9#9'AS LENGTH,'
      'isnull(CSD.NoOfUnits,0) '#9#9#9'AS VOLUME ,'
      ''
      'VU.VolumeUnitName'#9#9#9#9'AS VOLUNIT,'
      ''
      'isNull(Cy.CityName,'#39' '#39')'#9#9#9'AS DESTINATION,'
      ''
      'CSH.OrderNo '#9#9#9#9#9'AS ORDERNO,'
      'CSH.CustomerNo'#9#9#9#9#9'AS CLIENTNO,'
      'CSH.DestinationNo'#9#9#9#9'AS DESTINATIONNO,'
      'CSD.CustShipPlanDetailObjectNo '#9#9#9','
      'OH.SalesRegionNo'#9#9#9#9'AS SALESREGIONNO,'
      'OH.OrderType'#9#9#9#9#9'AS ORDERTYPE,'
      'OL.Reference          AS KR_REF,'
      'isNull((Select DV.SHIP_KVANT from'
      
        'dbo.DelPerCSD_II DV WHERE '#9'DV.CSDNO = csd.CustShipPlanDetailObje' +
        'ctNo),0)  AS LEV,'
      'OH.Trading,'
      'CSD.SequenceNo,'
      'isNull((Select LP.LoadedPkgs from'
      
        'dbo.LoadedCSDPkgs LP WHERE '#9'LP.CSDNO = csd.CustShipPlanDetailObj' +
        'ectNo),0)  AS LoadedPkgs'
      ''
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD '#9'ON  '#9'CSD.Shippi' +
        'ngPlanNo '#9'= CSH.ShippingPlanNo'
      #9'LEFT OUTER JOIN ShippingPlan_ShippingAddress SSAD'
      #9'INNER JOIN Address'#9'ADDR'#9#9#9'ON'#9'ADDR.ADDRESSNO'#9'= SSAD.ADDRESSNO'
      #9'Left Outer JOIN dbo.City'#9#9'Cy '#9#9'ON  '#9'ADDR.CityNo'#9'= Cy.CityNo'
      #9#9#9#9#9#9#9#9'ON SSAD.ShippingPlanNo = CSD.ShippingPlanNo'
      #9#9#9#9#9#9#9#9'AND SSAD.Reference'#9'= CSD.REFERENCE'
      ''
      #9'INNER JOIN dbo.Client '#9#9#9'C'#9'ON '#9'C.ClientNo'#9#9'= CSH.CustomerNo'
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      #9'INNER JOIN dbo.OrderLine '#9#9'OL'#9'ON'#9'OL.OrderNo '#9#9'= CSD.OrderNo'
      #9#9#9#9#9#9#9'AND '#9'OL.OrderLineNo '#9#9'= CSD.OrderLineNo'
      
        #9'INNER JOIN dbo.UnitName '#9#9'VU'#9'ON '#9'VU.VolumeUnit_No '#9'= OL.VolumeU' +
        'nitNo'
      ''
      
        #9'LEFT  OUTER JOIN dbo.Client'#9#9'AG'#9'ON  '#9'OH.AgentNo'#9'       '#9'= AG.Cl' +
        'ientNo '
      ''
      ''
      'WHERE 1 = 1 '
      'AND CSH.SHIPPINGPLANSTATUS = 8'
      'AND OH.OrderType = 0'
      'AND CSH.CustomerNo = 1176')
    Left = 40
    Top = 40
    object cdsAvrop1CurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = []
    end
    object cdsAvrop1ShippingPlanStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAvrop1ShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAvrop1ORDERNUMBER: TStringField
      DisplayLabel = 'Ordernr'
      FieldName = 'ORDERNUMBER'
      Origin = 'ORDERNUMBER'
      ProviderFlags = []
      Required = True
    end
    object cdsAvrop1REFERENCE: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsAvrop1FROMWEEK: TIntegerField
      DisplayLabel = 'Fr'#229'n vecka'
      FieldName = 'FROMWEEK'
      Origin = 'FROMWEEK'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
    object cdsAvrop1TOWEEK: TIntegerField
      DisplayLabel = 'Till vecka'
      FieldName = 'TOWEEK'
      Origin = 'TOWEEK'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
    object cdsAvrop1CLIENT: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'CLIENT'
      Origin = 'CLIENT'
      ProviderFlags = []
      Size = 80
    end
    object cdsAvrop1AGENT: TStringField
      DisplayLabel = 'Agent'
      FieldName = 'AGENT'
      Origin = 'AGENT'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 80
    end
    object cdsAvrop1MARK: TStringField
      DisplayLabel = 'M'#228'rkning'
      FieldName = 'MARK'
      Origin = 'MARK'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsAvrop1PRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object cdsAvrop1LENGTH: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LENGTH'
      Origin = 'LENGTH'
      ProviderFlags = []
      FixedChar = True
      Size = 100
    end
    object cdsAvrop1VOLUME: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
    object cdsAvrop1VOLUNIT: TStringField
      DisplayLabel = 'Vol.enhet'
      FieldName = 'VOLUNIT'
      Origin = 'VOLUNIT'
      ProviderFlags = []
      Required = True
      Size = 10
    end
    object cdsAvrop1DESTINATION: TStringField
      DisplayLabel = 'Destination'
      FieldName = 'DESTINATION'
      Origin = 'DESTINATION'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsAvrop1ORDERNO: TIntegerField
      FieldName = 'ORDERNO'
      Origin = 'ORDERNO'
      ProviderFlags = []
      Required = True
    end
    object cdsAvrop1CLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
      Origin = 'CLIENTNO'
      ProviderFlags = []
    end
    object cdsAvrop1DESTINATIONNO: TIntegerField
      FieldName = 'DESTINATIONNO'
      Origin = 'DESTINATIONNO'
      ProviderFlags = []
    end
    object cdsAvrop1CustShipPlanDetailObjectNo: TIntegerField
      DisplayLabel = 'Rad ID'
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      ProviderFlags = []
      Required = True
    end
    object cdsAvrop1SALESREGIONNO: TIntegerField
      FieldName = 'SALESREGIONNO'
      Origin = 'SALESREGIONNO'
      ProviderFlags = []
    end
    object cdsAvrop1ORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ProviderFlags = []
    end
    object cdsAvrop1KR_REF: TStringField
      DisplayLabel = 'KR-referens'
      FieldName = 'KR_REF'
      Origin = 'KR_REF'
      ProviderFlags = []
      Size = 50
    end
    object cdsAvrop1LEV: TFMTBCDField
      DisplayLabel = 'Levererat'
      FieldName = 'LEV'
      Origin = 'LEV'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Precision = 38
      Size = 3
    end
    object cdsAvrop1Trading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
      ProviderFlags = []
    end
    object cdsAvrop1SequenceNo: TIntegerField
      DisplayLabel = 'Radstatus'
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAvrop1REST: TFloatField
      DisplayLabel = 'Rest'
      FieldKind = fkCalculated
      FieldName = 'REST'
      ProviderFlags = []
      Calculated = True
    end
    object cdsAvrop1LoadedPkgs: TIntegerField
      DisplayLabel = 'Ej fakturerade paket'
      FieldName = 'LoadedPkgs'
      Origin = 'LoadedPkgs'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
  end
  object cdsNormalLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache, evUnidirectional]
    SQL.Strings = (
      'SELECT'
      'SP.Reference'#9#9#9#9'        AS KR_REF,'
      'SP.ShippingPlanNo        '#9#9'AS LO,'
      'SP.SupplierShipPlanObjectNo'#9#9'AS UNIQUERECORDNO,'
      'SC.ClientName'#9#9#9#9'AS SUPPLIER,'
      'SP.ShippingPlanStatus    '#9#9'AS STATUS,'
      'SP.ProductDescription    '#9#9'AS PRODUCT,'
      'SP.LengthDescription     '#9#9'AS LENGTH,'
      'SP.ActualM3Net'#9#9#9#9'AS M3,'
      'SP.NoOfUnits             '#9#9'AS VOLUME,'
      'UN.VolumeUnitName        '#9#9'AS VOLUNIT,'
      'CU.CurrencyNAME'#9#9#9#9'AS CURRENCY,'
      'SP.PRICE'#9#9#9#9'AS PRICE,'
      'PU.TemplateUnitName'#9#9#9'AS PRICEUNIT,'
      'SP.SupplierNo            '#9#9'AS SUPPLIERNO,'
      'SP.PackageCode           '#9#9'AS PKGCODE,'
      'isnull(SP.StartETDYearWeek,-1) '#9#9'AS FROMWEEK,'
      'isnull(SP.EndETDYearWeek,-1)'#9#9'AS TOWEEK,'
      'isnull(CyShipTo.CityName,'#39' '#39')'#9#9#9'AS SHIPTO,'
      'isnull(ST_AdrCY.CityName,'#39' '#39')'#9#9'AS DESTINATION,'
      'SP.CustShipPlanDetailObjectNo'#9#9'AS CUSTPLANOBJECTNO,'
      'SP.ObjectType'#9#9#9#9'AS OBJECTTYPE,'
      ''
      'Cy.CityName '#9#9#9#9'AS LOADING_LOCATION,'
      ''
      '(SELECT'
      'CASE'
      '-- use sub query to get volume if  not packages'
      'WHEN  UN.VolumeUnitName = '#39'Packages'#39' THEN COUNT(LD.LOADDETAILNO)'
      'WHEN  UN.VolumeUnitName = '#39'm3 aDxaL'#39' THEN SUM(PTD.m3Actual)'
      'WHEN  UN.VolumeUnitName = '#39'm3 aDxnL'#39' THEN SUM(PTD.m3Actual)'
      'WHEN  UN.VolumeUnitName = '#39'm3 nDxnL'#39' THEN SUM(PTD.m3Nominal)'
      'WHEN  UN.VolumeUnitName = '#39'm3 nDxaL'#39' THEN SUM(PTD.m3Nominal)'
      
        'WHEN  UN.VolumeUnitName = '#39'Lopm a'#39' THEN SUM(PTD.LinealMeterActua' +
        'lLength)'
      'WHEN  UN.VolumeUnitName = '#39'Stycketal'#39' THEN SUM(PTD.NoOfPieces)'
      'END'
      ''
      'FROM dbo.Loaddetail LD'
      
        'Inner Join dbo.PackageTypeDetail PTD on ptd.PackageTypeNo = LD.P' +
        'ackageTypeNo '
      'Inner Join dbo.Loads lo on LO.LoadNo = LD.LoadNo'
      'WHERE'
      'LD.DefsspNo = SP.SupplierShipPlanObjectNo'
      'AND LO.SenderLoadStatus = 2'
      ''
      ''
      ') AS DELIVERED'
      ''
      ''
      'FROM   '
      'dbo.SupplierShippingPlan SP'
      #9'INNER JOIN dbo.Client'#9#9#9#9'SC '#9'ON  '#9'SP.SupplierNo '#9#9'= SC.ClientNo'
      
        #9'LEFT JOIN dbo.PackUnit '#9#9#9'PU'#9'ON '#9'PU.TemplateUnitNo '#9'= SP.PriceU' +
        'nitNo'
      #9'LEFT JOIN dbo.Currency'#9#9#9#9'CU'#9'ON'#9'CU.CurrencyNo'#9#9'= SP.CurrencyNo'
      ''
      
        #9'LEFT JOIN dbo.UnitName             '#9#9'UN  '#9'ON  '#9'SP.VolumeUnitNo ' +
        '           = UN.VolumeUnit_No'
      
        #9'LEFT OUTER JOIN dbo.LogicalInventoryPoint '#9'LI '#9'ON  '#9'LI.LogicalI' +
        'nventoryPointNo = SP.ShipToInvPointNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.City                 '#9'Cy '#9'ON  '#9'SP.LoadingLo' +
        'cationNo           = Cy.CityNo'
      
        #9'LEFT OUTER JOIN dbo.City '#9#9#9'CyShipTo ON'#9'CyShipTo.CityNo = SP.Sh' +
        'ipToInvPointNo'
      ''
      
        #9'Left Outer JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON    CSD.C' +
        'ustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo'
      ''
      ''
      #9'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST'
      
        #9'LEFT OUTER JOIN dbo.Address '#9#9'ST_ADR'#9#9'ON'#9'ST_ADR.AddressNo'#9'= ST.' +
        'AddressNo'
      
        #9'LEFT OUTER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR' +
        '.CityNo'
      
        #9'LEFT OUTER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo' +
        ' '#9'= ST_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'ST.ShippingPlanNo'#9'= CSD.ShippingPlanNo'
      #9#9#9#9#9#9#9'AND'#9'ST.Reference'#9#9'= CSD.Reference'
      ''
      ''
      ''
      
        'WHERE  SP.CustShipPlanDetailObjectNo = :CustShipPlanDetailObject' +
        'No'
      'AND SP.ObjectType = 2')
    Left = 112
    Top = 40
    ParamData = <
      item
        Name = 'CUSTSHIPPLANDETAILOBJECTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsNormalLOKR_REF: TStringField
      DisplayLabel = 'KR referens'
      FieldName = 'KR_REF'
      Origin = 'KR_REF'
      Size = 50
    end
    object cdsNormalLOLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
    object cdsNormalLOUNIQUERECORDNO: TIntegerField
      FieldName = 'UNIQUERECORDNO'
      Origin = 'UNIQUERECORDNO'
      Required = True
    end
    object cdsNormalLOSUPPLIER: TStringField
      DisplayLabel = 'Verk'
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 80
    end
    object cdsNormalLOSTATUS: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object cdsNormalLOPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      FixedChar = True
      Size = 100
    end
    object cdsNormalLOLENGTH: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LENGTH'
      Origin = 'LENGTH'
      FixedChar = True
      Size = 100
    end
    object cdsNormalLOM3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3'
      Origin = 'M3'
    end
    object cdsNormalLOVOLUME: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
      DisplayFormat = '#.000'
    end
    object cdsNormalLOVOLUNIT: TStringField
      DisplayLabel = 'Vol.enhet'
      FieldName = 'VOLUNIT'
      Origin = 'VOLUNIT'
      Required = True
      Size = 10
    end
    object cdsNormalLOCURRENCY: TStringField
      DisplayLabel = 'Valuta'
      FieldName = 'CURRENCY'
      Origin = 'CURRENCY'
      Required = True
      Size = 5
    end
    object cdsNormalLOPRICE: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object cdsNormalLOPRICEUNIT: TStringField
      DisplayLabel = 'Prisenhet'
      FieldName = 'PRICEUNIT'
      Origin = 'PRICEUNIT'
      Required = True
    end
    object cdsNormalLOSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
      Required = True
    end
    object cdsNormalLOPKGCODE: TStringField
      DisplayLabel = 'Pktkod'
      FieldName = 'PKGCODE'
      Origin = 'PKGCODE'
      FixedChar = True
      Size = 10
    end
    object cdsNormalLOFROMWEEK: TIntegerField
      DisplayLabel = 'Fr'#229'n vecka'
      FieldName = 'FROMWEEK'
      Origin = 'FROMWEEK'
      ReadOnly = True
      Required = True
    end
    object cdsNormalLOTOWEEK: TIntegerField
      DisplayLabel = 'Till vecka'
      FieldName = 'TOWEEK'
      Origin = 'TOWEEK'
      ReadOnly = True
      Required = True
    end
    object cdsNormalLOSHIPTO: TStringField
      DisplayLabel = 'Destination(intern)'
      FieldName = 'SHIPTO'
      Origin = 'SHIPTO'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsNormalLODESTINATION: TStringField
      DisplayLabel = 'Destination'
      FieldName = 'DESTINATION'
      Origin = 'DESTINATION'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsNormalLOCUSTPLANOBJECTNO: TIntegerField
      FieldName = 'CUSTPLANOBJECTNO'
      Origin = 'CUSTPLANOBJECTNO'
    end
    object cdsNormalLOOBJECTTYPE: TIntegerField
      FieldName = 'OBJECTTYPE'
      Origin = 'OBJECTTYPE'
    end
    object cdsNormalLOLOADING_LOCATION: TStringField
      DisplayLabel = 'Lastst'#228'lle'
      FieldName = 'LOADING_LOCATION'
      Origin = 'LOADING_LOCATION'
      Size = 50
    end
    object cdsNormalLODELIVERED: TFloatField
      FieldName = 'DELIVERED'
      Origin = 'DELIVERED'
      ReadOnly = True
    end
    object cdsNormalLOREST: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REST'
      Calculated = True
    end
  end
  object cdsExtraLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'SP.Reference'#9#9#9#9'AS KR_REF,'
      'SP.ShippingPlanNo        '#9#9'AS LO,'#9#9#9
      'SP.SupplierShipPlanObjectNo'#9#9'AS UNIQUERECORDNO, '#9
      'SC.ClientName'#9#9#9#9'AS SUPPLIER,'#9#9
      'SP.ShippingPlanStatus    '#9#9'AS STATUS,      '#9
      'SP.ProductDescription    '#9#9'AS PRODUCT,     '#9
      'SP.LengthDescription     '#9#9'AS LENGTH,      '#9
      'SP.ActualM3Net'#9#9#9#9'AS M3,'#9#9#9
      'SP.NoOfUnits             '#9#9'AS VOLUME,      '#9
      'UN.VolumeUnitName        '#9#9'AS VOLUNIT,'#9#9
      'CU.CurrencyNAME'#9#9#9#9'AS CURRENCY,'#9#9
      'SP.PRICE'#9#9#9#9'AS PRICE,'#9#9
      'PU.TemplateUnitName'#9#9#9'AS PRICEUNIT,'#9#9
      'SP.SupplierNo            '#9#9'AS SUPPLIERNO,    '#9
      'SP.PackageCode           '#9#9'AS PKGCODE,     '#9
      'SP.StartETDYearWeek      '#9#9'AS FROMWEEK,    '#9
      'SP.EndETDYearWeek        '#9#9'AS TOWEEK,      '#9
      'isnull(CyShipTo.CityName,'#39#39')'#9'AS SHIPTO,'
      ''
      'SP.CustShipPlanDetailObjectNo'#9#9'AS CUSTPLANOBJECTNO,'
      'SP.ObjectType'#9#9#9#9'AS OBJECTTYPE,'
      ''
      'SC1.ClientName AS  CUSTOMER,'
      ''
      '(SELECT'
      'CASE'
      '-- use sub query to get volume if  not packages'
      
        'WHEN  UN.VolumeUnitName = '#39'Packages'#39' THEN COUNT( LD.LOADDETAILNO' +
        ')'
      'WHEN  UN.VolumeUnitName = '#39'm3 aDxaL'#39' THEN SUM(PTD.m3Actual)'
      'WHEN  UN.VolumeUnitName = '#39'm3 nDxnL'#39' THEN SUM(PTD.m3Nominal)'
      
        'WHEN  UN.VolumeUnitName = '#39'Lopm a'#39' THEN SUM(PTD.LinealMeterActua' +
        'lLength)'
      'WHEN  UN.VolumeUnitName = '#39'Stycketal'#39' THEN SUM(PTD.NoOfPieces)'
      'END'
      ''
      ''
      'FROM dbo.Loaddetail LD'
      
        'Inner Join dbo.PackageTypeDetail PTD on ptd.PackageTypeNo = LD.P' +
        'ackageTypeNo '
      'Inner Join dbo.Loads lo on LO.LoadNo = LD.LoadNo'
      'WHERE'
      'LD.DefsspNo = SP.SupplierShipPlanObjectNo'
      'AND LO.SenderLoadStatus = 2'
      ') AS DELIVERED'
      ''
      'FROM   '
      'dbo.InternalOrderHead IC'
      ''
      
        #9'INNER JOIN dbo.SupplierShippingPlan '#9#9'SP'#9'ON'#9'SP.ShippingPlanNo'#9'=' +
        ' IC.ShippingPlanNo'
      #9'INNER JOIN dbo.Client'#9#9#9#9'SC '#9'ON  '#9'SP.SupplierNo '#9#9'= SC.ClientNo'
      
        #9'INNER JOIN dbo.Client'#9#9#9#9'SC1 '#9'ON  '#9'SP.CustomerNo '#9#9'= SC1.Client' +
        'No'
      
        #9'INNER JOIN dbo.PackUnit '#9#9#9'PU'#9'ON '#9'PU.TemplateUnitNo '#9'= SP.Price' +
        'UnitNo'
      #9'INNER JOIN dbo.Currency'#9#9#9#9'CU'#9'ON'#9'CU.CurrencyNo'#9#9'= SP.CurrencyNo'
      ''
      
        #9'INNER JOIN dbo.UnitName             '#9#9'UN  '#9'ON  '#9'SP.VolumeUnitNo' +
        '            = UN.VolumeUnit_No'
      
        #9'LEFT OUTER JOIN dbo.LogicalInventoryPoint '#9'LI '#9'ON  '#9'LI.LogicalI' +
        'nventoryPointNo = SP.ShipToInvPointNo'
      
        #9'LEFT OUTER JOIN dbo.City                 '#9'CyShipTo '#9'ON  '#9'CyShip' +
        'To.CityNo = SP.ShipToInvPointNo'
      ''
      ''
      ''
      ''
      'WHERE  '
      'IC.LO_No = :LONo'
      'and SP.ObjectType = 1')
    Left = 192
    Top = 40
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsExtraLOKR_REF: TStringField
      DisplayLabel = 'KR-referens'
      FieldName = 'KR_REF'
      Origin = 'KR_REF'
      Size = 50
    end
    object cdsExtraLOLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
    object cdsExtraLOUNIQUERECORDNO: TIntegerField
      FieldName = 'UNIQUERECORDNO'
      Origin = 'UNIQUERECORDNO'
      Required = True
    end
    object cdsExtraLOSUPPLIER: TStringField
      DisplayLabel = 'Verk'
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 80
    end
    object cdsExtraLOSTATUS: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object cdsExtraLOPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      FixedChar = True
      Size = 100
    end
    object cdsExtraLOLENGTH: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LENGTH'
      Origin = 'LENGTH'
      FixedChar = True
      Size = 100
    end
    object cdsExtraLOM3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3'
      Origin = 'M3'
      DisplayFormat = '#.000'
    end
    object cdsExtraLOVOLUME: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
      DisplayFormat = '#.000'
    end
    object cdsExtraLOVOLUNIT: TStringField
      DisplayLabel = 'Vol.enhet'
      FieldName = 'VOLUNIT'
      Origin = 'VOLUNIT'
      Required = True
      Size = 10
    end
    object cdsExtraLOCURRENCY: TStringField
      DisplayLabel = 'Valuta'
      FieldName = 'CURRENCY'
      Origin = 'CURRENCY'
      Required = True
      Size = 5
    end
    object cdsExtraLOPRICE: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object cdsExtraLOPRICEUNIT: TStringField
      DisplayLabel = 'Prisenhet'
      FieldName = 'PRICEUNIT'
      Origin = 'PRICEUNIT'
      Required = True
    end
    object cdsExtraLOSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
      Required = True
    end
    object cdsExtraLOPKGCODE: TStringField
      DisplayLabel = 'Pkt.kod'
      FieldName = 'PKGCODE'
      Origin = 'PKGCODE'
      FixedChar = True
      Size = 10
    end
    object cdsExtraLOFROMWEEK: TIntegerField
      DisplayLabel = 'Fr'#229'n vecka'
      FieldName = 'FROMWEEK'
      Origin = 'FROMWEEK'
    end
    object cdsExtraLOTOWEEK: TIntegerField
      DisplayLabel = 'Till vecka'
      FieldName = 'TOWEEK'
      Origin = 'TOWEEK'
    end
    object cdsExtraLOSHIPTO: TStringField
      DisplayLabel = 'Destination(intern)'
      FieldName = 'SHIPTO'
      Origin = 'SHIPTO'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsExtraLOCUSTPLANOBJECTNO: TIntegerField
      FieldName = 'CUSTPLANOBJECTNO'
      Origin = 'CUSTPLANOBJECTNO'
    end
    object cdsExtraLOOBJECTTYPE: TIntegerField
      FieldName = 'OBJECTTYPE'
      Origin = 'OBJECTTYPE'
    end
    object cdsExtraLOCUSTOMER: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 80
    end
    object cdsExtraLODELIVERED: TFloatField
      DisplayLabel = 'Levererat'
      FieldName = 'DELIVERED'
      Origin = 'DELIVERED'
      ReadOnly = True
      DisplayFormat = '#.000'
    end
  end
  object cdsLoads: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'Loads'
    SQL.Strings = (
      'SELECT Distinct'
      'inos.InvoiceNo AS INVOICE_NO,'
      'inos.Prefix,'
      'inos.InvoiceType,'
      ''
      'CL.Confirmed_LoadNo'#9#9'    AS'#9'FOLJESEDEL,'
      'LSP.ShippingPlanNo'#9#9'    AS'#9'LO,'
      'L.LoadNo'#9#9#9'            AS'#9'LOADNO,'
      'L.FS'#9#9#9#9'              AS'#9'FS,'
      'L.LoadedDate'#9#9#9'        AS'#9'LOADEDDATE,'
      'L.SenderLoadStatus'#9'  '#9'  ,'
      'L.LoadID'#9#9#9'            AS'#9'LOAD_ID,'
      ''
      '(SELECT'
      'CASE '
      'WHEN Debit_Credit = 1 THEN SUM(P.Totalm3Actual) * -1'
      'ELSE'
      'SUM(P.Totalm3Actual)'
      'END'
      'from'
      'dbo.Loaddetail LD'
      
        'INNER JOIN dbo.PackageType P'#9'ON P.PackageTypeNo  = LD.PackageTyp' +
        'eNo'
      'where'
      ' LD.LoadNo = LSP.LoadNo'
      'AND LD.ShippingPlanNo = LSP.ShippingPlanNo) AS  ACT_M3,'
      ''
      '(SELECT'
      'CASE'
      'WHEN Debit_Credit = 1 THEN'
      'Count(LD.LoadDetailNo) * -1'
      'ELSE'
      'Count(LD.LoadDetailNo)'
      'END'
      'from'
      'dbo.Loaddetail LD'
      'where'
      ' LD.LoadNo = LSP.LoadNo'
      'AND LD.ShippingPlanNo = LSP.ShippingPlanNo) AS  NoOfPkgs,'
      ''
      'isNull(IL.InternalInvoiceNo,-1)'#9#9'AS'#9'INTERNAL_INVOICENO,'
      ''
      'L.LoadOK,'
      'L.PackageEntryOption'
      ''
      'FROM dbo.LoadShippingPlan LSP'
      'INNER JOIN dbo.Loads '#9'L'#9'ON L.LoadNo = LSP.LoadNo'
      'LEFT OUTER JOIN dbo.Invoiced_Load IL'#9'ON IL.LoadNo = LSP.LoadNo'
      #9#9#9#9'AND IL.ShippingPlanNo = LSP.ShippingPlanNo'
      'INNER JOIN dbo.Confirmed_Load CL ON CL.NewLoadNo = L.LoadNo'
      ''
      
        'Left Outer Join dbo.InvoiceNos inos on inos.InternalInvoiceNo = ' +
        'IL.InternalInvoiceNo'
      
        'Left Outer Join dbo.InvoiceHeader IH on ih.InternalInvoiceNo = I' +
        'L.InternalInvoiceNo'
      ''
      'WHERE'
      'LSP.ShippingPlanNo = :ShippingPlanNo'
      'AND L.CustomerNo = :CustomerNo'
      'AND L.SupplierNo = :SupplierNo'
      '')
    Left = 280
    Top = 48
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsLoadsFOLJESEDEL: TIntegerField
      DisplayLabel = 'F'#246'ljesedel'
      FieldName = 'FOLJESEDEL'
      Origin = 'FOLJESEDEL'
      ProviderFlags = []
    end
    object cdsLoadsLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      ProviderFlags = []
      Required = True
    end
    object cdsLoadsLOADNO: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LOADNO'
      Origin = 'LOADNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadsFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsLoadsLOADEDDATE: TSQLTimeStampField
      DisplayLabel = 'Utlastad'
      FieldName = 'LOADEDDATE'
      Origin = 'LOADEDDATE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadsSenderLoadStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadsLOAD_ID: TStringField
      DisplayLabel = 'Last ID'
      FieldName = 'LOAD_ID'
      Origin = 'LOAD_ID'
      ProviderFlags = []
      Size = 50
    end
    object cdsLoadsACT_M3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ACT_M3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#######.000'
    end
    object cdsLoadsNoOfPkgs: TIntegerField
      DisplayLabel = 'Paket'
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsLoadsINTERNAL_INVOICENO: TIntegerField
      DisplayLabel = 'Int.faktnr'
      FieldName = 'INTERNAL_INVOICENO'
      Origin = 'INTERNAL_INVOICENO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsLoadsLoadOK: TIntegerField
      DisplayLabel = 'Last Ok'
      FieldName = 'LoadOK'
      Origin = 'LoadOK'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadsPackageEntryOption: TIntegerField
      DisplayLabel = 'Utlastspec'
      FieldName = 'PackageEntryOption'
      Origin = 'PackageEntryOption'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLoadsINVOICE_NO: TIntegerField
      DisplayLabel = 'Fakturanr'
      FieldName = 'INVOICE_NO'
      Origin = 'INVOICE_NO'
      ProviderFlags = []
    end
    object cdsLoadsPrefix: TStringField
      DisplayLabel = 'Fakturaprefix'
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ProviderFlags = []
      Size = 10
    end
    object cdsLoadsInvoiceType: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
      ProviderFlags = []
      Size = 11
    end
  end
  object cdsOrder: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT Str(od.OrderNo) + Str(ol.OrderLineNo) as PKValue, '
      'od.OrderNo,'
      'od.SalesRegionNo, '
      'ol.OrderLineNo, '
      'ol.ProductNo, '
      'ol.ProductLengthNo, '
      'od.OrderNoText,'
      'od.OrderStatus, '
      'od.OrderType, '
      'case od.OrderType'
      'when 0 then '#39'Sales'#39' '
      'when 1 then '#39'PO'#39
      'end as SalesType,'
      ''
      ''
      ''
      'od.CustomerNo, '
      'cl.ClientName, '
      'ol.OrderLineDescription,'
      'ol.NoOfUnits, '
      'ol.LengthDescription, '
      'ol.VolumeUnitNo, '
      'ol.PriceUnitNo,'
      'od.CurrencyNo, '
      'CU.CurrencyName,'
      'ol.Price, '
      'PU.TemplateUnitName,'
      'ol.OrderVolume, '
      'UN.VolumeUnit_No,'
      'ol.OrderLineValueSEK, '
      'ol.OrderLineValueCurrency'
      'FROM Orders od'
      'INNER JOIN dbo.OrderLine ol'#9#9'ON '#9'od.OrderNo = ol.OrderNo'#9
      'INNER JOIN dbo.Client cl'#9#9'ON'#9'od.CustomerNo = cl.ClientNo'
      
        'INNER JOIN dbo.UnitName'#9'UN'#9#9'ON'#9'UN.VolumeUnit_No = ol.VolumeUnitN' +
        'o'
      
        'INNER JOIN dbo.PackUnit PU'#9#9'ON'#9'PU.TemplateUnitNo = ol.PriceUnitN' +
        'o'
      'INNER JOIN dbo.Currency CU'#9#9'ON'#9'CU.CurrencyNo = od.CurrencyNo'
      ''
      '--WHERE od.OrderNo = ol.OrderNo and od.CustomerNo = cl.ClientNo'
      '')
    Left = 352
    Top = 48
    object cdsOrderPKValue: TStringField
      FieldName = 'PKValue'
      Origin = 'PKValue'
      ReadOnly = True
    end
    object cdsOrderOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrderSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cdsOrderOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
      Required = True
    end
    object cdsOrderProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object cdsOrderProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object cdsOrderOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      Required = True
    end
    object cdsOrderOrderStatus: TIntegerField
      FieldName = 'OrderStatus'
      Origin = 'OrderStatus'
    end
    object cdsOrderOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
    end
    object cdsOrderSalesType: TStringField
      FieldName = 'SalesType'
      Origin = 'SalesType'
      ReadOnly = True
      Size = 5
    end
    object cdsOrderCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cdsOrderClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cdsOrderOrderLineDescription: TStringField
      FieldName = 'OrderLineDescription'
      Origin = 'OrderLineDescription'
      Size = 100
    end
    object cdsOrderNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
    end
    object cdsOrderLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      FixedChar = True
      Size = 100
    end
    object cdsOrderVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cdsOrderPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      Origin = 'PriceUnitNo'
    end
    object cdsOrderCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object cdsOrderCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      Required = True
      Size = 5
    end
    object cdsOrderPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
    object cdsOrderTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
      Origin = 'TemplateUnitName'
      Required = True
    end
    object cdsOrderOrderVolume: TFloatField
      FieldName = 'OrderVolume'
      Origin = 'OrderVolume'
    end
    object cdsOrderVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
      Origin = 'VolumeUnit_No'
      Required = True
    end
    object cdsOrderOrderLineValueSEK: TFloatField
      FieldName = 'OrderLineValueSEK'
      Origin = 'OrderLineValueSEK'
    end
    object cdsOrderOrderLineValueCurrency: TFloatField
      FieldName = 'OrderLineValueCurrency'
      Origin = 'OrderLineValueCurrency'
    end
  end
  object cdsSetAvrop: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT * FROM dbo.CustomerShippingPlanHeader CSH')
    Left = 48
    Top = 272
    object cdsSetAvropShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSetAvropShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
    end
  end
  object cds_GetLOByInvNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select ILO.ShippingPlanNo AS LO,'
      'CASE'
      'WHEN IH.InvoiceType = 0 THEN '#39'K1'#39
      'WHEN IH.InvoiceType = 1 THEN '#39'Pro'#39
      'WHEN IH.InvoiceType = 2 THEN '#39'Pro'#39
      'WHEN IH.InvoiceType = 3 THEN '#39'PO'#39
      'WHEN IH.InvoiceType = 4 THEN '#39'USA'#39
      'WHEN IH.InvoiceType = 5 THEN '#39'FW'#39
      'WHEN IH.InvoiceType = 8 THEN '#39'BKO'#39
      'END AS Fakturaserie,'
      'ILO.InternalInvoiceNo, IH.InvoiceType, :InvoiceNo AS Fakturanr'
      ''
      'FROM dbo.InvoiceLO ILO'
      
        'Inner Join dbo.InvoiceHeader IH on IH.InternalInvoiceNo = ILO.In' +
        'ternalInvoiceNo'
      'WHERE ILO.InternalInvoiceNo in (Select INV.InternalInvoiceNo'
      'FROM dbo.InvoiceNumber INV'
      'WHERE INV.InvoiceNo = :InvoiceNo)'
      ''
      'OR'
      ''
      'ILO.InternalInvoiceNo in (Select INV.InternalInvoiceNo'
      'FROM dbo.InvoiceNo_USA INV'
      'WHERE INV.InvoiceNo = :InvoiceNo)'
      ''
      'OR'
      ''
      'ILO.InternalInvoiceNo in (Select INV.InternalInvoiceNo'
      'FROM dbo.InvoiceNumber_PO INV'
      'WHERE INV.PO_InvoiceNo = :InvoiceNo)'
      ''
      'OR'
      ''
      'ILO.InternalInvoiceNo in (Select INV.InternalInvoiceNo'
      'FROM dbo.InvNo_FW INV'
      'WHERE INV.InvoiceNo = :InvoiceNo)'
      ''
      'OR'
      ''
      'ILO.InternalInvoiceNo in (Select INV.InternalInvoiceNo'
      'FROM dbo.ProformaInvoiceNumber INV'
      'WHERE INV.ProformaInvoiceNo = :InvoiceNo)'
      ''
      'OR'
      ''
      'ILO.InternalInvoiceNo in (Select INV.InternalInvoiceNo'
      'FROM dbo.InvoiceNumber_Komp INV'
      'WHERE INV.InvoiceNo = :InvoiceNo)'
      '')
    Left = 184
    Top = 176
    ParamData = <
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetLOByInvNoLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object cds_GetLOByInvNoFakturaserie: TStringField
      FieldName = 'Fakturaserie'
      Origin = 'Fakturaserie'
      ReadOnly = True
      Size = 3
    end
    object cds_GetLOByInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetLOByInvNoInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
    end
    object cds_GetLOByInvNoFakturanr: TIntegerField
      FieldName = 'Fakturanr'
      Origin = 'Fakturanr'
      ReadOnly = True
    end
  end
  object sq_FindLONo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'LS.ShippingPlanNo AS LONo'
      ''
      'FROM LoadShippingPlan LS'
      'WHERE LS.LoadNo = :LoadNo')
    Left = 520
    Top = 48
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_FindLONoLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      Required = True
    end
  end
  object sq_Get_CSH_Status: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT ShippingPlanStatus'
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      'Where ShippingPlanNo = :ShippingPlanNo')
    Left = 520
    Top = 96
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_Get_CSH_StatusShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
    end
  end
  object sq_ValidLONr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'CSH.ShippingPlanNo, OH.SalesRegionNo'
      'FROM   dbo.CustomerShippingPlanHeader CSH'
      'Inner Join dbo.Orders OH on OH.OrderNo = CSH.OrderNo'
      'WHERE  CSH.ShippingPlanNo    =   :LONo'
      'AND OH.SalesRegionNo = :SupplierNo')
    Left = 520
    Top = 144
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ValidLONrShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ValidLONrSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
  end
  object sq_SearchLOByCSD_Ref: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    Left = 520
    Top = 192
  end
  object sq_SetRowStatus: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.CustomerShippingPlanDetails'
      'Set SequenceNo = :Status'
      'WHERE ShippingPlanNo = :LONo ')
    Left = 520
    Top = 248
    ParamData = <
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SetHdrStatus: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.CustomerShippingPlanHeader'
      'Set ShippingPlanStatus = :Status'
      'WHERE ShippingPlanNo = :LONo ')
    Left = 520
    Top = 296
    ParamData = <
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_CngLOonLoad_csd: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.CngLOonLoad_csd'
    Left = 48
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NewLONo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_InvoiceGroup: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceGroup'
      '')
    Left = 288
    Top = 184
    object cds_InvoiceGroupInvoiceGroupNo: TIntegerField
      FieldName = 'InvoiceGroupNo'
      Origin = 'InvoiceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvoiceGroupOriginalInvNos: TStringField
      FieldName = 'OriginalInvNos'
      Origin = 'OriginalInvNos'
      Size = 255
    end
    object cds_InvoiceGroupOrdernos: TStringField
      FieldName = 'Ordernos'
      Origin = 'Ordernos'
      Size = 255
    end
    object cds_InvoiceGroupCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_InvoiceGroupModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_InvoiceGroupCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
    end
    object cds_InvoiceGroupModifiedDate: TSQLTimeStampField
      FieldName = 'ModifiedDate'
      Origin = 'ModifiedDate'
    end
    object cds_InvoiceGroupInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      BlobType = ftMemo
    end
    object cds_InvoiceGroupAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cds_InvoiceGroupPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object cds_InvoiceGroupCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
    object cds_InvoiceGroupCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      Size = 30
    end
    object cds_InvoiceGroupCustomerName: TStringField
      FieldName = 'CustomerName'
      Origin = 'CustomerName'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupAgentname: TStringField
      FieldName = 'Agentname'
      Origin = 'Agentname'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      Origin = 'ST_AddressName'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupST_CityName: TStringField
      FieldName = 'ST_CityName'
      Origin = 'ST_CityName'
      FixedChar = True
      Size = 50
    end
    object cds_InvoiceGroupCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      FixedChar = True
      Size = 50
    end
    object cds_InvoiceGroupETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
    object cds_InvoiceGroupETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
    end
    object cds_InvoiceGroupPaymentText: TMemoField
      FieldName = 'PaymentText'
      Origin = 'PaymentText'
      BlobType = ftMemo
    end
    object cds_InvoiceGroupDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Origin = 'DeliveryTerm'
      Size = 21
    end
    object cds_InvoiceGroupPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      Origin = 'PaymentDescription'
      FixedChar = True
      Size = 100
    end
    object cds_InvoiceGroupCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      FixedChar = True
      Size = 5
    end
    object cds_InvoiceGroupSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      FixedChar = True
      Size = 80
    end
    object cds_InvoiceGroupSUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      Origin = 'SUM_FreigthCost'
    end
    object cds_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      Origin = 'Total_Product_Value_No_Freight'
    end
    object cds_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      Origin = 'Inv_Value_To_Be_Paid_2'
    end
  end
  object cds_InvoiceInGroup: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select *'
      'FROM InvoiceInGroup'
      'WHERE'
      'InvoiceGroupNo = :InvoiceGroupNo'
      ''
      ''
      
        'SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_' +
        'DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,'
      
        'IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.Invoic' +
        'eNo AS INVOICE_NO,'
      'CASE'
      'WHEN IH.InvoiceType = 0 THEN '#39'NORMAL'#39
      'WHEN IH.InvoiceType = 1 THEN '#39'PROFORMA, INVOICE LATER'#39
      'WHEN IH.InvoiceType = 2 THEN '#39'PROFORMA'#39
      'END AS INVOICE_TYPE,'
      'CASE'
      'WHEN IH.Debit_Credit = 0 THEN '#39'DEBIT'#39
      'WHEN IH.Debit_Credit = 1 THEN '#39'CREDIT'#39
      'END AS INVOICE_KONTO,'
      'IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,'
      'IH.CurrencyName'#9'AS CURRENCY,'
      'RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+'
      'RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID'
      ''
      ''
      'FROM'
      
        'dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNumber INo, d' +
        'bo.InvoiceInGroup IG'
      'WHERE'
      'IG.InvoiceGroupNo = :InvoiceGroupNo'
      'AND INo.InvoiceNo = IG.InvoiceNo'
      'AND IH.InternalInvoiceNo = INo.InternalInvoiceNo'
      'AND IL.InternalInvoiceNo = IH.InternalInvoiceNo'
      ''
      'ORDER BY InvoiceDate')
    Left = 400
    Top = 176
    ParamData = <
      item
        Name = 'INVOICEGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOICEGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_KontoLogik: TFDQuery
    AfterInsert = cds_KontoLogikAfterInsert
    BeforePost = cds_KontoLogikBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.KontoLogik')
    Left = 56
    Top = 368
    object cds_KontoLogikSalesmangroupNo: TIntegerField
      DisplayLabel = 'F'#246'rs'#228'ljningsgrupp'
      FieldName = 'SalesmangroupNo'
      Origin = 'SalesmangroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KontoLogikSalesregionNo: TIntegerField
      DisplayLabel = 'F'#246'rs'#228'ljningsregion'
      FieldName = 'SalesregionNo'
      Origin = 'SalesregionNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KontoLogikCustomerCountryNo: TIntegerField
      DisplayLabel = 'Faktureringsland'
      FieldName = 'CustomerCountryNo'
      Origin = 'CustomerCountryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KontoLogikTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KontoLogikPO_CountryNo: TIntegerField
      DisplayLabel = 'Ink'#246'psland'
      FieldName = 'PO_CountryNo'
      Origin = 'PO_CountryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KontoLogikVarugruppNo: TIntegerField
      DisplayLabel = 'Varuslag'
      FieldName = 'VarugruppNo'
      Origin = 'VarugruppNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KontoLogikForsaljningsKonto: TStringField
      DisplayLabel = 'F'#246'rs'#228'ljningskonto'
      FieldName = 'ForsaljningsKonto'
      Origin = 'ForsaljningsKonto'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_KontoLogikFraktKonto: TStringField
      DisplayLabel = 'Fraktkonto'
      FieldName = 'FraktKonto'
      Origin = 'FraktKonto'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_KontoLogikVatCode: TStringField
      DisplayLabel = 'Momskod'
      FieldName = 'VatCode'
      Origin = 'VatCode'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_KontoLogikMomsKonto: TStringField
      DisplayLabel = 'Momskonto'
      FieldName = 'MomsKonto'
      Origin = 'MomsKonto'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_KontoLogikSalesgroup: TStringField
      DisplayLabel = 'F'#246'rs'#228'ljningsgrupp'
      FieldKind = fkLookup
      FieldName = 'Salesgroup'
      LookupDataSet = dmsContact.cds_SalesGrp
      LookupKeyFields = 'SalesGroupNo'
      LookupResultField = 'SalesGroupName'
      KeyFields = 'SalesmangroupNo'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
    object cds_KontoLogikSalesregion: TStringField
      DisplayLabel = 'F'#246'rs'#228'ljningsregion'
      FieldKind = fkLookup
      FieldName = 'Salesregion'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesregionNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_KontoLogikSalesToCountry: TStringField
      DisplayLabel = 'Faktureringsland'
      FieldKind = fkLookup
      FieldName = 'SalesToCountry'
      LookupDataSet = dmsContact.cds_Country
      LookupKeyFields = 'CountryNo'
      LookupResultField = 'CountryName'
      KeyFields = 'CustomerCountryNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_KontoLogikDateCreated: TSQLTimeStampField
      DisplayLabel = 'Registrerad'
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KontoLogikDateModified: TSQLTimeStampField
      DisplayLabel = #196'ndrad'
      FieldName = 'DateModified'
      Origin = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KontoLogikCreatedUser: TIntegerField
      DisplayLabel = 'Registrerad av'
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KontoLogikModifiedUser: TIntegerField
      DisplayLabel = #196'ndrad av'
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KontoLogikMoms: TIntegerField
      FieldName = 'Moms'
      Origin = 'Moms'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KontoLogikArtikel: TStringField
      FieldKind = fkLookup
      FieldName = 'Artikel'
      LookupDataSet = dmsSystem.cds_Article
      LookupKeyFields = 'ArticleNo'
      LookupResultField = 'ArticleName'
      KeyFields = 'VarugruppNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_KontoLogikPO_Country: TStringField
      DisplayLabel = 'Ink'#246'psland'
      FieldKind = fkLookup
      FieldName = 'PO_Country'
      LookupDataSet = dmsContact.cds_Country
      LookupKeyFields = 'CountryNo'
      LookupResultField = 'CountryName'
      KeyFields = 'PO_CountryNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object ds_KontoLogik: TDataSource
    DataSet = cds_KontoLogik
    Left = 56
    Top = 424
  end
  object cdsAvrop: TFDQuery
    OnCalcFields = cdsAvropCalcFields
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    SQL.Strings = (
      'SELECT'
      'OH.CurrencyNo,'
      'CSH.ShippingPlanStatus'#9#9#9#9','
      'CSH.ShippingPlanNo '#9#9#9#9','
      'OH.OrderNoText'#9#9#9#9#9'AS ORDERNUMBER,'
      'isNull(CSH.Reference,'#39' '#39')'#9#9#9'AS REFERENCE,'
      'isnull(CSH.ETDYearWeek,-1) '#9#9#9'AS FROMWEEK,'
      'isnull(CSH.ETDWeekEnd,-1) '#9#9#9'AS TOWEEK,'
      'C.ClientName '#9#9#9#9#9'AS CLIENT,'
      'isNull(AG.ClientName,'#39' '#39')'#9#9#9'AS AGENT,'
      'isNull(CSD.Reference,'#39' '#39')'#9#9#9'AS MARK,'
      'OL.OrderLineDescription '#9#9#9'AS PRODUCT,'
      'CSD.LengthDescription '#9#9#9#9'AS LENGTH,'
      'isnull(CSD.NoOfUnits,0) '#9#9#9'AS VOLUME ,'
      ''
      'VU.VolumeUnitName'#9#9#9#9'AS VOLUNIT,'
      ''
      'isNull(Cy.CityName,'#39' '#39')'#9#9#9'AS DESTINATION,'
      ''
      'CSH.OrderNo '#9#9#9#9#9'AS ORDERNO,'
      'CSH.CustomerNo'#9#9#9#9#9'AS CLIENTNO,'
      'CSH.DestinationNo'#9#9#9#9'AS DESTINATIONNO,'
      'CSD.CustShipPlanDetailObjectNo '#9#9#9','
      'OH.SalesRegionNo'#9#9#9#9'AS SALESREGIONNO,'
      'OH.OrderType'#9#9#9#9#9'AS ORDERTYPE,'
      'OL.Reference          AS KR_REF,'
      ''
      'isNull((Select DV.SHIP_KVANT from'
      
        'dbo.DelPerCSD_II DV WHERE '#9'DV.CSDNO = csd.CustShipPlanDetailObje' +
        'ctNo),0)  AS LEV,'
      ''
      'OH.Trading,'
      'CSD.SequenceNo,'
      'isNull((Select LP.LoadedPkgs from'
      
        'dbo.LoadedCSDPkgs LP WHERE '#9'LP.CSDNO = csd.CustShipPlanDetailObj' +
        'ectNo),0)  AS LoadedPkgs'
      ''
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD '#9'ON  '#9'CSD.Shippi' +
        'ngPlanNo '#9'= CSH.ShippingPlanNo'
      #9'LEFT OUTER JOIN ShippingPlan_ShippingAddress SSAD'
      #9'INNER JOIN Address'#9'ADDR'#9#9#9'ON'#9'ADDR.ADDRESSNO'#9'= SSAD.ADDRESSNO'
      #9'Left Outer JOIN dbo.City'#9#9'Cy '#9#9'ON  '#9'ADDR.CityNo'#9'= Cy.CityNo'
      #9#9#9#9#9#9#9#9'ON SSAD.ShippingPlanNo = CSD.ShippingPlanNo'
      #9#9#9#9#9#9#9#9'AND SSAD.Reference'#9'= CSD.REFERENCE'
      ''
      #9'INNER JOIN dbo.Client '#9#9#9'C'#9'ON '#9'C.ClientNo'#9#9'= CSH.CustomerNo'
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      #9'INNER JOIN dbo.OrderLine '#9#9'OL'#9'ON'#9'OL.OrderNo '#9#9'= CSD.OrderNo'
      #9#9#9#9#9#9#9'AND '#9'OL.OrderLineNo '#9#9'= CSD.OrderLineNo'
      
        #9'INNER JOIN dbo.UnitName '#9#9'VU'#9'ON '#9'VU.VolumeUnit_No '#9'= OL.VolumeU' +
        'nitNo'
      ''
      
        #9'LEFT  OUTER JOIN dbo.Client'#9#9'AG'#9'ON  '#9'OH.AgentNo'#9'       '#9'= AG.Cl' +
        'ientNo '
      ''
      ''
      'WHERE 1 = 1 '
      'AND CSH.SHIPPINGPLANSTATUS = 8'
      'AND OH.OrderType = 0'
      'AND CSH.CustomerNo = 1176'
      '')
    Left = 184
    Top = 312
    object cdsAvropCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = []
    end
    object cdsAvropShippingPlanStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAvropShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = []
      Required = True
    end
    object cdsAvropORDERNUMBER: TStringField
      DisplayLabel = 'Ordernr'
      FieldName = 'ORDERNUMBER'
      Origin = 'ORDERNUMBER'
      ProviderFlags = []
      Required = True
    end
    object cdsAvropREFERENCE: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsAvropFROMWEEK: TIntegerField
      DisplayLabel = 'Fr'#229'n vecka'
      FieldName = 'FROMWEEK'
      Origin = 'FROMWEEK'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
    object cdsAvropTOWEEK: TIntegerField
      DisplayLabel = 'Till vecka'
      FieldName = 'TOWEEK'
      Origin = 'TOWEEK'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
    object cdsAvropCLIENT: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'CLIENT'
      Origin = 'CLIENT'
      ProviderFlags = []
      Size = 80
    end
    object cdsAvropAGENT: TStringField
      DisplayLabel = 'Agent'
      FieldName = 'AGENT'
      Origin = 'AGENT'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 80
    end
    object cdsAvropMARK: TStringField
      DisplayLabel = 'M'#228'rkning'
      FieldName = 'MARK'
      Origin = 'MARK'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsAvropPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object cdsAvropLENGTH: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LENGTH'
      Origin = 'LENGTH'
      ProviderFlags = []
      FixedChar = True
      Size = 100
    end
    object cdsAvropVOLUME: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
    object cdsAvropVOLUNIT: TStringField
      DisplayLabel = 'Vol.enhet'
      FieldName = 'VOLUNIT'
      Origin = 'VOLUNIT'
      ProviderFlags = []
      Required = True
      Size = 10
    end
    object cdsAvropDESTINATION: TStringField
      DisplayLabel = 'Destination'
      FieldName = 'DESTINATION'
      Origin = 'DESTINATION'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsAvropORDERNO: TIntegerField
      FieldName = 'ORDERNO'
      Origin = 'ORDERNO'
      ProviderFlags = []
      Required = True
    end
    object cdsAvropCLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
      Origin = 'CLIENTNO'
      ProviderFlags = []
    end
    object cdsAvropDESTINATIONNO: TIntegerField
      FieldName = 'DESTINATIONNO'
      Origin = 'DESTINATIONNO'
      ProviderFlags = []
    end
    object cdsAvropCustShipPlanDetailObjectNo: TIntegerField
      DisplayLabel = 'Rad ID'
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      ProviderFlags = []
      Required = True
    end
    object cdsAvropSALESREGIONNO: TIntegerField
      FieldName = 'SALESREGIONNO'
      Origin = 'SALESREGIONNO'
      ProviderFlags = []
    end
    object cdsAvropORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ProviderFlags = []
    end
    object cdsAvropKR_REF: TStringField
      DisplayLabel = 'KR-referens'
      FieldName = 'KR_REF'
      Origin = 'KR_REF'
      ProviderFlags = []
      Size = 50
    end
    object cdsAvropLEV: TFMTBCDField
      DisplayLabel = 'Levererat'
      FieldName = 'LEV'
      Origin = 'LEV'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Precision = 38
      Size = 3
    end
    object cdsAvropTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
      ProviderFlags = []
    end
    object cdsAvropSequenceNo: TIntegerField
      DisplayLabel = 'Radstatus'
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = []
    end
    object cdsAvropRest: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Rest'
      ProviderFlags = []
      Calculated = True
    end
    object cdsAvropLoadedPkgs: TIntegerField
      DisplayLabel = 'Ej fakturerade paket'
      FieldName = 'LoadedPkgs'
      Origin = 'LoadedPkgs'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
  end
  object sq_PkgType_InvoiceOrigLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      ''
      ''
      'Insert into dbo.PkgType_Invoice'
      '(PackageTypeNo,'
      'ProductLengthNo,'
      'InternalInvoiceNo,'
      'LoadNo,'
      'LoadDetailNo,'
      'NoOfPieces,'
      'm3Actual,'
      'm3Nominal,'
      'MFBMNominal,'
      'SQMofActualWidth,'
      'SQMofCoveringWidth,'
      'LinealMeterActualLength,'
      'm3ActualSizeNomLength,'
      'm3NomSizeActualLength,'
      'CreatedUser,'
      'ModifiedUser,'
      'DateCreated,'
      'LinealMeterNominalLength,'
      'OrderVolume,'
      'PriceVolume)'
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      ':InternalInvoiceNo,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      '-- m3 actual'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3)'
      '-- Round Stolp'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces'
      
        '-- SET @m3Act = PI() * SQUARE (@ActThick/100/2) * @ActWidth / 10' +
        '0 * @NoOfPieces'
      'As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ''
      'END AS M3Actual,'
      
        '-- PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.ActualWidthM' +
        'M/100) * PTD.NoOfPieces,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000 * 10' +
        '00 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000 * 10' +
        '00 * 1000)'
      ' As decimal(10,3)),3)'
      'END'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS M3NOMINAL,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS MFBMNominal,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS SQMofActualWidth,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN PTD.SQMofCoveringWidth'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS SQMofCoveringWidth,'
      ''
      '--**********************************'
      '--**********************************'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3)'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST((PG.ActualWidthMM / 100 * PTD.NoOfPieces)   As decima' +
        'l(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS LinealMeterActualLength,'
      ''
      
        '-- ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal' +
        '(10,3)),3) AS LinealMeterActualLength,'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3)'
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END AS m3ActualSizeNomLength,'
      ''
      
        '-- m3NomSizeActualLength ***************************************' +
        '******'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST('
      '(PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END AS m3NomSizeActualLength,'
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      ''
      '--**********************************'
      '--**********************************'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3)'
      ''
      'END --WHEN PG.SequenceNo = 0 THEN'
      ''
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST((PG.ActualWidthMM / 100 * PTD.NoOfPieces)   As decima' +
        'l(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      '--END'
      ''
      'END AS NM1,'
      ''
      '-- OrderVolume *************************************************'
      '-- OrderVolume *************************************************'
      '-- OrderVolume *************************************************'
      'CASE'
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN VU.VolumeUnitName = '#39'm3 nDxnL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000 * 10' +
        '00 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000 * 10' +
        '00 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END'
      '-- M3NOMINAL *****************************************'
      ''
      'WHEN VU.VolumeUnitName = '#39'kvm aB'#39' THEN'
      'CASE'
      
        'WHEN PG.SequenceNo = 0 THEN ROUND(CAST((       PTD.SQMofActualWi' +
        'dth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN VU.VolumeUnitName = '#39'Lopm a'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      ''
      'WHEN VU.VolumeUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      ''
      'WHEN VU.VolumeUnitName = '#39'm3 aDxaL'#39' THEN'
      'CASE'
      ' WHEN PG.SequenceNo = 0 THEN'
      
        ' ROUND(CAST((PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWi' +
        'dthMM *'
      ' PL.ActualLengthMM) / (1000 * 1000 * 1000) As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 1 THEN'
      
        ' ROUND(CAST((pi() * SQUARE(PG.ActualWidthMM/100/2) * (PG.ActualT' +
        'hicknessMM/100) * PTD.NoOfPieces)  As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN VU.VolumeUnitName = '#39'Lopm n'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000) As ' +
        'decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000) As ' +
        'decimal(10,3)),3)'
      ''
      'END -- WHEN PG.SequenceNo = 0 THEN'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST((PG.ActualWidthMM / 100 * PTD.NoOfPieces)   As decima' +
        'l(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ''
      'END --NM1'
      ''
      'WHEN VU.VolumeUnitName = '#39'MFBM Nom'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN VU.VolumeUnitName = '#39'Packages'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN 1'
      'WHEN PG.SequenceNo = 1 THEN 1'
      'WHEN PG.SequenceNo = 2 THEN 1'
      'END'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN VU.VolumeUnitName = '#39'm3 aDxnL'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3)'
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000 * 10' +
        '00 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000 * 10' +
        '00 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END --AS m3ActualSizeNomLength,'
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      ''
      '-- m3 nDxaL *********************************************'
      ''
      '-- WHEN VU.VolumeUnitName = '#39'm3 nDxaL'#39' THEN'
      '-- CASE WHEN PG.SequenceNo = 1 THEN'
      '-- ROUND(CAST(('
      '-- PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '-- CASE WHEN 0 > 0.05'
      
        '-- THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * ' +
        '1000 * 1000)'
      '--  As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      '-- WHEN PG.SequenceNo = 1 THEN 0'
      '-- WHEN PG.SequenceNo = 2 THEN 0'
      '-- END'
      '-- m3 nDxaL *********************************************'
      'WHEN VU.VolumeUnitName = '#39'm3 nDxaL'#39' THEN'
      
        'CASE WHEN PG.SequenceNo = 0 THEN ROUND(CAST((PTD.NoOfPieces * OL' +
        '.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)  As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN VU.VolumeUnitName = '#39'Pall'#39' THEN'
      
        'CASE WHEN PG.SequenceNo = 7 THEN ROUND(CAST(PL.ActualLengthMM * ' +
        'PTD.NoOfPieces  As decimal(10,3)),3)'
      ''
      'END'
      ''
      ''
      'WHEN VU.VolumeUnitName = '#39'S'#228'ck'#39' THEN'
      
        'CASE WHEN PG.SequenceNo = 7 THEN ROUND(CAST(PTD.NoOfPieces  As d' +
        'ecimal(10,3)),3)'
      ''
      'END'
      ''
      'WHEN VU.VolumeUnitName = '#39'Bal'#39' THEN'
      
        'CASE WHEN PG.SequenceNo = 7 THEN ROUND(CAST(PTD.NoOfPieces  As d' +
        'ecimal(10,3)),3)'
      ''
      'END'
      ''
      ''
      ''
      'END AS OrderVolume,'
      ''
      ''
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      'CASE'
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN'
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000 * 10' +
        '00 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000 * 10' +
        '00 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      'END--'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      '-- M3NOMINAL *****************************************'
      ''
      'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3)'
      
        ' WHEN PG.SequenceNo = 1 THEN ROUND(CAST((PG.ActualWidthMM / 100 ' +
        '* PTD.NoOfPieces)   As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN PU.TemplateUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      ''
      'WHEN PU.TemplateUnitName = '#39'm3 aDxaL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3)'
      
        ' WHEN PG.SequenceNo = 1 THEN ROUND(CAST(PI() * SQUARE (PG.Actual' +
        'ThicknessMM/100/2) * (PG.ActualWidthMM/100) * PTD.NoOfPieces As ' +
        'decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN PU.TemplateUnitName = '#39'Lopm n'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000) As ' +
        'decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000) As ' +
        'decimal(10,3)),3)'
      ''
      
        'WHEN PG.SequenceNo = 1 THEN ROUND(CAST((PG.ActualWidthMM / 100 *' +
        ' PTD.NoOfPieces)   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      'END-- NM1'
      ''
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN'
      
        'CASE WHEN PG.SequenceNo = 0 THEN ROUND(CAST((       PTD.MFBMNomi' +
        'nal )   As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN PU.TemplateUnitName = '#39'Packages'#39' THEN 1'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN PU.TemplateUnitName = '#39'm3 aDxnL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE'
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.ActualLengthMM END) / (1000 * 10' +
        '00 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'END --AS m3ActualSizeNomLength,'
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39' THEN'
      'CASE WHEN PG.SequenceNo = 0  THEN'
      
        'ROUND(CAST((PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalW' +
        'idthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN PU.TemplateUnitName = '#39'kg'#39' THEN'
      'CASE WHEN PG.SequenceNo = 7  THEN'
      
        'ROUND(CAST(PL.ActualLengthMM * PTD.NoOfPieces As decimal(10,3)),' +
        '3) -- AS m3NomSizeActualLength,'
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'S'#228'ck'#39' THEN'
      'CASE WHEN PG.SequenceNo = 7  THEN'
      
        'ROUND(CAST(PTD.NoOfPieces As decimal(10,3)),3) -- AS m3NomSizeAc' +
        'tualLength,'
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      'WHEN PU.TemplateUnitName = '#39'Bal'#39' THEN'
      'CASE WHEN PG.SequenceNo = 7  THEN'
      
        'ROUND(CAST(PTD.NoOfPieces As decimal(10,3)),3) -- AS m3NomSizeAc' +
        'tualLength,'
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ''
      ''
      'END AS PriceVolume'
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD ON PTD.PackageTypeNo = LD.P' +
        'ackageTypeNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      ''
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      ''
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      'INNER JOIN dbo.UnitName VU ON VU.VolumeUnit_No = OL.VolumeUnitNo'
      'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitNo'
      ''
      ''
      'WHERE'
      'LO.LoadNo <> 1'
      
        'and LO.SupplierNo = :SupplierNo AND LO.SenderLoadStatus = 2 AND ' +
        'LO.CustomerNo = :CustomerNo AND LSP.ShippingPlanNo = :ShippingPl' +
        'anNo'
      ''
      ''
      'AND NOT EXISTS'
      '   (SELECT *'
      '   FROM dbo.Invoiced_Load'
      '   WHERE LoadNo = LSP.LoadNo'
      'AND ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      'Delete dbo.PkgType_Load'
      'FROM dbo.PkgType_Load'
      
        'Inner Join dbo.PkgType_Invoice ptd on ptd.LoadNo = PkgType_Load.' +
        'LoadNo'
      'WHERE Ptd.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Insert into dbo.PkgType_Load'
      'Select ptd.PackageTypeNo, ptd.LoadNo, ptd.LoadDetailNo,'
      'SUM(ptd.NoOfPieces),'
      'SUM(ptd.m3Actual),'
      'SUM(ptd.m3Nominal),'
      'SUM(ptd.MFBMNominal),'
      'SUM(ptd.SQMofActualWidth),'
      'SUM(ptd.SQMofCoveringWidth),'
      'SUM(ptd.LinealMeterActualLength),'
      'SUM(ptd.m3ActualSizeNomLength),'
      'SUM(ptd.m3NomSizeActualLength),'
      'SUM(ptd.LinealMeterNominalLength),'
      'SUM(ptd.OrderVolume),'
      'SUM(ptd.PriceVolume)'
      ''
      'FROM dbo.PkgType_Invoice ptd'
      ''
      'WHERE Ptd.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Group By ptd.PackageTypeNo, ptd.LoadNo, ptd.LoadDetailNo'
      '')
    Left = 514
    Top = 376
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_DeleteTempLoad: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Wize_DeleteTempLoad'
    Left = 512
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@InternalInvoiceNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
