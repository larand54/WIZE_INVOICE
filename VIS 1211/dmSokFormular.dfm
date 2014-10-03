object dm_SokFormular: Tdm_SokFormular
  OldCreateOrder = False
  Height = 537
  Width = 807
  object ds_SokAvrop: TDataSource
    DataSet = cds_SokAvrop
    Left = 352
    Top = 72
  end
  object ds_MakeSokAvrop: TDataSource
    DataSet = cds_MakeSokAvrop
    Left = 160
    Top = 64
  end
  object ds_PropsTaBort: TDataSource
    DataSet = cds_PropsTaBort
    Left = 704
    Top = 80
  end
  object cds_MakeSokAvrop: TADQuery
    BeforePost = cds_MakeSokAvropBeforePost
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_MakeSokAvropIndex1'
        Fields = 'BookingNo'
      end
      item
        Active = True
        Name = 'cds_MakeSokAvropIndex2'
        Fields = 'LO'
      end>
    IndexName = 'cds_MakeSokAvropIndex1'
    OnUpdateRecord = cds_MakeSokAvropUpdateRecord
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    UpdateOptions.UpdateTableName = 'Booking'
    SQL.Strings = (
      'Select DISTINCT'
      '  RTRIM(CONVERT(varchar(20),isnull(CSH.ShippingPlanNo,'#39#39')))+'
      'RTRIM(CONVERT(varchar(20),isnull(Supp.ClientName,'#39#39')))+'
      'RTRIM(CONVERT(varchar(20),isnull(Bk.BookingNo,'#39#39')))+'
      'RTRIM(CONVERT(varchar(20),isnull(ST.Reference,'#39#39')))+'
      'RTRIM(CONVERT(varchar(20),isnull(LL.CityName,'#39#39')))+'
      'RTRIM(CONVERT(varchar(20),isnull(OH.OrderNoText,'#39#39')))+'
      'RTRIM(CONVERT(varchar(6),isnull(OL.ProductNo,'#39#39')))+'
      'RTRIM(CONVERT(varchar(6),isnull(CSD.ProductLengthNo,'#39#39')))+'
      
        'RTRIM(CONVERT(varchar(10),isnull(CSD.CustShipPlanDetailObjectNo,' +
        #39#39')))+'
      
        'RTRIM(CONVERT(varchar(20),isnull(ST_AdrCY.CityName,'#39#39'))) AS UKEY' +
        ', '
      'CASE'
      'WHEN CSH.SHIPPINGPLANSTATUS = 0 THEN '#39'CANCEL'#39
      'WHEN CSH.SHIPPINGPLANSTATUS = 1 THEN '#39'PROGRESS'#39
      'WHEN CSH.SHIPPINGPLANSTATUS = 2 THEN '#39'COMPLETE'#39
      'END AS AVROP_STATUS,'
      #9'CSH.ShippingPlanNo        '#9'AS LO,'
      '  CSH.ShippingPlanNo, '
      'CASE'
      'WHEN SP.ShippingPlanNo is null THEN LLCSH.CityName'
      'ELSE'
      'LL.CityName'#9'END             AS LOADING_LOCATION, '
      #9'Supp.SearchName'#9#9#9'        AS SUPPLIER, '
      #9'OH.OrderNoText'#9#9#9'        AS ORDER_NO, '
      #9'CSH.Reference'#9#9#9'          AS CUST_REFERENCE, '
      #9'CSH.ETDYearWeek'#9#9#9'        AS FROM_WEEK, '
      #9'CSH.ETDWeekEnd'#9#9#9'        AS TO_WEEK, '
      #9'C.SearchName            '#9'  AS CUSTOMER, '
      #9'AG.SearchName'#9#9#9'          AS AGENT, '
      #9'DT.DeliveryTerm'#9#9#9'        AS DELIVERY_TERM, '
      #9'isnull(RTRIM(ST_ADR.PostalCode)+'#39' / '#39'   ,'#39#39')  +'
      
        #9'RTRIM(CONVERT(varchar(20),isnull(ST_AdrCY.CityName,'#39#39'))) AS POS' +
        'TAL_CODE_DESTINATION,'
      '  ST_AdrCtry.CountryName      AS Land,'
      #9'ST.Reference'#9#9#9'          AS SHIPTO_REFERENCE, '
      #9'BK.PreliminaryRequestedPeriod, '
      #9'SC.SearchName'#9#9#9'          AS SHIPPER, '
      #9'Bk.ShippingCompanyBookingID'#9'AS SHIPPINGCOMPANYBOOKINGID, '
      #9'Bk.ShippersShipDate'#9#9'      AS SHIPPERSSHIPDATE, '
      #9'Bt.BookingType'#9#9#9'        AS TRANSPORT, '
      #9'MR.MarketRegionName'#9#9'      AS MARKET_REGION, '
      #9'Bk.BookingNo    '#9#9'        AS BookingNo, '
      #9'OL.OrderLineDescription'#9#9'AS PROD_DESC, '
      #9'CSD.LengthDescription           AS LENGTH_DESC, '
      'Bk.Panic_Note AS PANIC_NOTE, '
      'CR.CarrierName AS VESSEL, '
      'VG.ETD, '
      'VG.ETA,'
      ''
      'CASE'
      
        'WHEN SP.ShippingPlanNo is null THEN ROUND(CAST((   SUM(CSD.m3Net' +
        ')    ) As decimal(18,3)),3)'
      'ELSE'
      'ROUND(CAST((   SUM(SP.ActualM3Net)    ) As decimal(18,3)),3)'
      'END AS AM3,'
      ''
      'CASE'
      'WHEN SP.ShippingPlanNo is null THEN'
      '(Select AM3 From  DelperCSDLO LD'
      
        'WHERE LD.DefaultCustShipObjectNo = CSD.CustShipPlanDetailObjectN' +
        'o'
      'AND LD.CustomerNo = CSH.CustomerNo)'
      'ELSE'
      '(Select AM3 From  dbo.DelperSSPCDS LD'
      'WHERE LD.DefaultCustShipObjectNo = SP.CustShipPlanDetailObjectNo'
      'AND LD.SupplierNo = Supp.ClientNo)'
      'END AS LEVLO,'
      ''
      'CASE'
      
        'WHEN SP.ShippingPlanNo is null THEN ROUND(CAST((   SUM(CSD.m3Net' +
        ')    ) As decimal(18,3)),3)'
      'ELSE'
      'ROUND(CAST((   SUM(SP.ActualM3Net)    ) As decimal(18,3)),3)'
      'END -'
      'CASE'
      'WHEN SP.ShippingPlanNo is null THEN'
      '(Select isnull(AM3,0) From DelperCSDLO LD'
      
        'WHERE LD.DefaultCustShipObjectNo = CSD.CustShipPlanDetailObjectN' +
        'o'
      'AND LD.CustomerNo = CSH.CustomerNo)'
      'ELSE'
      '(Select isnull(AM3,0) From  dbo.DelperSSPCDS LD'
      'WHERE LD.DefaultCustShipObjectNo = SP.CustShipPlanDetailObjectNo'
      'AND LD.SupplierNo = Supp.ClientNo)'
      'END AS REST,'
      ''
      ''
      'Bk.SupplierReference ,'
      
        '(Select  Count(distinct SPP.LoadingLocationNo) from dbo.Supplier' +
        'ShippingPlan SPP'
      'WHERE  SPP.ShippingPlanNo = CSH.ShippingPlanNo'
      'AND (SPP.ShippingPlanStatus <> 7'
      ' AND SPP.ShippingPlanStatus <> 8)'
      ') AS NoOfSuppliers, CSH.CustomerNo, OH.OrderType,'
      'Bk.VoyageNo'
      ''
      'FROM'#9'dbo.CustomerShippingPlanHeader CSH '
      #9'INNER JOIN dbo.Client '#9#9#9'C'#9'ON '#9'C.ClientNo'#9#9'= CSH.CustomerNo '
      
        #9'LEFT OUTER JOIN dbo.MarketRegion'#9'MR'#9'ON'#9'MR.MarketRegionNo'#9'= C.Ma' +
        'rketRegionNo '
      #9'LEFT OUTER JOIN dbo.PhysicalInventoryPoint PIP'
      
        #9'INNER JOIN dbo.CITY'#9#9'LLCSH'#9'ON'#9'LLCSH.CityNo '#9#9'= PIP.PhyInvPointN' +
        'ameNo'
      #9'on PIP.PhysicalInventoryPointNo = CSH.LoadingLocationNo'
      #9'Left outer JOIN dbo.CustomerShippingPlanDetails CSD '#9
      #9'INNER JOIN dbo.OrderLine OL ON OL.OrderNo = CSD.OrderNo '
      #9'AND OL.OrderLineNo = CSD.OrderLineNo '
      #9'ON '#9'CSD.ShippingPlanNo '#9'= CSH.ShippingPlanNo  '
      #9'INNER JOIN dbo.Orders '#9#9#9'OH '
      #9'LEFT OUTER JOIN dbo.Client '#9#9#9'AG'#9'ON '#9'AG.ClientNo'#9#9'= OH.AgentNo '
      
        #9'LEFT OUTER JOIN dbo.DeliveryTerm'#9'DT'#9'ON'#9'DT.DeliveryTerm_No'#9#9'= OH' +
        '.DeliveryTermsNo '
      #9#9#9#9#9#9#9'ON '#9'OH.OrderNo'#9#9#9'= CSH.OrderNo '
      #9'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST '
      
        #9'INNER JOIN dbo.Address '#9#9'ST_ADR'#9#9'ON'#9'ST_ADR.AddressNo'#9'= ST.Addre' +
        'ssNo '
      
        #9'INNER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR.City' +
        'No '
      
        #9'INNER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo '#9'= S' +
        'T_ADR.CountryNo '
      #9#9#9#9#9#9#9'ON'#9'ST.ShippingPlanNo'#9'= CSD.ShippingPlanNo '
      #9#9#9#9#9#9#9'AND'#9'ST.Reference'#9#9'= CSD.Reference '
      '    '#9'LEFT OUTER JOIN dbo.Booking'#9#9'Bk '
      #9'Left Outer JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'Left Outer JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo '
      
        #9'Left outer JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo '
      
        #9'Left Outer Join dbo.BookingType'#9#9'Bt'#9'ON'#9'Bt.BookingTypeNo'#9'= Bk.Bo' +
        'okingTypeNo '
      #9#9#9#9#9#9#9'ON  '#9'CSD.ShippingPlanNo '#9'= Bk.ShippingPlanNo '
      #9'LEFT OUTER JOIN dbo.SupplierShippingPlan          SP '
      #9'INNER JOIN dbo.CITY'#9#9'LL'#9'ON'#9'LL.CityNo '#9#9'= SP.LoadingLocationNo '
      
        #9'INNER JOIN dbo.Client '#9#9'Supp'#9'ON '#9'Supp.ClientNo'#9#9'= SP.SupplierNo' +
        ' '
      
        '     ON '#9'SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailO' +
        'bjectNo'
      'WHERE OH.OrderType = 0'
      'AND ((SP.ShippingPlanStatus <> 7'
      ' AND SP.ShippingPlanStatus <> 8)'
      'OR SP.ShippingPlanStatus is null)'
      ' AND CSH.ShippingPlanStatus = 1 '
      ' AND OH.SalesRegionNo = 749'
      ' AND SP.SupplierNo = 76'
      ' AND SP.LoadingLocationNo = 1933'
      ' AND Bk.ShippingCompanyNo = 1515'
      ' AND Bk.BookingTypeNo = 1'
      ' AND CSH.CustomerNo = 239'
      
        'GROUP BY CSH.SHIPPINGPLANSTATUS, CSH.ShippingPlanNo, LL.CityName' +
        ', Supp.SearchName,'
      
        'OH.OrderNoText, CSH.Reference, CSH.ETDYearWeek, CSH.ETDWeekEnd, ' +
        'C.SearchName, AG.SearchName,'
      
        'DT.DeliveryTerm,  ST_ADR.PostalCode, ST_AdrCY.CityName, ST_AdrCt' +
        'ry.CountryName, ST.Reference, BK.PreliminaryRequestedPeriod,'
      
        'SC.SearchName, Bk.ShippingCompanyBookingID, Bk.ShippersShipDate,' +
        ' Bt.BookingType, MR.MarketRegionName,'
      
        'Bk.BookingNo, Bk.Panic_Note, CR.CarrierName, Vg.ETD, VG.ETA, Sup' +
        'p.ClientName, Bk.SupplierReference,'
      
        'CSH.CustomerNo, SP.ShippingPlanNo, Supp.ClientNo, SP.LoadingLoca' +
        'tionNo, OH.OrderType, LLCSH.CityName'
      
        ', CSD.CustShipPlanDetailObjectNo, SP.CustShipPlanDetailObjectNo,' +
        ' OL.ProductNo, CSD.ProductLengthNo'
      ',OL.OrderLineDescription , CSD.LengthDescription, Bk.VoyageNo'
      '')
    Left = 160
    Top = 16
    object cds_MakeSokAvropAVROP_STATUS: TStringField
      DisplayLabel = 'Avr.Status'
      FieldName = 'AVROP_STATUS'
      Origin = 'AVROP_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cds_MakeSokAvropLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      ProviderFlags = []
      Required = True
    end
    object cds_MakeSokAvropLOADING_LOCATION: TStringField
      DisplayLabel = 'Lastst'#228'lle'
      FieldName = 'LOADING_LOCATION'
      Origin = 'LOADING_LOCATION'
      ProviderFlags = []
      Size = 50
    end
    object cds_MakeSokAvropSUPPLIER: TStringField
      DisplayLabel = 'Verk'
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      ProviderFlags = []
      Size = 80
    end
    object cds_MakeSokAvropORDER_NO: TStringField
      DisplayLabel = 'Kontraktnr'
      FieldName = 'ORDER_NO'
      Origin = 'ORDER_NO'
      ProviderFlags = []
      Required = True
    end
    object cds_MakeSokAvropCUST_REFERENCE: TStringField
      DisplayLabel = 'Kundreferens'
      FieldName = 'CUST_REFERENCE'
      Origin = 'CUST_REFERENCE'
      ProviderFlags = []
      Size = 30
    end
    object cds_MakeSokAvropFROM_WEEK: TIntegerField
      DisplayLabel = 'Fr'#229'n vecka'
      FieldName = 'FROM_WEEK'
      Origin = 'FROM_WEEK'
      ProviderFlags = []
    end
    object cds_MakeSokAvropTO_WEEK: TIntegerField
      DisplayLabel = 'Till vecka'
      FieldName = 'TO_WEEK'
      Origin = 'TO_WEEK'
      ProviderFlags = []
    end
    object cds_MakeSokAvropCUSTOMER: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      ProviderFlags = []
      Size = 80
    end
    object cds_MakeSokAvropAGENT: TStringField
      DisplayLabel = 'Agent'
      FieldName = 'AGENT'
      Origin = 'AGENT'
      ProviderFlags = []
      Size = 80
    end
    object cds_MakeSokAvropDELIVERY_TERM: TStringField
      DisplayLabel = 'Lev.villkor'
      FieldName = 'DELIVERY_TERM'
      Origin = 'DELIVERY_TERM'
      ProviderFlags = []
      Size = 21
    end
    object cds_MakeSokAvropPOSTAL_CODE_DESTINATION: TStringField
      DisplayLabel = 'Postnr, ort'
      FieldName = 'POSTAL_CODE_DESTINATION'
      Origin = 'POSTAL_CODE_DESTINATION'
      ProviderFlags = []
      ReadOnly = True
      Size = 43
    end
    object cds_MakeSokAvropSHIPTO_REFERENCE: TStringField
      DisplayLabel = 'Leveransreferens'
      FieldName = 'SHIPTO_REFERENCE'
      Origin = 'SHIPTO_REFERENCE'
      ProviderFlags = []
      FixedChar = True
      Size = 50
    end
    object cds_MakeSokAvropPreliminaryRequestedPeriod: TStringField
      DisplayLabel = 'Redodag'
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_MakeSokAvropSHIPPER: TStringField
      DisplayLabel = 'Spedit'#246'r'
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      ProviderFlags = []
      Size = 80
    end
    object cds_MakeSokAvropSHIPPINGCOMPANYBOOKINGID: TStringField
      DisplayLabel = 'Spedit'#246'rens ID'
      FieldName = 'SHIPPINGCOMPANYBOOKINGID'
      Origin = 'SHIPPINGCOMPANYBOOKINGID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MakeSokAvropSHIPPERSSHIPDATE: TSQLTimeStampField
      DisplayLabel = 'Spedit'#246'rens datum'
      FieldName = 'SHIPPERSSHIPDATE'
      Origin = 'SHIPPERSSHIPDATE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MakeSokAvropTRANSPORT: TStringField
      DisplayLabel = 'Transport'
      FieldName = 'TRANSPORT'
      Origin = 'TRANSPORT'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cds_MakeSokAvropMARKET_REGION: TStringField
      DisplayLabel = 'Marknad'
      FieldName = 'MARKET_REGION'
      Origin = 'MARKET_REGION'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object cds_MakeSokAvropUKEY: TStringField
      FieldName = 'UKEY'
      Origin = 'UKEY'
      ProviderFlags = []
      ReadOnly = True
      Size = 140
    end
    object cds_MakeSokAvropBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_MakeSokAvropPANIC_NOTE: TStringField
      DisplayLabel = 'Paniknotering'
      FieldName = 'PANIC_NOTE'
      Origin = 'PANIC_NOTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_MakeSokAvropVESSEL: TStringField
      DisplayLabel = 'B'#229't'
      FieldName = 'VESSEL'
      Origin = 'VESSEL'
      ProviderFlags = []
      FixedChar = True
      Size = 50
    end
    object cds_MakeSokAvropETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ProviderFlags = []
    end
    object cds_MakeSokAvropETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ProviderFlags = []
    end
    object cds_MakeSokAvropAM3: TBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
      Precision = 18
      Size = 3
    end
    object cds_MakeSokAvropLEVLO: TFloatField
      DisplayLabel = 'Levererat'
      FieldName = 'LEVLO'
      Origin = 'LEVLO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
    end
    object cds_MakeSokAvropSupplierReference: TStringField
      DisplayLabel = 'Trp.ID'
      FieldName = 'SupplierReference'
      Origin = 'SupplierReference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_MakeSokAvropNoOfSuppliers: TIntegerField
      DisplayLabel = 'Antal lev.'
      FieldName = 'NoOfSuppliers'
      Origin = 'NoOfSuppliers'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_MakeSokAvropPROD_DESC: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PROD_DESC'
      Origin = 'PROD_DESC'
      ProviderFlags = []
      Size = 100
    end
    object cds_MakeSokAvropLENGTH_DESC: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LENGTH_DESC'
      Origin = 'LENGTH_DESC'
      ProviderFlags = []
      FixedChar = True
      Size = 100
    end
    object cds_MakeSokAvropCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = []
    end
    object cds_MakeSokAvropOrderType: TIntegerField
      DisplayLabel = 'Ordertyp'
      FieldName = 'OrderType'
      Origin = 'OrderType'
      ProviderFlags = []
    end
    object cds_MakeSokAvropREST: TFloatField
      DisplayLabel = 'Rest'
      FieldName = 'REST'
      Origin = 'REST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
    end
    object cds_MakeSokAvropShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = []
      Required = True
    end
    object cds_MakeSokAvropVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
      ProviderFlags = []
    end
    object cds_MakeSokAvropLand: TStringField
      FieldName = 'Land'
      Origin = 'Land'
      ProviderFlags = []
      Size = 30
    end
  end
  object cds_SokAvrop: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SA.*,'
      'CASE WHEN SA.AM3_ORDER - SA.AM3_DEL < 0 THEN 0'
      'ELSE'
      'SA.AM3_ORDER - SA.AM3_DEL'
      'END'
      'AS AM3_REST'
      'FROM dbo.SokAvrop SA'
      'WHERE UserID = :UserID')
    Left = 352
    Top = 16
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SokAvropUKEY: TStringField
      FieldName = 'UKEY'
      Origin = 'UKEY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 400
    end
    object cds_SokAvropUSERID: TIntegerField
      FieldName = 'USERID'
      Origin = 'USERID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SokAvropAVROP_STATUS: TStringField
      FieldName = 'AVROP_STATUS'
      Origin = 'AVROP_STATUS'
    end
    object cds_SokAvropLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
    object cds_SokAvropLOADING_LOCATION: TStringField
      FieldName = 'LOADING_LOCATION'
      Origin = 'LOADING_LOCATION'
      Size = 50
    end
    object cds_SokAvropSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 80
    end
    object cds_SokAvropORDER_NO: TStringField
      FieldName = 'ORDER_NO'
      Origin = 'ORDER_NO'
    end
    object cds_SokAvropCUST_REFERENCE: TStringField
      FieldName = 'CUST_REFERENCE'
      Origin = 'CUST_REFERENCE'
      Size = 30
    end
    object cds_SokAvropFROM_WEEK: TIntegerField
      FieldName = 'FROM_WEEK'
      Origin = 'FROM_WEEK'
    end
    object cds_SokAvropTO_WEEK: TIntegerField
      FieldName = 'TO_WEEK'
      Origin = 'TO_WEEK'
    end
    object cds_SokAvropCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 80
    end
    object cds_SokAvropAGENT: TStringField
      FieldName = 'AGENT'
      Origin = 'AGENT'
      Size = 80
    end
    object cds_SokAvropDELIVERY_TERM: TStringField
      FieldName = 'DELIVERY_TERM'
      Origin = 'DELIVERY_TERM'
      Size = 21
    end
    object cds_SokAvropPOSTAL_CODE_DESTINATION: TStringField
      FieldName = 'POSTAL_CODE_DESTINATION'
      Origin = 'POSTAL_CODE_DESTINATION'
      Size = 80
    end
    object cds_SokAvropSHIPTO_REFERENCE: TStringField
      FieldName = 'SHIPTO_REFERENCE'
      Origin = 'SHIPTO_REFERENCE'
      FixedChar = True
      Size = 50
    end
    object cds_SokAvropREADY_DAY: TStringField
      FieldName = 'READY_DAY'
      Origin = 'READY_DAY'
      FixedChar = True
      Size = 30
    end
    object cds_SokAvropSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      Size = 80
    end
    object cds_SokAvropSHIPPINGCOMPANYBOOKINGID: TStringField
      FieldName = 'SHIPPINGCOMPANYBOOKINGID'
      Origin = 'SHIPPINGCOMPANYBOOKINGID'
    end
    object cds_SokAvropSHIPPERSSHIPDATE: TSQLTimeStampField
      FieldName = 'SHIPPERSSHIPDATE'
      Origin = 'SHIPPERSSHIPDATE'
    end
    object cds_SokAvropTRANSPORT: TStringField
      FieldName = 'TRANSPORT'
      Origin = 'TRANSPORT'
      FixedChar = True
      Size = 30
    end
    object cds_SokAvropINVOICENO: TIntegerField
      FieldName = 'INVOICENO'
      Origin = 'INVOICENO'
    end
    object cds_SokAvropMARKET_REGION: TStringField
      FieldName = 'MARKET_REGION'
      Origin = 'MARKET_REGION'
      FixedChar = True
      Size = 10
    end
    object cds_SokAvropBOOKINGNO: TIntegerField
      FieldName = 'BOOKINGNO'
      Origin = 'BOOKINGNO'
    end
    object cds_SokAvropPRODUCT_DESC: TStringField
      FieldName = 'PRODUCT_DESC'
      Origin = 'PRODUCT_DESC'
      Size = 100
    end
    object cds_SokAvropPANIC_NOTE: TStringField
      FieldName = 'PANIC_NOTE'
      Origin = 'PANIC_NOTE'
      Size = 30
    end
    object cds_SokAvropLENGTH_DESC: TStringField
      FieldName = 'LENGTH_DESC'
      Origin = 'LENGTH_DESC'
      Size = 100
    end
    object cds_SokAvropVESSEL: TStringField
      FieldName = 'VESSEL'
      Origin = 'VESSEL'
      Size = 50
    end
    object cds_SokAvropETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
    object cds_SokAvropETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
    end
    object cds_SokAvropAM3_ORDER: TBCDField
      FieldName = 'AM3_ORDER'
      Origin = 'AM3_ORDER'
      Precision = 18
      Size = 3
    end
    object cds_SokAvropSupplierReference: TStringField
      FieldName = 'SupplierReference'
      Origin = 'SupplierReference'
      Size = 50
    end
    object cds_SokAvropNoOfSuppliers: TIntegerField
      FieldName = 'NoOfSuppliers'
      Origin = 'NoOfSuppliers'
    end
    object cds_SokAvropAM3_DEL: TBCDField
      FieldName = 'AM3_DEL'
      Origin = 'AM3_DEL'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cds_SokAvropAM3_REST: TFMTBCDField
      FieldName = 'AM3_REST'
      Origin = 'AM3_REST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 19
      Size = 3
    end
  end
  object cds_Booking: TADQuery
    AfterPost = cds_BookingAfterPost
    MasterSource = ds_SokAvrop
    MasterFields = 'BOOKINGNO'
    Connection = dmsConnector.ADConnection1
    UpdateObject = ADUpdateSQL2
    SQL.Strings = (
      'Select * from dbo.Booking')
    Left = 528
    Top = 24
    object cds_BookingBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingShippingCompanyBookingID: TStringField
      FieldName = 'ShippingCompanyBookingID'
      Origin = 'ShippingCompanyBookingID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingVolumeBooked: TFloatField
      FieldName = 'VolumeBooked'
      Origin = 'VolumeBooked'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingRequestedShipDate: TSQLTimeStampField
      FieldName = 'RequestedShipDate'
      Origin = 'RequestedShipDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingRequestedShipTime: TSQLTimeStampField
      FieldName = 'RequestedShipTime'
      Origin = 'RequestedShipTime'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingShippersShipTime: TSQLTimeStampField
      FieldName = 'ShippersShipTime'
      Origin = 'ShippersShipTime'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingSupplierReference: TStringField
      FieldName = 'SupplierReference'
      Origin = 'SupplierReference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_BookingFreightCost: TFloatField
      FieldName = 'FreightCost'
      Origin = 'FreightCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingFreightCostVolUnit: TIntegerField
      FieldName = 'FreightCostVolUnit'
      Origin = 'FreightCostVolUnit'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingFreightCostCurrency: TIntegerField
      FieldName = 'FreightCostCurrency'
      Origin = 'FreightCostCurrency'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingPreliminaryRequestedPeriod: TStringField
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_BookingLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_BookingInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_BookingNoteForLoadSheet: TMemoField
      FieldName = 'NoteForLoadSheet'
      Origin = 'NoteForLoadSheet'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_BookingVesselOrPort: TStringField
      FieldName = 'VesselOrPort'
      Origin = 'VesselOrPort'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_BookingPanic_Note: TStringField
      FieldName = 'Panic_Note'
      Origin = 'Panic_Note'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object cds_PropsTaBort: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Name = :Name')
    Left = 704
    Top = 24
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PropsTaBortUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsTaBortForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsTaBortVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInWhere]
      Size = 3
    end
    object cds_PropsTaBortLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
      ProviderFlags = [pfInWhere]
    end
    object cds_PropsTaBortName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInWhere]
      Size = 50
    end
  end
  object ADUpdateSQL1: TADUpdateSQL
    Connection = dmsConnector.ADConnection1
    ConnectionName = 'VIS'
    ModifySQL.Strings = (
      'UPDATE booking'
      'SET bookingno = :NEW_BookingNo,'
      '  shippingcompanybookingid = :NEW_ShippingCompanyBookingID,'
      '  shippersshipdate = :NEW_ShippersShipDate,'
      '  supplierreference = :NEW_SupplierReference,'
      '  preliminaryrequestedperiod = :NEW_PreliminaryRequestedPeriod,'
      '  panic_note = :NEW_Panic_Note'
      'WHERE bookingno = :OLD_BookingNo')
    LockSQL.Strings = (
      
        'SELECT bookingno, shippingplanno, voyageno, shippingcompanyno, d' +
        'estinationno, '
      
        '  shippingcompanybookingid, bookingtypeno, volumebooked, volumeu' +
        'nitno, '
      '  requestedshipdate, requestedshiptime, shippersshipdate, '
      
        '  shippersshiptime, supplierreference, freightcost, freightcostv' +
        'olunit, '
      '  freightcostcurrency, sequenceno, createduser, modifieduser, '
      '  datecreated, status, preliminaryrequestedperiod, lotext, '
      '  invoicetext, noteforloadsheet, vesselorport, panic_note'
      'FROM booking'
      'WHERE bookingno = :OLD_BookingNo')
    FetchRowSQL.Strings = (
      
        'SELECT bookingno, shippingplanno, voyageno, shippingcompanyno, d' +
        'estinationno, '
      
        '  shippingcompanybookingid, bookingtypeno, volumebooked, volumeu' +
        'nitno, '
      '  requestedshipdate, requestedshiptime, shippersshipdate, '
      
        '  shippersshiptime, supplierreference, freightcost, freightcostv' +
        'olunit, '
      '  freightcostcurrency, sequenceno, createduser, modifieduser, '
      '  datecreated, status, preliminaryrequestedperiod, lotext, '
      '  invoicetext, noteforloadsheet, vesselorport, panic_note'
      'FROM booking'
      'WHERE bookingno = :BookingNo')
    Left = 160
    Top = 128
  end
  object ADUpdateSQL2: TADUpdateSQL
    Connection = dmsConnector.ADConnection1
    ConnectionName = 'VIS'
    Left = 528
    Top = 80
  end
end
