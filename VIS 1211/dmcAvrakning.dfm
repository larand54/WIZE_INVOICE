object dm_Avrakning: Tdm_Avrakning
  OldCreateOrder = False
  Height = 660
  Width = 1057
  object dsrcArrivingLoads: TDataSource
    DataSet = cdsArrivingLoads
    OnDataChange = dsrcArrivingLoadsDataChange
    Left = 48
    Top = 80
  end
  object dsrcArrivingPackages: TDataSource
    DataSet = cdsArrivingPackages
    Left = 152
    Top = 72
  end
  object dsPaymentHead: TDataSource
    DataSet = cdsPaymentHead
    OnDataChange = dsPaymentHeadDataChange
    Left = 48
    Top = 200
  end
  object dsPaymentLoadList: TDataSource
    DataSet = cdsPaymentLoadList
    Left = 904
    Top = 104
  end
  object dsKP_List: TDataSource
    DataSet = cdsKP_List
    Left = 136
    Top = 576
  end
  object dsPayHead: TDataSource
    DataSet = cdsPayHead
    Left = 392
    Top = 88
  end
  object dsPaymentLoadListII: TDataSource
    DataSet = cdsPaymentLoadListII
    Left = 184
    Top = 200
  end
  object mtLoadNos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mtLoadNosIndex1'
    IndexDefs = <
      item
        Name = 'mtLoadNosIndex1'
        Fields = 'LoadNo'
        Options = [ixPrimary, ixUnique]
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.12.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 840
    Top = 280
    object mtLoadNosLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object mtLoadNosPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
    end
    object mtLoadNosPaymentType: TIntegerField
      FieldName = 'PaymentType'
    end
    object mtLoadNosSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
  end
  object cdsPaymentLoadList: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'PL.PaymentNo'#9#9#9#9'AS'#9'AVRAKNING_NO,'
      'US.INITIALS,'
      ''
      'L.LoadNo'#9#9#9#9'AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9#9'AS '#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'AS'#9'LOAD_DATE,'
      'OC.ClientName'#9#9#9#9'AS'#9'CUSTOMER,'
      ''
      'SUM(PTD.m3Actual)'#9#9'AS '#9'ACT_M3,'
      'SUM(PTD.m3Nominal)'#9#9'AS '#9'NOM_M3,'
      'SUM(LDV.SubSum) '#9#9'AS '#9'VALUE,'
      'SUM(PTD.m3Net)'#9#9#9'AS      NOM_LPM,'
      'LDV.Price '#9#9#9'AS      PRICE,'
      'PG.ActualThicknessMM'#9#9#9'AS'#9'AKT_THICK,'
      'PG.ActualWidthMM'#9#9#9'AS'#9'AKT_WIDTH,'
      'PG.NominalThicknessMM'#9#9#9'AS'#9'NOM_THICK,'
      'PG.NominalWidthMM'#9#9#9'AS'#9'NOM_WIDTH,'
      'PLe.NominalLengthMM   AS NLMM,'
      ''
      'CASE'
      'WHEN PH.TypeOf = 0 THEN (SUM(PTD.m3Nominal) * LDV.Price) * 0.25'
      'WHEN PH.TypeOf = 3 THEN (SUM(PTD.m3Nominal) * LDV.Price) * 0.25'
      ''
      'ELSE'
      ' 0'
      'END AS MOMS_VALUE,'
      ''
      'Mill.ClientCode                         AS      SUPPCODE,'
      'Cust.ClientCode                         AS      CUSTOMER,'
      'Cust.ClientNo                           AS      CUSTOMERNO,'
      'A.CountryNo,'
      'G.GradeName'#9#9#9#9'AS GRADENAME,'
      'PH.Mill_InvoiceNo'#9#9#9'AS MILL_INVOICE_NO'
      ''
      ''
      'FROM  dbo.LastAvrHdr PH'
      'INNER JOIN dbo.LastAvrDtl PL'#9#9#9'ON'#9'PL.PaymentNo'#9#9'= PH.PaymentNo'
      'INNER JOIN dbo.Loads L'#9#9#9#9'ON'#9'L.LoadNo'#9#9'= PL.LoadNo'
      ''
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9'ON'#9'LS.LoadNo'#9#9'= PL.LoadNo'
      ''
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LS.LoadNo'
      #9#9#9#9#9#9'and '#9'LD.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.PackageTypeNo = LD' +
        '.PackageTypeNo'
      
        'INNER JOIN dbo.ProductLength PLe '#9#9'ON'#9'PLe.ProductLengthNo = PTD.' +
        'ProductLengthNo'
      ''
      'LEFT OUTER JOIN dbo.LoadDtlVal LDV'#9'ON LDV.LoadNo = LD.LoadNo'
      #9#9#9#9#9'AND LDV.LoadDetailNo = LD.LoadDetailNo'
      #9#9#9#9#9'AND LDV.ProductLengthNo = PTD.ProductLengthNo'
      ''
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LD.PackageTy' +
        'peNo'
      ''
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      'INNER JOIN dbo.Grade'#9'G'#9#9'ON '#9'G.GradeNo = PR.GradeNo'
      #9#9#9#9#9'AND G.LanguageCode = 1'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9'ON'#9'PG.ProductGroupNo = PR.Produc' +
        'tGroupNo'
      ''
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH'
      ' INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo'#9#9'= CSH.OrderNo'
      ' INNER JOIN dbo.Client OC'#9#9#9#9'ON'#9'OC.ClientNo '#9#9'= O.CustomerNo'
      
        ' LEFT OUTER JOIN dbo.ClientPreference CP'#9#9'ON'#9'CP.ClientNo'#9#9'= O.Cu' +
        'stomerNo'
      '  '#9#9#9#9#9#9#9'AND '#9'CP.RoleType'#9#9'= 1'
      
        ' LEFT OUTER JOIN dbo.Address'#9'A'#9#9#9'ON'#9'A.AddressNo = CP.DefaultBill' +
        'ingAddressNo'
      'ON'#9'CSH.ShippingPlanNo'#9'= LS.ShippingPlanNo'
      ''
      ''
      ''
      ''
      ''
      ''
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= L.SupplierNo'
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= L.CustomerNo'
      ''
      'Left Outer Join dbo.Users'#9'US'#9#9'ON'#9'US.UserID = PH.CreatedUser'
      ''
      ''
      'WHERE PH.PaymentNo = :PaymentNo'
      ''
      ''
      'GROUP BY'
      'US.INITIALS,'
      'L.LoadNo'#9#9#9#9','
      'L.FS'#9#9#9#9#9','
      'L.LoadedDate'#9#9#9#9','
      'OC.ClientName'#9#9#9#9','
      'PG.ActualThicknessMM'#9#9#9','
      'PG.ActualWidthMM'#9#9#9','
      'PG.NominalThicknessMM'#9#9#9','
      'PG.NominalWidthMM,'
      'LDV.Price,'
      ''
      'Mill.ClientCode                         ,'
      'Cust.ClientCode                         ,'
      'Cust.ClientNo                           ,'
      'A.CountryNo'#9#9#9#9','
      'PL.PaymentNo'#9#9#9#9','
      'PH.TypeOf'#9#9#9#9','
      'G.GradeName,'
      'PH.Mill_InvoiceNo,'
      'PLe.NominalLengthMM'
      '')
    Left = 904
    Top = 48
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPaymentLoadListAVRAKNING_NO: TIntegerField
      DisplayLabel = 'Avr'#228'kningsnr'
      FieldName = 'AVRAKNING_NO'
      Origin = 'AVRAKNING_NO'
      Required = True
    end
    object cdsPaymentLoadListINITIALS: TStringField
      DisplayLabel = 'Initialer'
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      FixedChar = True
      Size = 3
    end
    object cdsPaymentLoadListVIS_FS: TIntegerField
      DisplayLabel = 'Vis FS'
      FieldName = 'VIS_FS'
      Origin = 'VIS_FS'
      Required = True
    end
    object cdsPaymentLoadListMILL_FS: TStringField
      DisplayLabel = 'Verk FS'
      FieldName = 'MILL_FS'
      Origin = 'MILL_FS'
      FixedChar = True
    end
    object cdsPaymentLoadListLOAD_DATE: TSQLTimeStampField
      DisplayLabel = 'Utlastad'
      FieldName = 'LOAD_DATE'
      Origin = 'LOAD_DATE'
    end
    object cdsPaymentLoadListCUSTOMER: TStringField
      DisplayLabel = 'Kund(extern)'
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 80
    end
    object cdsPaymentLoadListACT_M3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ACT_M3'
      Origin = 'ACT_M3'
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
    end
    object cdsPaymentLoadListNOM_M3: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'NOM_M3'
      Origin = 'NOM_M3'
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
    end
    object cdsPaymentLoadListVALUE: TFloatField
      DisplayLabel = 'Belopp'
      FieldName = 'VALUE'
      Origin = '[VALUE]'
      ReadOnly = True
      DisplayFormat = '#,###,###.00'
    end
    object cdsPaymentLoadListNOM_LPM: TFloatField
      FieldName = 'NOM_LPM'
      Origin = 'NOM_LPM'
      ReadOnly = True
      DisplayFormat = 'NM1'
    end
    object cdsPaymentLoadListPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object cdsPaymentLoadListAKT_THICK: TFloatField
      DisplayLabel = 'AT'
      FieldName = 'AKT_THICK'
      Origin = 'AKT_THICK'
    end
    object cdsPaymentLoadListAKT_WIDTH: TFloatField
      DisplayLabel = 'AB'
      FieldName = 'AKT_WIDTH'
      Origin = 'AKT_WIDTH'
    end
    object cdsPaymentLoadListNOM_THICK: TFloatField
      DisplayLabel = 'NT'
      FieldName = 'NOM_THICK'
      Origin = 'NOM_THICK'
    end
    object cdsPaymentLoadListNOM_WIDTH: TFloatField
      DisplayLabel = 'NB'
      FieldName = 'NOM_WIDTH'
      Origin = 'NOM_WIDTH'
    end
    object cdsPaymentLoadListNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      Required = True
    end
    object cdsPaymentLoadListMOMS_VALUE: TFloatField
      DisplayLabel = 'Moms'
      FieldName = 'MOMS_VALUE'
      Origin = 'MOMS_VALUE'
      ReadOnly = True
      DisplayFormat = '#,###,###.00'
    end
    object cdsPaymentLoadListSUPPCODE: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SUPPCODE'
      Origin = 'SUPPCODE'
      FixedChar = True
      Size = 3
    end
    object cdsPaymentLoadListCUSTOMER_1: TStringField
      DisplayLabel = 'Kund(intern)'
      FieldName = 'CUSTOMER_1'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 3
    end
    object cdsPaymentLoadListCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
      Origin = 'CUSTOMERNO'
      Required = True
    end
    object cdsPaymentLoadListCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object cdsPaymentLoadListGRADENAME: TStringField
      DisplayLabel = 'KV'
      FieldName = 'GRADENAME'
      Origin = 'GRADENAME'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsPaymentLoadListMILL_INVOICE_NO: TStringField
      FieldName = 'MILL_INVOICE_NO'
      Origin = 'MILL_INVOICE_NO'
      Size = 50
    end
  end
  object cdsArrivingLoads: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    SQL.Strings = (
      'SELECT DISTINCT'
      'isNull(SSP.ShipToInvPointNo,-1)'#9#9'AS'#9'INVPOINTNO,'
      'isNull(IName.CityName, '#39#39')'#9#9'    AS'#9'INVPOINTNAME,'
      'US.INITIALS,'
      'L.LoadNo'#9#9#9#9'                  AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9'                      AS'#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'              AS'#9'LOAD_DATE,'
      'Mill.ClientCode                   AS  SUPPCODE,'
      'Cust.ClientCode                   AS  INT_CUSTOMER,'
      'Cust.ClientNo                     AS  CUSTOMERNO,'
      'Mill.ClientNo                     AS  SUPPLIER_NO,'
      'IsNull(CP.VAT_OnInvoice,0)        AS  SKATTE_UPPLAG,'
      'IsNull((Select Top 1 0 FROM dbo.LoadDtlVal LDV'
      'WHERE LDV.LoadNo = L.LoadNo'
      'AND LDV.SupplierNo = SSP.SupplierNo'
      'AND LDV.Price = 0),1) AS PRISOK,'
      ''
      'isNull((SELECT Top 1 PL2.LoadNo'
      'FROM dbo.LastAvrDtl PL2'
      'WHERE PL2.LoadNo = L.LoadNo'
      'AND PL2.PaymentType = -1),0) AS Krediterad'
      ''
      'FROM'
      ' dbo.Client_LoadingLocation     CLL'
      
        'inner JOIN dbo.City IName'#9#9#9'ON'#9'CLL.PhyInvPointNameNo = IName.Cit' +
        'yNo'
      
        'INNER JOIN dbo.SupplierShippingPlan       SSP   '#9'ON'#9'CLL.PhyInvPo' +
        'intNameNo = SSP.ShipToInvPointNo'
      ''
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.ShippingPlanNo = S' +
        'SP.ShippingPlanNo'
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'LSP.LoadNo '#9#9'= L.LoadNo'
      #9#9#9#9#9#9'AND     L.supplierno '#9#9'= SSP.SUPPLIERno'
      #9#9#9#9#9#9'AND     L.CustomerNo '#9#9'= SSP.CustomerNo'
      ''
      ''
      ''
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= L.SupplierNo'
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= L.CustomerNo'
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9#9'ON'#9'LS.LoadNo'#9#9'= L.LoadNo'
      ''
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH'
      ' INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo'#9#9'= CSH.OrderNo'
      
        ' LEFT OUTER JOIN dbo.ClientPreference CP'#9#9'ON'#9'CP.ClientNo'#9#9'= O.Cu' +
        'stomerNo'
      
        ' LEFT OUTER JOIN dbo.Address'#9'A'#9#9#9'ON'#9'A.AddressNo = CSH.ClientBill' +
        'ingAddressNo'
      'ON'#9'CSH.ShippingPlanNo'#9'= SSP.ShippingPlanNo'
      'Inner Join dbo.Confirmed_Load   CL'
      'Left Outer join dbo.Users'#9'US'#9'ON'#9'US.UserID = cl.CreatedUser'
      'ON CL.Confirmed_LoadNo = L.LoadNo'
      'Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo'
      'AND CR.RoleType = 9'
      'WHERE'
      ''
      'CLL.ClientNo = -1'
      'AND l.SupplierNo <> l.CustomerNo'
      'AND ( CP.VAT_OnInvoice = 0 and A.CountryNo = 9  )'
      'AND'
      'L.LoadNo'
      'NOT IN (SELECT PL.LoadNo'
      'FROM PaymentLoad PL, PaymentHead PH'
      'WHERE'
      'PH.PaymentNo = PL.PaymentNo'
      'AND PH.SupplierNo = 76)'
      ''
      'UNION'
      ''
      'SELECT DISTINCT'
      'isNull(SSP.ShipToInvPointNo,-1)'#9#9'AS'#9'INVPOINTNO,'
      'isNull(IName.CityName, '#39#39')'#9#9'    AS'#9'INVPOINTNAME,'
      'US.INITIALS,'
      'L.LoadNo'#9#9#9#9'                  AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9'                      AS'#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'              AS'#9'LOAD_DATE,'
      'Mill.ClientCode                   AS  SUPPCODE,'
      'Cust.ClientCode                   AS  INT_CUSTOMER,'
      'Cust.ClientNo                     AS  CUSTOMERNO,'
      'Mill.ClientNo                     AS  SUPPLIER_NO,'
      'IsNull(CP.VAT_OnInvoice,0)        AS  SKATTE_UPPLAG,'
      
        'IsNull((Select Top 1 0 FROM dbo.LoadDtlVal LDV'#9'WHERE LDV.LoadNo ' +
        '= L.LoadNo'
      #9#9#9#9#9'AND LDV.Price = 0),1) AS PRISOK,'
      ''
      '          isNull((SELECT Top 1 PL2.LoadNo'
      'FROM dbo.LastAvrDtl PL2'
      'WHERE PL2.LoadNo = L.LoadNo'
      'AND PL2.PaymentType = -1),0) AS Krediterad'
      ''
      'FROM'
      ' dbo.Client_LoadingLocation     CLL'
      
        'inner JOIN dbo.City IName'#9#9#9'ON'#9'CLL.PhyInvPointNameNo = IName.Cit' +
        'yNo'
      
        'INNER JOIN dbo.SupplierShippingPlan       SSP   '#9'ON'#9'CLL.PhyInvPo' +
        'intNameNo = SSP.ShipToInvPointNo'
      ''
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.ShippingPlanNo = S' +
        'SP.ShippingPlanNo'
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'LSP.LoadNo '#9#9'= L.LoadNo'
      #9#9#9#9#9#9'AND     L.supplierno '#9#9'= SSP.SUPPLIERno'
      #9#9#9#9#9#9'AND     L.CustomerNo '#9#9'= SSP.CustomerNo'
      ''
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= L.SupplierNo'
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= L.CustomerNo'
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9#9'ON'#9'LS.LoadNo'#9#9'= L.LoadNo'
      ''
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH'
      ' INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo'#9#9'= CSH.OrderNo'
      
        ' LEFT OUTER JOIN dbo.ClientPreference CP'#9#9'ON'#9'CP.ClientNo'#9#9'= O.Cu' +
        'stomerNo'
      
        ' LEFT OUTER JOIN dbo.Address'#9'A'#9#9#9'ON'#9'A.AddressNo = CSH.ClientBill' +
        'ingAddressNo'
      'ON'#9'CSH.ShippingPlanNo'#9'= SSP.ShippingPlanNo'
      ''
      'Inner Join dbo.Confirmed_Load   CL'
      'Left Outer join dbo.Users'#9'US'#9'ON'#9'US.UserID = cl.CreatedUser'
      'ON CL.Confirmed_LoadNo = L.LoadNo'
      'Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo'
      'AND CR.RoleType = 9'
      'WHERE'
      'CLL.ClientNo = -1'
      ''
      'AND l.SupplierNo <> l.CustomerNo'
      
        'AND (  ( SSP.ObjectType = 1 AND ( CP.VAT_OnInvoice = 0 and A.Cou' +
        'ntryNo = 9  ))'
      'OR (SSP.ObjectType = 0))'
      'AND'
      'L.LoadNo'
      'NOT IN (SELECT PL.LoadNo'
      'FROM dbo.PaymentLoad PL, dbo.PaymentHead PH'
      'WHERE'
      'PH.PaymentNo = PL.PaymentNo'
      'AND PH.SupplierNo = 76)')
    Left = 48
    Top = 32
    object cdsArrivingLoadsINVPOINTNO: TIntegerField
      FieldName = 'INVPOINTNO'
      Origin = 'INVPOINTNO'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsINVPOINTNAME: TStringField
      DisplayLabel = 'Destination'
      FieldName = 'INVPOINTNAME'
      Origin = 'INVPOINTNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsArrivingLoadsINITIALS: TStringField
      DisplayLabel = 'Initialer'
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsVIS_FS: TIntegerField
      DisplayLabel = 'Vis FS'
      FieldName = 'VIS_FS'
      Origin = 'VIS_FS'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsMILL_FS: TStringField
      DisplayLabel = 'Verk FS'
      FieldName = 'MILL_FS'
      Origin = 'MILL_FS'
      ReadOnly = True
      FixedChar = True
    end
    object cdsArrivingLoadsLOAD_DATE: TSQLTimeStampField
      DisplayLabel = 'Utlastad'
      FieldName = 'LOAD_DATE'
      Origin = 'LOAD_DATE'
      ReadOnly = True
    end
    object cdsArrivingLoadsSUPPCODE: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SUPPCODE'
      Origin = 'SUPPCODE'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsINT_CUSTOMER: TStringField
      DisplayLabel = 'Kund(intern)'
      FieldName = 'INT_CUSTOMER'
      Origin = 'INT_CUSTOMER'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsArrivingLoadsCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
      Origin = 'CUSTOMERNO'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsSUPPLIER_NO: TIntegerField
      FieldName = 'SUPPLIER_NO'
      Origin = 'SUPPLIER_NO'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsSKATTE_UPPLAG: TIntegerField
      DisplayLabel = 'Skatteupplag'
      FieldName = 'SKATTE_UPPLAG'
      Origin = 'SKATTE_UPPLAG'
      ReadOnly = True
      Required = True
    end
    object cdsArrivingLoadsPRISOK: TIntegerField
      DisplayLabel = 'Pris OK'
      FieldName = 'PRISOK'
      Origin = 'PRISOK'
      ProviderFlags = []
      Required = True
    end
    object cdsArrivingLoadsKrediterad: TIntegerField
      FieldName = 'Krediterad'
      Origin = 'Krediterad'
      ReadOnly = True
      Required = True
    end
  end
  object cdsArrivingPackages: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'SSP.SupplierNo        AS  SSP_SupplierNo,'
      'LSP.ShippingPlanNo'#9#9'AS'#9'LO,'
      'LD.PackageNo'#9#9#9'    AS'#9'PACKAGE_NO,'
      'LD.SUPPLIERCODE'#9#9#9'  AS '#9'SUPPLIERCODE,'
      'PTD.m3Actual'#9#9#9'    AS '#9'M3_NET,'
      'PTD.m3Nominal'#9#9'      AS '#9'M3_NOM,'
      'PR.ProductDisplayName'#9'AS'#9'PRODUCT_DESCRIPTION,'
      'PTD.NoOfPieces'#9#9'    AS'#9'PCS,'
      'LD.PACKAGEOK'#9#9#9'    AS'#9'PACKAGEOK,'
      'LD.ProblemPackageLog'#9'AS'#9'PACKAGE_LOG,'
      'LSP.LoadNo            AS  LSPLOADNO,'
      'LD.LoadDetailNo       AS  LOAD_DETAILNO,'
      ''
      'LDV.SubSum            ,'
      'LDV.Price             AS  PRICE,'
      'LDV.OldPrice,'
      'PTD.m3Net             AS  NOM_LINEAL_METER,'
      'OC.ClientName         AS'#9'END_CUSTOMER,'
      'PTD.ProductLengthNo   AS  PTDProductLengthNo,'
      'PL.NominalLengthMM'#9'  AS  NLMM,'
      'PL.ActualLengthMM'#9'    AS  ALMM,'
      'LDV.LoadNo,'
      'LDV.LoadDetailNo,'
      'LDV.ProductLengthNo,'
      'LDV.PaymentNo,'
      'LDV.PaymentType,'
      'LDV.SupplierNo'
      ''
      'FROM dbo.LoadShippingPlan LSP'
      'INNER JOIN dbo.Loads L'#9#9#9'ON '#9'L.LoadNo = LSP.LoadNo'
      ''
      'INNER JOIN dbo.Loaddetail LD'#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'and LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan SSP ON SSP.SupplierShipPlanO' +
        'bjectNo = LD.DefsspNo'
      ''
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.PackageTypeNo = LD' +
        '.PackageTypeNo'
      ''
      
        'INNER JOIN dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      ''
      'LEFT OUTER JOIN dbo.LoadDtlVal LDV'#9'ON LDV.LoadNo = LD.LoadNo'
      #9#9#9#9#9'AND LDV.LoadDetailNo = LD.LoadDetailNo'
      #9#9#9#9#9'AND LDV.ProductLengthNo = PTD.ProductLengthNo'
      '          AND LDV.PaymentNo = -1'
      '          AND LDV.SupplierNo = SSP.SupplierNo'
      ''
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LD.PackageTy' +
        'peNo'
      ''
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      
        'LEFT OUTER JOIN dbo.InteralPrice'#9'IP'#9'ON '#9'IP.InteralPriceGroupNo  ' +
        '= PR.InteralPriceGroupNo'
      #9#9#9#9#9'AND'#9'IP.SawMillNo'#9'= L.SupplierNo'
      ''
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH'
      ''
      'INNER JOIN dbo.Client OC'#9#9#9#9'ON'#9'OC.ClientNo '#9#9'= CSH.CustomerNo'
      ''
      'ON'#9'CSH.ShippingPlanNo'#9'= LSP.ShippingPlanNo'
      ''
      'WHERE'
      'LSP.LoadNo = :LoadNo')
    Left = 152
    Top = 16
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsArrivingPackagesSSP_SupplierNo: TIntegerField
      FieldName = 'SSP_SupplierNo'
      Origin = 'SSP_SupplierNo'
      Required = True
    end
    object cdsArrivingPackagesLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object cdsArrivingPackagesPACKAGE_NO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGE_NO'
      Origin = 'PACKAGE_NO'
      Required = True
    end
    object cdsArrivingPackagesSUPPLIERCODE: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SUPPLIERCODE'
      Origin = 'SUPPLIERCODE'
      FixedChar = True
      Size = 3
    end
    object cdsArrivingPackagesM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object cdsArrivingPackagesM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT_DESCRIPTION'
      Origin = 'PRODUCT_DESCRIPTION'
      Size = 100
    end
    object cdsArrivingPackagesPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object cdsArrivingPackagesPACKAGEOK: TIntegerField
      DisplayLabel = 'Paket OK'
      FieldName = 'PACKAGEOK'
      Origin = 'PACKAGEOK'
    end
    object cdsArrivingPackagesPACKAGE_LOG: TStringField
      DisplayLabel = 'Paketlogg'
      FieldName = 'PACKAGE_LOG'
      Origin = 'PACKAGE_LOG'
      Size = 50
    end
    object cdsArrivingPackagesLSPLOADNO: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LSPLOADNO'
      Origin = 'LSPLOADNO'
      Required = True
    end
    object cdsArrivingPackagesLOAD_DETAILNO: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'LOAD_DETAILNO'
      Origin = 'LOAD_DETAILNO'
      Required = True
    end
    object cdsArrivingPackagesSubSum: TFloatField
      DisplayLabel = 'Belopp'
      FieldName = 'SubSum'
      Origin = 'SubSum'
      DisplayFormat = '#.00'
    end
    object cdsArrivingPackagesPRICE: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object cdsArrivingPackagesOldPrice: TFloatField
      DisplayLabel = 'Pris 1'
      FieldName = 'OldPrice'
      Origin = 'OldPrice'
    end
    object cdsArrivingPackagesNOM_LINEAL_METER: TFloatField
      FieldName = 'NOM_LINEAL_METER'
      Origin = 'NOM_LINEAL_METER'
    end
    object cdsArrivingPackagesEND_CUSTOMER: TStringField
      DisplayLabel = 'Kund(extern)'
      FieldName = 'END_CUSTOMER'
      Origin = 'END_CUSTOMER'
      Size = 80
    end
    object cdsArrivingPackagesPTDProductLengthNo: TIntegerField
      FieldName = 'PTDProductLengthNo'
      Origin = 'PTDProductLengthNo'
      Required = True
    end
    object cdsArrivingPackagesNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      Required = True
    end
    object cdsArrivingPackagesALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object cdsArrivingPackagesLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsArrivingPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
    end
    object cdsArrivingPackagesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object cdsArrivingPackagesPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
    end
    object cdsArrivingPackagesPaymentType: TIntegerField
      FieldName = 'PaymentType'
      Origin = 'PaymentType'
    end
    object cdsArrivingPackagesSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
  end
  object cdsPaymentLoads: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsPaymentLoads_Index01'
        Fields = 'LoadNo'
      end>
    IndexName = 'cdsPaymentLoads_Index01'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT * FROM dbo.LastAvrDtl'
      'WHERE PaymentNo = :PaymentNo')
    Left = 280
    Top = 32
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPaymentLoadsPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadsTypeOf: TIntegerField
      FieldName = 'TypeOf'
      Origin = 'TypeOf'
      Required = True
    end
    object cdsPaymentLoadsCreditToPaymentNo: TIntegerField
      FieldName = 'CreditToPaymentNo'
      Origin = 'CreditToPaymentNo'
    end
    object cdsPaymentLoadsPaymentType: TIntegerField
      FieldName = 'PaymentType'
      Origin = 'PaymentType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsPayHead: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT * FROM dbo.LastAvrHdr'
      'WHERE SenderStatus = 0'
      'AND SupplierNo = :SupplierNo'
      'AND CustomerNo = :CustomerNo'
      'AND TypeOf = :TypeOf'
      'AND PaymentType = :PaymentType'
      'AND SenderStatus = :SenderStatus')
    Left = 392
    Top = 32
    ParamData = <
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
        Name = 'TYPEOF'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PAYMENTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SENDERSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPayHeadPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPayHeadSenderStatus: TIntegerField
      FieldName = 'SenderStatus'
      Origin = 'SenderStatus'
    end
    object cdsPayHeadReceiverStatus: TIntegerField
      FieldName = 'ReceiverStatus'
      Origin = 'ReceiverStatus'
    end
    object cdsPayHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsPayHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsPayHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsPayHeadTypeOf: TIntegerField
      FieldName = 'TypeOf'
      Origin = 'TypeOf'
    end
    object cdsPayHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cdsPayHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cdsPayHeadMILL_InvoiceNo: TStringField
      FieldName = 'MILL_InvoiceNo'
      Origin = 'MILL_InvoiceNo'
      Size = 50
    end
    object cdsPayHeadNotering: TStringField
      FieldName = 'Notering'
      Origin = 'Notering'
      Size = 50
    end
    object cdsPayHeadPaymentType: TIntegerField
      FieldName = 'PaymentType'
      Origin = 'PaymentType'
    end
  end
  object cds_ConfLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.Confirmed_Load'
      'SET Confirmed_ShippingPlanNo = :LO_No'
      'Where '
      'Confirmed_LoadNo = :LoadNo')
    Left = 480
    Top = 32
    ParamData = <
      item
        Name = 'LO_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_priceOK: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select top 1 ldv.Price FROM dbo.LoadDtlVal LDV'
      'WHERE LDV.LoadNo = :LoadNo'
      'AND LDV.SupplierNo = :SupplierNo'
      'AND LDV.Price = 0')
    Left = 576
    Top = 32
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_priceOKPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
  end
  object cdsPaymentHead: TFDQuery
    BeforePost = cdsPaymentHeadBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT PH.PaymentNo, PH.MILL_InvoiceNo, PH.DateCreated, PH.Sende' +
        'rStatus, PH.ReceiverStatus, PH.ModifiedUser, PH.TypeOf, PH.Suppl' +
        'ierNo,'
      
        'PH.CreatedUser, PH.CustomerNo, PH.Notering, PH.PaymentType, C.Cl' +
        'ientName AS Leverant'#246'r'
      ''
      'FROM dbo.LastAvrHdr PH'
      'Inner Join dbo.Client C on C.ClientNo = PH.SupplierNo'
      ' WHERE ((PH.SupplierNo = :SupplierNo) OR (0 = :SupplierNo))'
      ' AND ((PH.SenderStatus = :SenderStatus) OR (4 = :SenderStatus))'
      '')
    Left = 48
    Top = 152
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SENDERSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SENDERSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPaymentHeadPaymentNo: TIntegerField
      DisplayLabel = 'Avr'#228'kningsnr'
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentHeadMILL_InvoiceNo: TStringField
      DisplayLabel = 'Verk fakturanr'
      FieldName = 'MILL_InvoiceNo'
      Origin = 'MILL_InvoiceNo'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsPaymentHeadDateCreated: TSQLTimeStampField
      DisplayLabel = 'Registrerad'
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPaymentHeadSenderStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'SenderStatus'
      Origin = 'SenderStatus'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPaymentHeadReceiverStatus: TIntegerField
      FieldName = 'ReceiverStatus'
      Origin = 'ReceiverStatus'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPaymentHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPaymentHeadTypeOf: TIntegerField
      DisplayLabel = 'Moms'
      FieldName = 'TypeOf'
      Origin = 'TypeOf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPaymentHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPaymentHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPaymentHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPaymentHeadNotering: TStringField
      FieldName = 'Notering'
      Origin = 'Notering'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsPaymentHeadPaymentType: TIntegerField
      DisplayLabel = 'Avr'#228'kningstyp'
      FieldName = 'PaymentType'
      Origin = 'PaymentType'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPaymentHeadLeverantr: TStringField
      FieldName = 'Leverant'#246'r'
      Origin = '[Leverant'#246'r]'
      ProviderFlags = []
      Size = 80
    end
    object cdsPaymentHeadCustName: TStringField
      DisplayLabel = 'Kund(intern)'
      FieldKind = fkLookup
      FieldName = 'CustName'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'CustomerNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
  end
  object sq_GetNewLIPno: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      '(Select LIP2.LogicalInventoryPointNo'
      ' From dbo.PhysicalInventoryPoint PIP2'
      
        ' Inner Join dbo.LogicalInventoryPoint  LIP2 ON LIP2.PhysicalInve' +
        'ntoryPointNo = PIP2.PhysicalInventoryPointNo'
      ' WHERE'
      '  PIP2.OwnerNo = :New_OwnerNo'
      ' AND PIP2.PhyInvPointNameNo = PIP.PhyInvPointNameNo'
      
        ' AND LIP2.LogicalInventoryName = LIP.LogicalInventoryName) AS Ne' +
        'w_LogicalInventoryPointNo'
      ''
      'FROM dbo.LogicalInventoryPoint  LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      
        'WHERE  LIP.LogicalInventoryPointNo = :Old_LogicalInventoryPointN' +
        'o')
    Left = 656
    Top = 32
    ParamData = <
      item
        Name = 'NEW_OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OLD_LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetNewLIPnoNew_LogicalInventoryPointNo: TIntegerField
      FieldName = 'New_LogicalInventoryPointNo'
      Origin = 'New_LogicalInventoryPointNo'
      ReadOnly = True
    end
  end
  object cdsPaymentLoadListII: TFDQuery
    CachedUpdates = True
    MasterSource = dsPaymentHead
    MasterFields = 'PaymentNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT DISTINCT'
      'SSP.ShippingPlanNo AS LO,'
      
        'ISNULL(OLA.ResponsibleSeller, ILA.ResponsibleSeller) AS Attester' +
        'FD,'
      'SSP.Objecttype,'
      'PL.PaymentNo'#9#9#9#9'  AS'#9'AVRAKNING_NO,'
      'LDV.LoadNo'#9#9#9#9'    AS'#9'VIS_FS,'
      'LDV.LoadedDate'#9#9#9#9'AS'#9'LOAD_DATE,'
      'SUM(PTD.m3Actual) * PL.PaymentType'#9#9'AS '#9'ACT_M3,'
      'SUM(PTD.m3Nominal) * PL.PaymentType'#9#9'AS '#9'NOM_M3,'
      'SUM(LDV.SubSum)*PL.PaymentType '#9#9'    AS '#9'VALUE,'
      'SUM(PTD.m3Net) * PL.PaymentType       AS  NOM_LPM,'
      'LDV.Price '#9#9#9#9'          AS PRICE,'
      'LDV.OldPrice '#9#9#9#9'        AS Pris1,'
      'PG.ActualThicknessMM'#9#9#9'  AS'#9'AKT_THICK,'
      'PG.ActualWidthMM'#9#9#9'      AS'#9'AKT_WIDTH,'
      'PG.NominalThicknessMM'#9#9#9'  AS'#9'NOM_THICK,'
      'PG.NominalWidthMM'#9#9#9'      AS'#9'NOM_WIDTH,'
      'PLe.NominalLengthMM   '#9#9#9'AS NLMM,'
      'PLe.ActualLengthMM          AS ALMM,'
      ''
      'CASE'
      
        'WHEN PL.TypeOf = 0 THEN (SUM(PTD.m3Nominal) * LDV.Price) * 0.25 ' +
        '* PL.PaymentType'
      
        'WHEN PL.TypeOf = 3 THEN (SUM(PTD.m3Nominal) * LDV.Price) * 0.25 ' +
        '* PL.PaymentType'
      ''
      'ELSE'
      ' 0'
      'END AS MOMS_VALUE,'
      ''
      'G.GradeName'#9#9#9#9'AS GRADENAME,'
      'Mill.SearchName   AS SuppCode,'
      '-- PTD.ProductLengthNo,'
      'P.ProductNo,'
      'PL.PaymentType,'
      'PL.CreditToPaymentNo,'
      'US.INITIALS AS AR_AV'
      ''
      ''
      'FROM  dbo.LastAvrDtl PL'
      'Inner JOIN dbo.LoadDtlVal LDV'#9'ON LDV.LoadNo = PL.LoadNo'
      #9#9#9#9'                    AND LDV.PaymentType = PL.PaymentType'
      #9#9#9#9'                    AND LDV.PaymentNo = PL.PaymentNo'
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= LDV.SupplierNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.PackageTypeNo = LD' +
        'V.PackageTypeNo'
      
        #9#9#9#9#9#9#9'                        AND PTD.ProductLengthNo = LDV.Pro' +
        'ductLengthNo'
      ''
      'Inner Join dbo.LoadDetail LD '#9#9#9'ON '#9'LD.LoadNo = LDV.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.LoadDetailNo = LDV.LoadDetailNo'
      
        'INNER JOIN dbo.SupplierShippingPlan'#9'SSP'#9'ON '#9'SSP.SupplierShipPlan' +
        'ObjectNo = LD.DefSSPNo'
      ''
      
        'Left Outer Join dbo.OrderLineAttest OLA on OLA.OrderNo = ssp.Ord' +
        'erNo'
      #9#9#9#9#9#9#9#9#9#9'and OLA.OrderLineNo = ssp.OrderLineNo'
      ''
      
        'Left Outer Join dbo.IntLOAttest ILA on ILA.SupplierShipPlanObjec' +
        'tNo = ssp.SupplierShipPlanObjectNo'
      ''
      
        'INNER JOIN dbo.ProductLength PLe '#9#9'ON'#9'PLe.ProductLengthNo = LDV.' +
        'ProductLengthNo'
      ''
      ''
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LDV.PackageT' +
        'ypeNo'
      ''
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      'INNER JOIN dbo.Grade'#9'G'#9#9'ON '#9'G.GradeNo = PR.GradeNo'
      #9#9#9#9#9'AND G.LanguageCode = 1'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9'ON'#9'PG.ProductGroupNo = PR.Produc' +
        'tGroupNo'
      ''
      'Inner Join dbo.Confirmed_Load   CL'
      'Left Outer join dbo.Users'#9'US'#9'ON'#9'US.UserID = cl.CreatedUser'
      'ON CL.Confirmed_LoadNo = LD.LoadNo'
      ''
      'WHERE PL.PaymentNo = :PaymentNo'
      ''
      'GROUP BY'
      ''
      'LDV.LoadNo'#9#9#9#9','
      'LDV.LoadedDate'#9#9#9#9','
      'PG.ActualThicknessMM'#9#9#9','
      'PG.ActualWidthMM'#9#9#9','
      'PG.NominalThicknessMM'#9#9#9','
      'PG.NominalWidthMM,'
      'LDV.Price,'
      'PL.PaymentNo'#9#9#9#9','
      'PL.TypeOf'#9#9#9#9','
      'G.GradeName,'
      'PLe.NominalLengthMM,'
      'PLe.ActualLengthMM,'
      'Mill.SearchName,'
      '-- PTD.ProductLengthNo,'
      'P.ProductNo,'
      'PL.PaymentType,'
      'LDV.OldPrice,'
      'PL.CreditToPaymentNo,'
      'SSP.Objecttype,'
      'OLA.ResponsibleSeller,'
      'ILA.ResponsibleSeller,'
      'SSP.ShippingPlanNo,'
      'US.INITIALS')
    Left = 184
    Top = 152
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cdsPaymentLoadListIILO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
    object cdsPaymentLoadListIIAttesterad: TIntegerField
      FieldName = 'Attesterad'
      Origin = 'Attesterad'
      ReadOnly = True
    end
    object cdsPaymentLoadListIIObjecttype: TIntegerField
      DisplayLabel = 'LOtyp'
      FieldName = 'Objecttype'
      Origin = 'Objecttype'
    end
    object cdsPaymentLoadListIIAVRAKNING_NO: TIntegerField
      DisplayLabel = 'Avr'#228'kningsnr'
      FieldName = 'AVRAKNING_NO'
      Origin = 'AVRAKNING_NO'
      Required = True
    end
    object cdsPaymentLoadListIIVIS_FS: TIntegerField
      DisplayLabel = 'Vis FS'
      FieldName = 'VIS_FS'
      Origin = 'VIS_FS'
      Required = True
    end
    object cdsPaymentLoadListIILOAD_DATE: TSQLTimeStampField
      DisplayLabel = 'Utlastad'
      FieldName = 'LOAD_DATE'
      Origin = 'LOAD_DATE'
    end
    object cdsPaymentLoadListIIACT_M3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ACT_M3'
      Origin = 'ACT_M3'
      ReadOnly = True
      DisplayFormat = '#.000'
    end
    object cdsPaymentLoadListIINOM_M3: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'NOM_M3'
      Origin = 'NOM_M3'
      ReadOnly = True
      DisplayFormat = '#.000'
    end
    object cdsPaymentLoadListIIVALUE: TFloatField
      DisplayLabel = 'Belopp'
      FieldName = 'VALUE'
      Origin = '[VALUE]'
      ReadOnly = True
      DisplayFormat = '#,###,###.00'
    end
    object cdsPaymentLoadListIINOM_LPM: TFloatField
      DisplayLabel = 'NM1'
      FieldName = 'NOM_LPM'
      Origin = 'NOM_LPM'
      ReadOnly = True
      DisplayFormat = '#.000'
    end
    object cdsPaymentLoadListIIPRICE: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object cdsPaymentLoadListIIPris1: TFloatField
      DisplayLabel = 'Pris 1'
      FieldName = 'Pris1'
      Origin = 'Pris1'
    end
    object cdsPaymentLoadListIIAKT_THICK: TFloatField
      DisplayLabel = 'AT'
      FieldName = 'AKT_THICK'
      Origin = 'AKT_THICK'
    end
    object cdsPaymentLoadListIIAKT_WIDTH: TFloatField
      DisplayLabel = 'AB'
      FieldName = 'AKT_WIDTH'
      Origin = 'AKT_WIDTH'
    end
    object cdsPaymentLoadListIINOM_THICK: TFloatField
      DisplayLabel = 'NT'
      FieldName = 'NOM_THICK'
      Origin = 'NOM_THICK'
    end
    object cdsPaymentLoadListIINOM_WIDTH: TFloatField
      DisplayLabel = 'NB'
      FieldName = 'NOM_WIDTH'
      Origin = 'NOM_WIDTH'
    end
    object cdsPaymentLoadListIINLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      Required = True
    end
    object cdsPaymentLoadListIIALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object cdsPaymentLoadListIIMOMS_VALUE: TFloatField
      DisplayLabel = 'Moms'
      FieldName = 'MOMS_VALUE'
      Origin = 'MOMS_VALUE'
      ReadOnly = True
      DisplayFormat = '#,###,###.00'
    end
    object cdsPaymentLoadListIIGRADENAME: TStringField
      DisplayLabel = 'Kvalitet'
      FieldName = 'GRADENAME'
      Origin = 'GRADENAME'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsPaymentLoadListIISuppCode: TStringField
      DisplayLabel = 'Verk'
      FieldName = 'SuppCode'
      Origin = 'SuppCode'
      Size = 80
    end
    object cdsPaymentLoadListIIProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cdsPaymentLoadListIIPaymentType: TIntegerField
      FieldName = 'PaymentType'
      Origin = 'PaymentType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentLoadListIICreditToPaymentNo: TIntegerField
      DisplayLabel = 'Kredit f'#246'r avr.nr'
      FieldName = 'CreditToPaymentNo'
      Origin = 'CreditToPaymentNo'
    end
    object cdsPaymentLoadListIIAR_AV: TStringField
      DisplayLabel = 'AR av'
      FieldName = 'AR_AV'
      Origin = 'AR_AV'
      FixedChar = True
      Size = 3
    end
  end
  object sq_Upd_CreditToPaymentNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'UPDATE dbo.LastAvrDtl'
      'Set CreditToPaymentNo = 1'
      'WHERE PaymentNo = :PaymentNo'
      'AND LoadNo = :LoadNo')
    Left = 392
    Top = 176
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_UpdCredInLoadDtlVal: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.LoadDtlVal'
      'Set Credited = 1'
      'WHERE dbo.LoadDtlVal.PaymentNo = :OldPaymentNo'
      'AND dbo.LoadDtlVal.LoadNo = :LoadNo')
    Left = 560
    Top = 176
    ParamData = <
      item
        Name = 'OLDPAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SSP_Exist: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT Distinct SSP.SupplierShipPlanObjectNo'
      ''
      'FROM dbo.SupplierShippingPlan SSP'
      'WHERE'
      'SSP.ShippingPlanNo = :ShippingPlanNo'
      'AND SSP.SupplierNo = :SupplierNo'
      'AND SSP.CustomerNo = :CustomerNo'
      'AND SSP.ObjectType = :ObjectType'
      ''
      'AND SSP.LoadingLocationNo = :LoadingLocationNo'
      'AND SSP.ShipToInvPointNo = :ShipToInvPointNo'
      'AND SSP.ProductNo = :ProductNo'
      'AND SSP.ProductLengthNo = :ProductLengthNo')
    Left = 48
    Top = 280
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
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
        Name = 'OBJECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADINGLOCATIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPTOINVPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTLENGTHNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SSP_ExistSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_Update_SSP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT distinct SSP.CustomerNo, L.LoadNo , SSP.SupplierShipPlanO' +
        'bjectNo, SSP.SupplierNo, SSP.ShippingPlanNo,'
      
        'SSP.ObjectType, SSP.LoadingLocationNo, SSP.ShipToInvPointNo, SSP' +
        '.ProductNo, SSP.ProductLengthNo,'
      'SSP.ModifiedUser'
      ''
      'FROM dbo.LoadShippingPlan LS'
      'Inner Join dbo.Loads L        ON      L.LoadNo = LS.LoadNo'
      'Inner join dbo.LoadDetail LD  ON LD.LoadNo = LS.LoadNo'
      
        '                              AND LD.ShippingPlanNo = LS.Shippin' +
        'gPlanNo'
      '                              '
      
        'Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.SupplierShipPla' +
        'nObjectNo = LD.Defsspno'
      ''
      'WHERE'
      'LS.LoadNo = :LoadNo'
      'AND L.CustomerNo = :CustomerNo')
    Left = 152
    Top = 280
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Update_SSPCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_Update_SSPLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Update_SSPSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      Required = True
    end
    object cds_Update_SSPSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object cds_Update_SSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Update_SSPObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object cds_Update_SSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      Required = True
    end
    object cds_Update_SSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object cds_Update_SSPProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_Update_SSPProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object cds_Update_SSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
  end
  object cds_SSP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT SSP.*'
      'FROM dbo.SupplierShippingPlan SSP'
      'WHERE CustomerNo = :CustomerNo')
    Left = 264
    Top = 280
    ParamData = <
      item
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SSPSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SSPCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
    end
    object cds_SSPShipType: TIntegerField
      FieldName = 'ShipType'
      Origin = 'ShipType'
    end
    object cds_SSPObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object cds_SSPOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
    end
    object cds_SSPOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
    end
    object cds_SSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cds_SSPSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object cds_SSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      Required = True
    end
    object cds_SSPDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
    end
    object cds_SSPPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
    end
    object cds_SSPPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
    object cds_SSPCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object cds_SSPNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
    end
    object cds_SSPPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      Origin = 'PriceUnitNo'
    end
    object cds_SSPVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cds_SSPDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
    end
    object cds_SSPShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
    end
    object cds_SSPStartETDYearWeek: TIntegerField
      FieldName = 'StartETDYearWeek'
      Origin = 'StartETDYearWeek'
    end
    object cds_SSPEndETDYearWeek: TIntegerField
      FieldName = 'EndETDYearWeek'
      Origin = 'EndETDYearWeek'
    end
    object cds_SSPInternalNote: TStringField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
    end
    object cds_SSPProductDescription: TStringField
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      FixedChar = True
      Size = 100
    end
    object cds_SSPLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      FixedChar = True
      Size = 100
    end
    object cds_SSPAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
    end
    object cds_SSPProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object cds_SSPProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
    end
    object cds_SSPActualM3Net: TFloatField
      FieldName = 'ActualM3Net'
      Origin = 'ActualM3Net'
    end
    object cds_SSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object cds_SSPProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_SSPLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      BlobType = ftMemo
    end
    object cds_SSPMinActualLengthMM: TFloatField
      FieldName = 'MinActualLengthMM'
      Origin = 'MinActualLengthMM'
    end
    object cds_SSPMaxActualLengthMM: TFloatField
      FieldName = 'MaxActualLengthMM'
      Origin = 'MaxActualLengthMM'
    end
    object cds_SSPPackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      FixedChar = True
      Size = 10
    end
    object cds_SSPFreightOrderByClientNo: TIntegerField
      FieldName = 'FreightOrderByClientNo'
      Origin = 'FreightOrderByClientNo'
    end
    object cds_SSPSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_SSPCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_SSPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SSPPartnerNo: TIntegerField
      FieldName = 'PartnerNo'
      Origin = 'PartnerNo'
    end
    object cds_SSPProdInstructNo: TIntegerField
      FieldName = 'ProdInstructNo'
      Origin = 'ProdInstructNo'
    end
    object cds_SSPShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
    end
    object cds_SSPPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
    end
    object cds_SSPCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_SSPCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
    end
    object cds_SSPCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
    end
    object cds_SSPLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
    end
    object cds_SSPDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
    end
    object cds_SSPDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_SSPLengthTyp: TStringField
      FieldName = 'LengthTyp'
      Origin = 'LengthTyp'
    end
    object cds_SSPReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 50
    end
    object cds_SSPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_SSPPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
    end
    object cds_SSPPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
    end
    object cds_SSPInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
    end
    object cds_SSPPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object cds_SSPPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object cds_SSPLengthSpec: TStringField
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      Size = 15
    end
  end
  object cds_LS: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select LoadNo, ShippingPlanNo from'
      'dbo.LoadShippingPlan'
      'Where LoadNo = :LoadNo')
    Left = 344
    Top = 280
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LSLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LSShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_LoadDetail: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.LoadDetail'
      'WHERE '
      'LoadNo = :LoadNo')
    Left = 408
    Top = 280
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadDetailLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'OldPackageTypeNo'
      Required = True
    end
    object cds_LoadDetailLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadDetailShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cds_LoadDetailPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object cds_LoadDetailNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      Origin = 'NoOfPackages'
    end
    object cds_LoadDetailPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_LoadDetailSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_LoadDetailPackageOK: TIntegerField
      FieldName = 'PackageOK'
      Origin = 'PackageOK'
    end
    object cds_LoadDetailProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      Origin = 'ProblemPackageLog'
      Size = 50
    end
    object cds_LoadDetailCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LoadDetailModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LoadDetailDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LoadDetailDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
    end
    object cds_LoadDetailOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
    end
    object cds_LoadDetailLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_LoadDetailDefsspno: TIntegerField
      FieldName = 'Defsspno'
      Origin = 'Defsspno'
    end
    object cds_LoadDetailOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
    end
    object cds_LoadDetailOldPackageTypeNo: TIntegerField
      FieldName = 'OldPackageTypeNo'
      Origin = 'OldPackageTypeNo'
    end
  end
  object cdsLastAvr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.LastAvr'
      'WHERE PaymentNo = :PaymentNo')
    Left = 504
    Top = 280
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsLastAvrPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLastAvrLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_IntOrderHead: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * From '
      'dbo.InternalOrderHead')
    Left = 584
    Top = 280
    object cds_IntOrderHeadOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'MiniTextLO'
      Required = True
    end
    object cds_IntOrderHeadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object cds_IntOrderHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_IntOrderHeadDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
    end
    object cds_IntOrderHeadDefaultShipToInvPointNo: TIntegerField
      FieldName = 'DefaultShipToInvPointNo'
      Origin = 'DefaultShipToInvPointNo'
    end
    object cds_IntOrderHeadStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_IntOrderHeadOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      FixedChar = True
      Size = 40
    end
    object cds_IntOrderHeadDefaultDeliveryTermsNo: TIntegerField
      FieldName = 'DefaultDeliveryTermsNo'
      Origin = 'DefaultDeliveryTermsNo'
    end
    object cds_IntOrderHeadDefaultPaymentTermsNo: TIntegerField
      FieldName = 'DefaultPaymentTermsNo'
      Origin = 'DefaultPaymentTermsNo'
    end
    object cds_IntOrderHeadDefaultCurrencyNo: TIntegerField
      FieldName = 'DefaultCurrencyNo'
      Origin = 'DefaultCurrencyNo'
    end
    object cds_IntOrderHeadOrderNote: TMemoField
      FieldName = 'OrderNote'
      Origin = 'OrderNote'
      BlobType = ftMemo
    end
    object cds_IntOrderHeadOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
    end
    object cds_IntOrderHeadProductDisplayFormat: TIntegerField
      FieldName = 'ProductDisplayFormat'
      Origin = 'ProductDisplayFormat'
    end
    object cds_IntOrderHeadDefaultVolumeUnitNo: TIntegerField
      FieldName = 'DefaultVolumeUnitNo'
      Origin = 'DefaultVolumeUnitNo'
    end
    object cds_IntOrderHeadVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
    end
    object cds_IntOrderHeadDefaultPriceUnitNo: TIntegerField
      FieldName = 'DefaultPriceUnitNo'
      Origin = 'DefaultPriceUnitNo'
    end
    object cds_IntOrderHeadDef_StartETDYearWeek: TIntegerField
      FieldName = 'Def_StartETDYearWeek'
      Origin = 'Def_StartETDYearWeek'
    end
    object cds_IntOrderHeadDef_StartETAYearWeek: TIntegerField
      FieldName = 'Def_StartETAYearWeek'
      Origin = 'Def_StartETAYearWeek'
    end
    object cds_IntOrderHeadSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_IntOrderHeadLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
    end
    object cds_IntOrderHeadLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object cds_IntOrderHeadSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_IntOrderHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_IntOrderHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_IntOrderHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_IntOrderHeadLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
    end
    object cds_IntOrderHeadDefaultLIPNo: TIntegerField
      FieldName = 'DefaultLIPNo'
      Origin = 'DefaultLIPNo'
    end
    object cds_IntOrderHeadMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cds_IntOrderHeadPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
    end
    object cds_IntOrderHeadVatExempt: TIntegerField
      FieldName = 'VatExempt'
      Origin = 'VatExempt'
    end
    object cds_IntOrderHeadInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
    end
    object cds_IntOrderHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_IntOrderHeadDef_LoadingLocationNo: TIntegerField
      FieldName = 'Def_LoadingLocationNo'
      Origin = 'Def_LoadingLocationNo'
    end
    object cds_IntOrderHeadAutoPkgCode: TIntegerField
      FieldName = 'AutoPkgCode'
      Origin = 'AutoPkgCode'
    end
    object cds_IntOrderHeadMiniText: TStringField
      FieldName = 'MiniText'
      Origin = 'MiniText'
      Size = 255
    end
    object cds_IntOrderHeadMiniTextFS: TIntegerField
      FieldName = 'MiniTextFS'
      Origin = 'MiniTextFS'
    end
    object cds_IntOrderHeadMiniTextLO: TIntegerField
      FieldName = 'MiniTextLO'
      Origin = 'MiniTextLO'
    end
  end
  object sq_DelConPkgLog: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.Confirmed_Package_Log'
      'Where Confirmed_LoadNo =:LoadNo'
      'AND Confirmed_ShippingPlanNo = :LO_No')
    Left = 72
    Top = 376
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LO_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_ChangeLOnrInPaymentLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'UPDATE dbo.PaymentLoad'
      'SET ShippingPlanNo = :NewLO'
      'FROM dbo.PaymentLoad '
      'WHERE'
      'LoadNo = :LoadNo'
      'AND ShippingPlanNo = :OldLO')
    Left = 72
    Top = 432
    ParamData = <
      item
        Name = 'NEWLO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OLDLO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Pkgs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'PN.LogicalInventoryPointNo , PN.PackageNo, PN.SupplierCode'
      ''
      'FROM       dbo.LoadDetail              LD'
      ''
      
        '         INNER JOIN dbo.PackageNumber  PN ON   PN.PackageNo = LD' +
        '.PackageNo'
      
        '                                        AND PN.SupplierCode = LD' +
        '.SupplierCode'
      ''
      'WHERE      LD.LoadNo = :LoadNo'
      '')
    Left = 168
    Top = 376
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgsLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cds_PkgsPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object cds_PkgsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object sq_LO_Type: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT distinct   ISNULL(SSP.ObjectType,-1) AS ObjectType,  OH.O' +
        'rderType'
      ''
      'FROM dbo.Loads L'
      
        '        Inner Join  dbo.LoadShippingPlan LS ON      LS.LoadNo = ' +
        'L.LoadNo'
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LS.ShippingPlanNo'
      ''
      ''
      'Left Outer Join dbo.CustomerShippingPlanHeader CSH '
      ' Inner Join dbo.Orders OH ON OH.OrderNo = CSH.OrderNo'
      'ON CSH.ShippingPlanNo = SSP.ShippingPlanNo'
      ''
      'WHERE'
      'L.LoadNo = :LoadNo'
      'AND L.CustomerNo = :CustomerNo'
      '')
    Left = 256
    Top = 376
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LO_TypeObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ReadOnly = True
      Required = True
    end
    object sq_LO_TypeOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
    end
  end
  object sq_LoadPackages: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'PN.LogicalInventoryPointNo , PN.PackageNo, PN.SupplierCode'
      ''
      'FROM       dbo.LoadDetail              LD'
      ''
      
        '         INNER JOIN dbo.PackageNumber  PN ON   PN.PackageNo = LD' +
        '.PackageNo'
      
        '                                        AND PN.SupplierCode = LD' +
        '.SupplierCode'
      ''
      'WHERE      LD.LoadNo = :LoadNo'
      '')
    Left = 344
    Top = 376
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LoadPackagesLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object sq_LoadPackagesPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object sq_LoadPackagesSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object sq_NoOfLoads_LO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT  count(distinct Ld.LoadNo)AS NoOfLoads'
      ''
      'FROM dbo.LoadShippingPlan LS'
      
        'Inner Join dbo.Loads L                          ON      L.LoadNo' +
        ' = LS.LoadNo'
      'Inner join dbo.LoadDetail LD ON LD.LoadNo = LS.LoadNo'
      'AND LD.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      
        'Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.ShippingPlanNo ' +
        '= LS.ShippingPlanNo'
      'AND SSP.SupplierShipPlanObjectNo = LD.DefsspNo'
      'AND SSP.SupplierNo = L.SupplierNo'
      'AND SSP.LoadingLocationNo = LS.LoadingLocationNo'
      'AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo'
      ''
      'Where LS.ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 256
    Top = 456
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_NoOfLoads_LONoOfLoads: TIntegerField
      FieldName = 'NoOfLoads'
      Origin = 'NoOfLoads'
      ReadOnly = True
    end
  end
  object cds_LoadRemAvr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.LoadRemAvr')
    Left = 440
    Top = 376
    object cds_LoadRemAvrLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadRemAvrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LoadRemAvrCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
  end
  object cds_LoadHead: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    Left = 536
    Top = 368
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object cds_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object cds_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object cds_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
    end
    object cds_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
    object cds_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      Origin = 'MsgToShipper'
      BlobType = ftMemo
    end
    object cds_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
      BlobType = ftMemo
    end
    object cds_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      Origin = 'PackageEntryOption'
    end
    object cds_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      Origin = 'LocalShippingCompanyNo'
    end
    object cds_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      Origin = 'LocalLoadingLocation'
    end
    object cds_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      Origin = 'LocalDestinationNo'
    end
    object cds_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LoadHeadFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cds_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
      Origin = 'OriginalSupplierNo'
    end
    object cds_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      BlobType = ftMemo
    end
    object cds_LoadHeadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      Origin = 'LoadOK'
    end
    object cds_LoadHeadLoadAR: TIntegerField
      FieldName = 'LoadAR'
      Origin = 'LoadAR'
    end
    object cds_LoadHeadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
  end
  object sq_UpdateLoadDtlVal: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.LoadDtlVal '
      'Set PaymentNo = :SetPaymentNo,'
      'PaymentType = :PaymentType'
      'FROM dbo.LoadDtlVal'
      'Inner Join dbo.LastAvr LA on LA.LoadNo = LoadDtlVal.LoadNo'
      'WHERE LA.PaymentNo = :PaymentNo'
      'AND LoadDtlVal.PaymentNo = :LoadDtlValPaymentNo'
      'AND LoadDtlVal.SupplierNo = :SupplierNo')
    Left = 640
    Top = 368
    ParamData = <
      item
        Name = 'SETPAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PAYMENTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADDTLVALPAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsLoadDtlVal: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.LoadDtlVal(LoadNo, LoadDetailNo, ProductLengthNo' +
        ', Price, Subsum, NM3,'
      
        'PaymentNo, PaymentType, PackageTypeNo, SupplierNo, LoadedDate, O' +
        'ldPrice, Verk_FS, Credited)'
      
        'Select LoadNo, LoadDetailNo, ProductLengthNo, Price, Subsum, NM3' +
        ', :NewPaymentNo, :NewPaymentType,'
      'PackageTypeNo, SupplierNo, LoadedDate, OldPrice, Verk_FS, null'
      'FROM dbo.LoadDtlVal'
      'WHERE LoadDtlVal.PaymentNo = :OldPaymentNo'
      'AND LoadDtlVal.LoadNo = :LoadNo')
    Left = 760
    Top = 360
    ParamData = <
      item
        Name = 'NEWPAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NEWPAYMENTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OLDPAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_UpdLoadDtlValSingleLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.LoadDtlVal'
      'Set PaymentNo = :SetPaymentNo,'
      'PaymentType = :PaymentType'
      'FROM dbo.LoadDtlVal'
      'WHERE LoadDtlVal.PaymentNo = :PaymentNo'
      'AND LoadDtlVal.LoadNo = :LoadNo'
      'AND LoadDtlVal.SupplierNo = :SupplierNo')
    Left = 760
    Top = 448
    ParamData = <
      item
        Name = 'SETPAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PAYMENTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelLastAvr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.LastAvr'
      'WHERE PaymentNo = :PaymentNo'
      'AND LoadNo = :LoadNo')
    Left = 864
    Top = 360
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_IsLoadCredited: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT L.PaymentNo FROM '
      'dbo.LastAvrDtl L '
      'WHERE L.LoadNo = :LoadNo'
      'AND L.PaymentType = :PaymentType')
    Left = 960
    Top = 360
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PAYMENTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsLoadCreditedPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_SummaryLoadDetails: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      'PG.ActualThicknessMM'#9#9#9'        AS AKT_THICK,'
      'PG.ActualWidthMM'#9#9#9'            AS AKT_WIDTH,'
      'SUM(PTD.m3Actual)'#9#9#9'            AS ACT_M3,'
      'SUM(PTD.LinealMeterNominalLength)'#9'AS NOM_LPM,'
      'PG.NominalThicknessMM'#9#9#9'        AS NOM_THICK,'
      'PG.NominalWidthMM'#9#9#9'            AS NOM_WIDTH,'
      'SUM(PTD.m3Nominal)'#9#9#9'          AS NOM_M3,'
      'L.LoadNo'#9#9#9#9'                  AS LOADNO,'
      'ip.PRICE,'
      'LD.ShippingPlanNo'#9#9#9'            AS LO,'
      'Gr.GradeName                      AS GRADENAME'
      ''
      'FROM dbo.Loads L'
      ''
      'INNER JOIN dbo.LoadShippingPlan LSP'#9'ON LSP.LoadNo = L.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9'ON LD.LoadNo = LSP.LoadNo'
      
        '                                        and LD.ShippingPlanNo = ' +
        'LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan SSP ON SSP.SupplierShipPlanO' +
        'bjectNo = LD.Defsspno'
      ''
      
        'Left Outer JOIN dbo.IntPrice IP ON IP.SupplierShipPlanObjectNo =' +
        ' SSP.SupplierShipPlanObjectNo'
      'AND IP.PaymentNo = :PaymentNo'
      ''
      
        'INNER JOIN dbo.PkgType_Invoice'#9'PTD'#9#9'ON '#9'PTD.PackageTypeNo'#9'= LD.P' +
        'ackageTypeNo'
      ''
      #9#9#9#9#9#9#9#9#9'AND PTD.LoadNo  =  LD.LoadNo'
      #9#9#9#9#9#9#9#9#9'AND PTD.LoadDetailNo  =  LD.LoadDetailNo'
      ''
      
        'INNER JOIN dbo.PackageType '#9#9'PT'#9#9'ON '#9'PT.PackageTypeNo'#9'= PTD.Pack' +
        'ageTypeNo'
      ''
      'INNER JOIN dbo.Product'#9#9#9'PR'#9#9'ON'#9'PR.ProductNo'#9#9'= PT.ProductNo'
      
        'INNER JOIN dbo.Grade                    Gr              ON      ' +
        'Gr.GradeNo              = PR.GradeNo'
      
        '                                                                ' +
        '             AND '#9'Gr.LanguageCode'#9#9'= 1'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9#9#9'ON'#9'PG.ProductGroupNo'#9'= PR.Prod' +
        'uctGroupNo'
      ''
      'WHERE'
      'L.LoadNo = :LoadNo'
      ''
      ''
      'GROUP BY'
      'PG.ActualThicknessMM'#9#9#9','
      'PG.ActualWidthMM'#9#9#9','
      'PG.NominalThicknessMM'#9#9#9','
      'PG.NominalWidthMM'#9#9#9','
      'L.LoadNo'#9#9#9#9','
      'IP.Price                                ,'
      'LD.ShippingPlanNo                       ,'
      'Gr.GradeName,'
      'SSP.SupplierNo')
    Left = 960
    Top = 424
    ParamData = <
      item
        Name = 'PAYMENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SummaryLoadDetailsAKT_THICK: TFloatField
      FieldName = 'AKT_THICK'
      Origin = 'AKT_THICK'
    end
    object sq_SummaryLoadDetailsAKT_WIDTH: TFloatField
      FieldName = 'AKT_WIDTH'
      Origin = 'AKT_WIDTH'
    end
    object sq_SummaryLoadDetailsACT_M3: TFMTBCDField
      FieldName = 'ACT_M3'
      Origin = 'ACT_M3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_SummaryLoadDetailsNOM_LPM: TFMTBCDField
      FieldName = 'NOM_LPM'
      Origin = 'NOM_LPM'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_SummaryLoadDetailsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
      Origin = 'NOM_THICK'
    end
    object sq_SummaryLoadDetailsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
      Origin = 'NOM_WIDTH'
    end
    object sq_SummaryLoadDetailsNOM_M3: TFMTBCDField
      FieldName = 'NOM_M3'
      Origin = 'NOM_M3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_SummaryLoadDetailsLOADNO: TIntegerField
      FieldName = 'LOADNO'
      Origin = 'LOADNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_SummaryLoadDetailsPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object sq_SummaryLoadDetailsLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
    object sq_SummaryLoadDetailsGRADENAME: TStringField
      FieldName = 'GRADENAME'
      Origin = 'GRADENAME'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object sq_INS_PaymentLoad_ST: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'INSERT INTO PaymentLoad_ST (PaymentNo, LoadNo, ProductNo, Produc' +
        'tLengthNo, Price)'
      ''
      'SELECT DISTINCT'
      'PL.PaymentNo,'
      'PL.LoadNo,'
      'PT.PRODUCTNO,'
      'PTD.ProductLengthNo,'
      'IP.Price'
      ''
      'FROM dbo.PaymentLoad PL'
      ''
      'INNER JOIN dbo.LoadDetail LD'#9#9'ON LD.LoadNo = PL.LoadNo'
      
        '                                        and LD.ShippingPlanNo = ' +
        'PL.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.SupplierShippingPlan SSP ON SSP.SupplierShipPlanO' +
        'bjectNo = LD.Defsspno'
      ''
      
        'INNER JOIN dbo.PackageTypeDetail '#9#9'PTD'#9#9'ON '#9'PTD.PackageTypeNo'#9'= ' +
        'LD.PackageTypeNo'
      ''
      
        'INNER JOIN dbo.PackageType '#9#9'PT'#9#9'ON '#9'PT.PackageTypeNo'#9'= PTD.Pack' +
        'ageTypeNo'
      ''
      'INNER JOIN dbo.Product'#9#9#9'PR'#9#9'ON'#9'PR.ProductNo'#9#9'= PT.ProductNo'
      ''
      
        'Left Outer JOIN dbo.IntPrice IP ON IP.SupplierShipPlanObjectNo =' +
        ' SSP.SupplierShipPlanObjectNo'
      'AND IP.PaymentNo = PL.PaymentNo'
      ''
      'WHERE'
      'PL.PaymentNo = :PaymentNo')
    Left = 960
    Top = 480
    ParamData = <
      item
        Name = 'PAYMENTNO'
        ParamType = ptInput
      end>
  end
  object sq_FindAvr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'PL.PaymentNo'#9#9#9#9'AS'#9'AVRAKNING_NO,'
      'OC.ClientName'#9#9#9#9'AS'#9'Verk,'
      'OC.ClientNo                           AS      VerkNo'
      ''
      ''
      'FROM  dbo.LastAvrHdr PH'
      'INNER JOIN dbo.LastAvrDtl PL'#9#9#9'ON'#9'PL.PaymentNo'#9#9'= PH.PaymentNo'
      'INNER JOIN dbo.Client OC'#9#9#9#9'ON'#9'OC.ClientNo '#9#9'= PH.SupplierNo'
      ''
      'WHERE PL.LoadNo = :LoadNo')
    Left = 592
    Top = 584
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_FindAvrAVRAKNING_NO: TIntegerField
      FieldName = 'AVRAKNING_NO'
      Origin = 'AVRAKNING_NO'
      Required = True
    end
    object sq_FindAvrVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object sq_FindAvrVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      Required = True
    end
  end
  object cdsConfirmed_Load: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select * '
      'from dbo.Confirmed_Load')
    Left = 784
    Top = 40
    object cdsConfirmed_LoadConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
      Origin = 'Confirmed_LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConfirmed_LoadConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
      Origin = 'Confirmed_ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConfirmed_LoadNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
      Origin = 'NewLoadNo'
    end
    object cdsConfirmed_LoadNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
      Origin = 'NewShippingPlanNo'
    end
    object cdsConfirmed_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsConfirmed_LoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsConfirmed_LoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
  end
  object cdsKP_List: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'VIS_KP_LIST'
    Left = 136
    Top = 520
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@CustomerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
