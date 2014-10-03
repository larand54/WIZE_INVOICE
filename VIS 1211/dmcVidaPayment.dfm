object dmcPayment: TdmcPayment
  OldCreateOrder = False
  Left = 240
  Top = 102
  Height = 846
  Width = 1012
  object sq_ArrivingLoads: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT'
      'isNull(SSP.ShipToInvPointNo,-1)'#9#9'AS'#9'INVPOINTNO,'
      'isNull(IName.CityName, '#39#39')'#9#9'AS'#9'INVPOINTNAME,'
      'US.INITIALS,'
      'L.LoadNo'#9#9#9#9'AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9'        AS'#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'AS'#9'LOAD_DATE,'
      'Mill.ClientCode                         AS      SUPPCODE,'
      'Cust.ClientCode                         AS      INT_CUSTOMER,'
      'Cust.ClientNo                         AS      CUSTOMERNO,'
      'Mill.ClientNo                      AS       SUPPLIER_NO,'
      
        'IsNull(CP.VAT_OnInvoice,0)                        AS      SKATTE' +
        '_UPPLAG'
      'FROM '
      ' dbo.Client_LoadingLocation     CLL '#9
      
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
      '--dbo.Loads L '
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= L.SupplierNo'
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= L.CustomerNo'
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9#9'ON'#9'LS.LoadNo'#9#9'= L.LoadNo'
      
        '--INNER JOIN dbo.SupplierShippingPlan SSP'#9#9'ON '#9'SSP.ShippingPlanN' +
        'o'#9'= LS.ShippingPlanNo'
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
      '--L.SupplierNo = 232'
      'CLL.ClientNo = 76'
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
      'isNull(IName.CityName, '#39#39')'#9#9'AS'#9'INVPOINTNAME,'
      'US.INITIALS,'
      'L.LoadNo'#9#9#9#9'AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9'        AS'#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'AS'#9'LOAD_DATE,'
      'Mill.ClientCode                         AS      SUPPCODE,'
      'Cust.ClientCode                         AS      INT_CUSTOMER,'
      'Cust.ClientNo                         AS      CUSTOMERNO,'
      'Mill.ClientNo                      AS       SUPPLIER_NO,'
      
        'IsNull(CP.VAT_OnInvoice,0)                        AS      SKATTE' +
        '_UPPLAG'
      'FROM '
      ' dbo.Client_LoadingLocation     CLL '#9
      
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
      '--dbo.Loads L '
      'INNER JOIN dbo.Client Mill'#9#9#9'ON'#9'Mill.ClientNo '#9#9'= L.SupplierNo'
      'INNER JOIN dbo.Client Cust'#9#9#9'ON'#9'Cust.ClientNo '#9#9'= L.CustomerNo'
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9#9'ON'#9'LS.LoadNo'#9#9'= L.LoadNo'
      
        '--INNER JOIN dbo.SupplierShippingPlan SSP'#9#9'ON '#9'SSP.ShippingPlanN' +
        'o'#9'= LS.ShippingPlanNo'
      ''
      
        '--LEFT OUTER JOIN dbo.InternalOrderHead'#9'IOH'#9#9'ON'#9'IOH.ShippingPlan' +
        'No = SSP.ShippingPlanNo'
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
      'CLL.ClientNo = 76'
      ''
      'AND l.SupplierNo <> l.CustomerNo'
      
        'AND (  ( SSP.ObjectType = 1 AND ( CP.VAT_OnInvoice = 0 and A.Cou' +
        'ntryNo = 9  ))'
      'OR (SSP.ObjectType = 0))'
      'AND'
      'L.LoadNo'
      'NOT IN (SELECT PL.LoadNo'
      'FROM PaymentLoad PL, PaymentHead PH'
      'WHERE'
      'PH.PaymentNo = PL.PaymentNo'
      'AND PH.SupplierNo = 76)'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 56
    Top = 32
    object sq_ArrivingLoadsINITIALS: TStringField
      FieldName = 'INITIALS'
      Size = 3
    end
    object sq_ArrivingLoadsVIS_FS: TIntegerField
      FieldName = 'VIS_FS'
    end
    object sq_ArrivingLoadsMILL_FS: TStringField
      FieldName = 'MILL_FS'
    end
    object sq_ArrivingLoadsLOAD_DATE: TSQLTimeStampField
      FieldName = 'LOAD_DATE'
    end
    object sq_ArrivingLoadsSUPPCODE: TStringField
      FieldName = 'SUPPCODE'
      Size = 3
    end
    object sq_ArrivingLoadsINT_CUSTOMER: TStringField
      FieldName = 'INT_CUSTOMER'
      Size = 3
    end
    object sq_ArrivingLoadsCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
    end
    object sq_ArrivingLoadsSKATTE_UPPLAG: TIntegerField
      FieldName = 'SKATTE_UPPLAG'
    end
    object sq_ArrivingLoadsSUPPLIER_NO: TIntegerField
      FieldName = 'SUPPLIER_NO'
    end
    object sq_ArrivingLoadsINVPOINTNO: TIntegerField
      FieldName = 'INVPOINTNO'
    end
    object sq_ArrivingLoadsINVPOINTNAME: TStringField
      FieldName = 'INVPOINTNAME'
      Size = 50
    end
  end
  object dspArrivingLoads: TDataSetProvider
    DataSet = sq_ArrivingLoads
    Left = 56
    Top = 80
  end
  object cdsArrivingLoads: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspArrivingLoads'
    Left = 56
    Top = 136
    object cdsArrivingLoadsINITIALS: TStringField
      FieldName = 'INITIALS'
      Size = 3
    end
    object cdsArrivingLoadsVIS_FS: TIntegerField
      FieldName = 'VIS_FS'
    end
    object cdsArrivingLoadsMILL_FS: TStringField
      FieldName = 'MILL_FS'
    end
    object cdsArrivingLoadsLOAD_DATE: TSQLTimeStampField
      FieldName = 'LOAD_DATE'
    end
    object cdsArrivingLoadsSUPPCODE: TStringField
      FieldName = 'SUPPCODE'
      Size = 3
    end
    object cdsArrivingLoadsINT_CUSTOMER: TStringField
      FieldName = 'INT_CUSTOMER'
      Size = 3
    end
    object cdsArrivingLoadsCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
    end
    object cdsArrivingLoadsSKATTE_UPPLAG: TIntegerField
      FieldName = 'SKATTE_UPPLAG'
    end
    object cdsArrivingLoadsSUPPLIER_NO: TIntegerField
      FieldName = 'SUPPLIER_NO'
    end
    object cdsArrivingLoadsINVPOINTNAME: TStringField
      FieldName = 'INVPOINTNAME'
      Size = 50
    end
  end
  object dsrcArrivingLoads: TDataSource
    DataSet = cdsArrivingLoads
    OnDataChange = dsrcArrivingLoadsDataChange
    Left = 56
    Top = 184
  end
  object sq_ArrivingPackages: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LOADNO'
        ParamType = ptInput
        Value = 102
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'SSP.SupplierNo,'
      'SSP.CustomerPrice,'
      'LSP.ShippingPlanNo'#9#9'AS'#9'LO,'
      'LD.PackageNo'#9#9#9'AS'#9'PACKAGE_NO,'
      'LD.SUPPLIERCODE'#9#9#9'AS '#9'SUPPLIERCODE,'
      'P.Totalm3Actual'#9#9#9'AS '#9'M3_NET,'
      'P.Totalm3Nominal'#9#9'AS '#9'M3_NOM,'
      'PR.ProductDisplayName'#9#9'AS'#9'PRODUCT_DESCRIPTION,'
      'P.TotalNoOfPieces'#9#9'AS'#9'PCS,'
      'LD.PACKAGEOK'#9#9#9'AS'#9'PACKAGEOK,'
      'LD.ProblemPackageLog'#9#9'AS'#9'PACKAGE_LOG,'
      'LSP.LoadNo                      AS      LOADNO,'
      'LD.LoadDetailNo                 AS      LOAD_DETAILNO,'
      'CASE'
      'WHEN :Lista = 1 THEN P.Totalm3Nominal * SSP.CustomerPrice'
      'ELSE'
      'P.Totalm3Nominal * IP.Price'
      'END AS VALUE,'
      ''
      'CASE'
      'WHEN :Lista = 1 THEN SSP.CustomerPrice'
      'ELSE IP.Price                        '
      'END AS      PRICE,'
      'P.m3Net                    AS      NOM_LINEAL_METER,'
      'OC.ClientName'#9#9#9#9'AS'#9'END_CUSTOMER'
      ''
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
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = LD.PackageTy' +
        'peNo'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      
        'LEFT OUTER JOIN dbo.InteralPrice'#9'IP'#9'ON '#9'IP.InteralPriceGroupNo  ' +
        '= PR.InteralPriceGroupNo'
      #9#9#9#9#9'AND'#9'IP.SawMillNo'#9'= L.SupplierNo'
      ''
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH'
      ''
      ' INNER JOIN dbo.Client OC'#9#9#9#9'ON'#9'OC.ClientNo '#9#9'= CSH.CustomerNo'
      ''
      'ON'#9'CSH.ShippingPlanNo'#9'= LSP.ShippingPlanNo'
      ''
      ''
      'WHERE'
      'LSP.LoadNo = :LoadNo'
      ''
      'GROUP BY'
      'LSP.ShippingPlanNo'#9#9','
      'LD.PackageNo'#9#9#9','
      'LD.SUPPLIERCODE'#9#9#9','
      'P.Totalm3Actual'#9#9#9','
      'P.Totalm3Nominal'#9#9','
      'PR.ProductDisplayName'#9#9','
      'P.TotalNoOfPieces'#9#9','
      'LD.PACKAGEOK'#9#9#9','
      'LD.ProblemPackageLog'#9#9','
      'LSP.LoadNo                      ,'
      'LD.LoadDetailNo                 ,'
      'IP.Price                        ,'
      'P.m3Net                         ,'
      'OC.ClientName, SSP.CustomerPrice, SSP.SupplierNo'
      ''
      ' '
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 160
    Top = 32
    object sq_ArrivingPackagesLO: TIntegerField
      FieldName = 'LO'
    end
    object sq_ArrivingPackagesPACKAGE_NO: TIntegerField
      FieldName = 'PACKAGE_NO'
    end
    object sq_ArrivingPackagesSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      Size = 5
    end
    object sq_ArrivingPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_ArrivingPackagesPRODUCT_DESCRIPTION: TStringField
      FieldName = 'PRODUCT_DESCRIPTION'
      Size = 100
    end
    object sq_ArrivingPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_ArrivingPackagesPACKAGEOK: TWordField
      FieldName = 'PACKAGEOK'
    end
    object sq_ArrivingPackagesPACKAGE_LOG: TStringField
      FieldName = 'PACKAGE_LOG'
      Size = 50
    end
    object sq_ArrivingPackagesLOADNO: TIntegerField
      FieldName = 'LOADNO'
    end
    object sq_ArrivingPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_ArrivingPackagesLOAD_DETAILNO: TIntegerField
      FieldName = 'LOAD_DETAILNO'
    end
    object sq_ArrivingPackagesVALUE: TFloatField
      FieldName = 'VALUE'
    end
    object sq_ArrivingPackagesPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sq_ArrivingPackagesNOM_LINEAL_METER: TFloatField
      FieldName = 'NOM_LINEAL_METER'
    end
    object sq_ArrivingPackagesEND_CUSTOMER: TStringField
      FieldName = 'END_CUSTOMER'
      Size = 80
    end
  end
  object dspArrivingPackages: TDataSetProvider
    DataSet = sq_ArrivingPackages
    Left = 160
    Top = 80
  end
  object cdsArrivingPackages: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspArrivingPackages'
    Left = 160
    Top = 136
    object cdsArrivingPackagesLO: TIntegerField
      FieldName = 'LO'
    end
    object cdsArrivingPackagesPACKAGE_NO: TIntegerField
      FieldName = 'PACKAGE_NO'
    end
    object cdsArrivingPackagesSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      Size = 5
    end
    object cdsArrivingPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      DisplayFormat = '#.000'
    end
    object cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField
      FieldName = 'PRODUCT_DESCRIPTION'
      Size = 100
    end
    object cdsArrivingPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object cdsArrivingPackagesPACKAGEOK: TSmallintField
      FieldName = 'PACKAGEOK'
    end
    object cdsArrivingPackagesPACKAGE_LOG: TStringField
      FieldName = 'PACKAGE_LOG'
      Size = 50
    end
    object cdsArrivingPackagesLOADNO: TIntegerField
      FieldName = 'LOADNO'
    end
    object cdsArrivingPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      DisplayFormat = '#.000'
    end
    object cdsArrivingPackagesLOAD_DETAILNO: TIntegerField
      FieldName = 'LOAD_DETAILNO'
    end
    object cdsArrivingPackagesVALUE: TFloatField
      FieldName = 'VALUE'
      DisplayFormat = '#.00'
    end
    object cdsArrivingPackagesPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsArrivingPackagesNOM_LINEAL_METER: TFloatField
      FieldName = 'NOM_LINEAL_METER'
    end
    object cdsArrivingPackagesEND_CUSTOMER: TStringField
      FieldName = 'END_CUSTOMER'
      Size = 80
    end
  end
  object dsrcArrivingPackages: TDataSource
    DataSet = cdsArrivingPackages
    Left = 160
    Top = 184
  end
  object sq_PaymentHead: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SenderStatus'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT PH.PaymentNo, PH.MILL_InvoiceNo, PH.DateCreated, PH.Sende' +
        'rStatus, PH.ReceiverStatus, PH.ModifiedUser, PH.TypeOf, PH.Suppl' +
        'ierNo,'
      'PH.CreatedUser, PH.CustomerNo,'
      'SUM(PL.Totalm3Nominal)'#9#9#9'AS'#9'NM3,'
      'SUM(PL.Totalm3Nominal * PL.Price)'#9'AS'#9'V'#196'RDE'
      ''
      'FROM PAYMENTHEAD PH'
      'INNER JOIN PaymentLoad PL'#9#9#9'ON'#9'PL.PaymentNo'#9#9'= PH.PaymentNo'
      ' WHERE PH.SupplierNo = :SupplierNo'
      ' AND PH.SenderStatus = :SenderStatus'
      ''
      
        'GROUP BY PH.PaymentNo, PH.MILL_InvoiceNo, PH.DateCreated, PH.Sen' +
        'derStatus, PH.ReceiverStatus, PH.ModifiedUser, PH.TypeOf, PH.Sup' +
        'plierNo,'
      'PH.CreatedUser, PH.CustomerNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 56
    Top = 248
    object sq_PaymentHeadPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentHeadSenderStatus: TIntegerField
      FieldName = 'SenderStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PaymentHeadReceiverStatus: TIntegerField
      FieldName = 'ReceiverStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PaymentHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PaymentHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PaymentHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PaymentHeadTypeOf: TIntegerField
      FieldName = 'TypeOf'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PaymentHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PaymentHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PaymentHeadMILL_InvoiceNo: TStringField
      FieldName = 'MILL_InvoiceNo'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_PaymentHeadNM3: TFloatField
      FieldName = 'NM3'
      ProviderFlags = []
    end
    object sq_PaymentHeadVRDE: TFloatField
      FieldName = 'V'#196'RDE'
      ProviderFlags = []
    end
  end
  object sq_PaymentLoads: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PaymentLoad')
    SQLConnection = dmsConnector.SQLConnection
    Left = 272
    Top = 40
    object sq_PaymentLoadsPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentLoadsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentLoadsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_PaymentLoadsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_PaymentLoadsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_PaymentLoadsTypeOf: TIntegerField
      FieldName = 'TypeOf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentLoadsPrice: TFloatField
      FieldName = 'Price'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentLoadsTotalm3Nominal: TFloatField
      FieldName = 'Totalm3Nominal'
    end
    object sq_PaymentLoadsTotalm3Actual: TFloatField
      FieldName = 'Totalm3Actual'
    end
    object sq_PaymentLoadsTotalLinealMeterNominalLength: TFloatField
      FieldName = 'TotalLinealMeterNominalLength'
    end
    object sq_PaymentLoadsACT_Thick: TFloatField
      FieldName = 'ACT_Thick'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentLoadsACT_Width: TFloatField
      FieldName = 'ACT_Width'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentLoadsNOM_Thick: TFloatField
      FieldName = 'NOM_Thick'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentLoadsNOM_Width: TFloatField
      FieldName = 'NOM_Width'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentLoadsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PaymentLoadsGradeName: TStringField
      FieldName = 'GradeName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
  end
  object dspPaymentHead: TDataSetProvider
    DataSet = sq_PaymentHead
    UpdateMode = upWhereChanged
    Left = 56
    Top = 296
  end
  object dspPaymentLoads: TDataSetProvider
    DataSet = sq_PaymentLoads
    UpdateMode = upWhereChanged
    Left = 272
    Top = 88
  end
  object cdsPaymentHead: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPaymentHead'
    OnReconcileError = cdsPaymentHeadReconcileError
    Left = 56
    Top = 344
    object cdsPaymentHeadPaymentNo: TIntegerField
      DisplayLabel = 'AVR'#196'KNINGSNR'
      FieldName = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentHeadSenderStatus: TIntegerField
      DisplayLabel = 'STATUS'
      FieldName = 'SenderStatus'
    end
    object cdsPaymentHeadReceiverStatus: TIntegerField
      FieldName = 'ReceiverStatus'
    end
    object cdsPaymentHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsPaymentHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cdsPaymentHeadDateCreated: TSQLTimeStampField
      DisplayLabel = 'SKAPAD'
      FieldName = 'DateCreated'
    end
    object cdsPaymentHeadTypeOf: TIntegerField
      FieldName = 'TypeOf'
    end
    object cdsPaymentHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cdsPaymentHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cdsPaymentHeadMILL_InvoiceNo: TStringField
      DisplayLabel = 'VERKETS FAKTURANR'
      FieldName = 'MILL_InvoiceNo'
      Size = 50
    end
    object cdsPaymentHeadCustName: TStringField
      DisplayLabel = 'INTERNKUND'
      FieldKind = fkLookup
      FieldName = 'CustName'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'CustomerNo'
      Size = 80
      Lookup = True
    end
    object cdsPaymentHeadNM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###.000'
    end
    object cdsPaymentHeadVRDE: TFloatField
      FieldName = 'V'#196'RDE'
      DisplayFormat = '#,###,###,###.00'
    end
  end
  object cdsPaymentLoads: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPaymentLoads'
    OnReconcileError = cdsPaymentLoadsReconcileError
    Left = 272
    Top = 136
    object cdsPaymentLoadsPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentLoadsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentLoadsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsPaymentLoadsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cdsPaymentLoadsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsPaymentLoadsTypeOf: TIntegerField
      FieldName = 'TypeOf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentLoadsPrice: TFloatField
      FieldName = 'Price'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentLoadsTotalm3Nominal: TFloatField
      FieldName = 'Totalm3Nominal'
    end
    object cdsPaymentLoadsTotalm3Actual: TFloatField
      FieldName = 'Totalm3Actual'
    end
    object cdsPaymentLoadsTotalLinealMeterNominalLength: TFloatField
      FieldName = 'TotalLinealMeterNominalLength'
    end
    object cdsPaymentLoadsACT_Thick: TFloatField
      FieldName = 'ACT_Thick'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentLoadsACT_Width: TFloatField
      FieldName = 'ACT_Width'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentLoadsNOM_Thick: TFloatField
      FieldName = 'NOM_Thick'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentLoadsNOM_Width: TFloatField
      FieldName = 'NOM_Width'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentLoadsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaymentLoadsGradeName: TStringField
      FieldName = 'GradeName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
  end
  object dsPaymentHead: TDataSource
    DataSet = cdsPaymentHead
    OnDataChange = dsPaymentHeadDataChange
    Left = 56
    Top = 392
  end
  object sq_PaymentLoadList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PaymentNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'PL.PaymentNo'#9#9#9#9'AS'#9'AVRAKNING_NO,'
      'US.INITIALS,'
      ''
      'L.LoadNo'#9#9#9#9'AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9#9'AS '#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'AS'#9'LOAD_DATE,'
      'OC.ClientName'#9#9#9#9'AS'#9'CUSTOMER,'
      'PL.ACT_Thick'#9#9#9#9'AS'#9'AKT_THICK,'
      'PL.ACT_Width'#9#9#9#9'AS'#9'AKT_WIDTH,'
      'SUM(PL.Totalm3Actual)'#9#9#9'AS'#9'ACT_M3,'
      'SUM(PL.TotalLinealMeterNominalLength)'#9'AS'#9'NOM_LPM,'
      'PL.NOM_Thick'#9#9#9#9'AS'#9'NOM_THICK,'
      'PL.NOM_Width'#9#9#9#9'AS'#9'NOM_WIDTH,'
      'SUM(PL.Totalm3Nominal)'#9#9#9'AS'#9'NOM_M3,'
      'PL.Price'#9#9#9#9'AS '#9'PRICE,'
      'SUM(PL.Totalm3Nominal * PL.Price)'#9'AS'#9'VALUE,'
      'CASE'
      'WHEN PH.TypeOf = 0 THEN SUM(PL.Totalm3Nominal * PL.Price) * 0.25'
      'WHEN PH.TypeOf = 3 THEN SUM(PL.Totalm3Nominal * PL.Price) * 0.25'
      ''
      'ELSE'
      ' 0'
      'END AS MOMS_VALUE,'
      ''
      'Mill.ClientCode                         AS      SUPPCODE,'
      'Cust.ClientCode                         AS      CUSTOMER,'
      'Cust.ClientNo                           AS      CUSTOMERNO,'
      'A.CountryNo,'
      'PL.GradeName'#9#9#9'AS GRADENAME,'
      'PH.Mill_InvoiceNo'#9#9'AS MILL_INVOICE_NO'
      ''
      ''
      'FROM  PaymentHead PH'
      'INNER JOIN PaymentLoad PL'#9#9#9'ON'#9'PL.PaymentNo'#9#9'= PH.PaymentNo'
      'INNER JOIN dbo.Loads L'#9#9#9#9'ON'#9'L.LoadNo'#9#9'= PL.LoadNo'
      ''
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9'ON'#9'LS.LoadNo'#9#9'= PL.LoadNo'
      '--'#9#9#9#9#9#9'AND '#9'LS.ShippingPlanNo'#9'= PL.ShippingPlanNo'
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
      'Left Outer Join dbo.Users'#9'US'#9'ON'#9'US.UserID = PH.CreatedUser'
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
      'PL.ACT_Thick'#9#9#9#9','
      'PL.ACT_Width'#9#9#9#9','
      'PL.NOM_Thick'#9#9#9#9','
      'PL.NOM_Width'#9#9#9#9','
      'PL.Price'#9#9#9#9','
      ''
      'Mill.ClientCode                         ,'
      'Cust.ClientCode                         ,'
      'Cust.ClientNo                           ,'
      'A.CountryNo'#9#9#9#9','
      'PL.PaymentNo'#9#9#9#9','
      'PH.TypeOf'#9#9#9#9','
      'PL.GradeName'#9#9#9#9','
      'PH.Mill_InvoiceNo'
      ''
      ''
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 856
    Top = 40
    object sq_PaymentLoadListAVRAKNING_NO: TIntegerField
      FieldName = 'AVRAKNING_NO'
    end
    object sq_PaymentLoadListINITIALS: TStringField
      FieldName = 'INITIALS'
      Size = 3
    end
    object sq_PaymentLoadListVIS_FS: TIntegerField
      FieldName = 'VIS_FS'
    end
    object sq_PaymentLoadListMILL_FS: TStringField
      FieldName = 'MILL_FS'
    end
    object sq_PaymentLoadListLOAD_DATE: TSQLTimeStampField
      FieldName = 'LOAD_DATE'
    end
    object sq_PaymentLoadListCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object sq_PaymentLoadListAKT_THICK: TFloatField
      FieldName = 'AKT_THICK'
    end
    object sq_PaymentLoadListAKT_WIDTH: TFloatField
      FieldName = 'AKT_WIDTH'
    end
    object sq_PaymentLoadListACT_M3: TFloatField
      FieldName = 'ACT_M3'
    end
    object sq_PaymentLoadListNOM_LPM: TFloatField
      FieldName = 'NOM_LPM'
    end
    object sq_PaymentLoadListNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object sq_PaymentLoadListNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object sq_PaymentLoadListNOM_M3: TFloatField
      FieldName = 'NOM_M3'
    end
    object sq_PaymentLoadListPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sq_PaymentLoadListVALUE: TFloatField
      FieldName = 'VALUE'
    end
    object sq_PaymentLoadListMOMS_VALUE: TFloatField
      FieldName = 'MOMS_VALUE'
    end
    object sq_PaymentLoadListSUPPCODE: TStringField
      FieldName = 'SUPPCODE'
      Size = 3
    end
    object sq_PaymentLoadListCUSTOMER_1: TStringField
      FieldName = 'CUSTOMER_1'
      Size = 3
    end
    object sq_PaymentLoadListCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
    end
    object sq_PaymentLoadListCountryNo: TIntegerField
      FieldName = 'CountryNo'
    end
    object sq_PaymentLoadListGRADENAME: TStringField
      FieldName = 'GRADENAME'
      Size = 50
    end
    object sq_PaymentLoadListMILL_INVOICE_NO: TStringField
      FieldName = 'MILL_INVOICE_NO'
      Size = 50
    end
  end
  object dsPaymentLoadList: TDataSource
    DataSet = cdsPaymentLoadList
    Left = 856
    Top = 184
  end
  object dspPaymentLoadList: TDataSetProvider
    DataSet = sq_PaymentLoadList
    Left = 856
    Top = 88
  end
  object cdsPaymentLoadList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPaymentLoadList'
    Left = 856
    Top = 136
    object cdsPaymentLoadListAVRAKNING_NO: TIntegerField
      FieldName = 'AVRAKNING_NO'
    end
    object cdsPaymentLoadListINITIALS: TStringField
      DisplayLabel = 'INI'
      FieldName = 'INITIALS'
      Size = 3
    end
    object cdsPaymentLoadListVIS_FS: TIntegerField
      DisplayLabel = 'VISFS'
      FieldName = 'VIS_FS'
    end
    object cdsPaymentLoadListMILL_FS: TStringField
      DisplayLabel = 'MILLFS'
      FieldName = 'MILL_FS'
    end
    object cdsPaymentLoadListLOAD_DATE: TSQLTimeStampField
      DisplayLabel = 'UTLASTAD'
      FieldName = 'LOAD_DATE'
    end
    object cdsPaymentLoadListCUSTOMER: TStringField
      DisplayLabel = 'EXTERNKUND'
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object cdsPaymentLoadListAKT_THICK: TFloatField
      DisplayLabel = 'AT'
      FieldName = 'AKT_THICK'
    end
    object cdsPaymentLoadListAKT_WIDTH: TFloatField
      DisplayLabel = 'AB'
      FieldName = 'AKT_WIDTH'
    end
    object cdsPaymentLoadListACT_M3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ACT_M3'
      DisplayFormat = '#,###,###.000'
    end
    object cdsPaymentLoadListNOM_LPM: TFloatField
      DisplayLabel = 'NM1'
      FieldName = 'NOM_LPM'
    end
    object cdsPaymentLoadListNOM_THICK: TFloatField
      DisplayLabel = 'NT'
      FieldName = 'NOM_THICK'
    end
    object cdsPaymentLoadListNOM_WIDTH: TFloatField
      DisplayLabel = 'NB'
      FieldName = 'NOM_WIDTH'
    end
    object cdsPaymentLoadListNOM_M3: TFloatField
      FieldName = 'NOM_M3'
      DisplayFormat = '#######.000'
    end
    object cdsPaymentLoadListPRICE: TFloatField
      DisplayLabel = 'PRIS'
      FieldName = 'PRICE'
      DisplayFormat = '#######.00'
    end
    object cdsPaymentLoadListVALUE: TFloatField
      DisplayLabel = 'V'#196'RDE'
      FieldName = 'VALUE'
      DisplayFormat = '#,###,###.00'
    end
    object cdsPaymentLoadListMOMS_VALUE: TFloatField
      DisplayLabel = 'MOMS'
      FieldName = 'MOMS_VALUE'
      DisplayFormat = '#,###,###.00'
    end
    object cdsPaymentLoadListSUPPCODE: TStringField
      DisplayLabel = 'LEV.KOD'
      FieldName = 'SUPPCODE'
      Size = 3
    end
    object cdsPaymentLoadListCUSTOMER_1: TStringField
      DisplayLabel = 'INTERNKUND'
      FieldName = 'CUSTOMER_1'
      Size = 3
    end
    object cdsPaymentLoadListCUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
    end
    object cdsPaymentLoadListCountryNo: TIntegerField
      FieldName = 'CountryNo'
    end
    object cdsPaymentLoadListGRADENAME: TStringField
      DisplayLabel = 'KV'
      FieldName = 'GRADENAME'
      Size = 50
    end
    object cdsPaymentLoadListMILL_INVOICE_NO: TStringField
      FieldName = 'MILL_INVOICE_NO'
      Size = 50
    end
  end
  object sp_ShippingInstruction: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftTimeStamp
        Name = 'StartDate'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EndDate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CarrierNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'Vis_ShipInstruction'
    Left = 552
    Top = 40
  end
  object dspShippingInstruction: TDataSetProvider
    DataSet = sp_ShippingInstruction
    Left = 552
    Top = 88
  end
  object cdsShippingInstruction: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspShippingInstruction'
    Left = 552
    Top = 136
    object cdsShippingInstructionETD: TSQLTimeStampField
      FieldName = 'ETD'
      Required = True
    end
    object cdsShippingInstructionCarrierName: TStringField
      FieldName = 'CarrierName'
      Required = True
      Size = 50
    end
    object cdsShippingInstructionINVOICENO: TIntegerField
      FieldName = 'INVOICENO'
      Required = True
    end
    object cdsShippingInstructionBOOKING: TStringField
      FieldName = 'BOOKING'
      Required = True
    end
    object cdsShippingInstructionCONTAINERNO: TStringField
      FieldName = 'CONTAINERNO'
      Required = True
      Size = 50
    end
    object cdsShippingInstructionWEIGHT: TIntegerField
      FieldName = 'WEIGHT'
      Required = True
    end
    object cdsShippingInstructionPKGS: TIntegerField
      FieldName = 'PKGS'
      Required = True
    end
    object cdsShippingInstructionSEK_VALUE: TFloatField
      FieldName = 'SEK_VALUE'
      Required = True
      DisplayFormat = '#.00'
    end
    object cdsShippingInstructionM3_ACT: TFloatField
      FieldName = 'M3_ACT'
      Required = True
      DisplayFormat = '#.000'
    end
    object cdsShippingInstructionLOADNO: TIntegerField
      FieldName = 'LOADNO'
      Required = True
    end
  end
  object dsShippingInstruction: TDataSource
    DataSet = cdsShippingInstruction
    Left = 552
    Top = 184
  end
  object sp_KP_List: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'VIS_KP_LIST'
    Left = 656
    Top = 40
  end
  object dspKP_List: TDataSetProvider
    DataSet = sp_KP_List
    OnGetTableName = dspKP_ListGetTableName
    Left = 656
    Top = 88
  end
  object cdsKP_List: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKP_List'
    OnReconcileError = cdsKP_ListReconcileError
    Left = 656
    Top = 136
    object cdsKP_ListORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
    end
    object cdsKP_ListPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object cdsKP_ListLENGTH: TStringField
      FieldName = 'LENGTH'
      Size = 100
    end
    object cdsKP_ListDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Size = 50
    end
    object cdsKP_ListSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Size = 80
    end
    object cdsKP_ListLO: TIntegerField
      FieldName = 'LO'
    end
    object cdsKP_ListVOLUME: TFloatField
      FieldName = 'VOLUME'
      DisplayFormat = '#.000'
    end
    object cdsKP_ListVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Size = 10
    end
    object cdsKP_ListDELIVERED: TFloatField
      FieldName = 'DELIVERED'
      DisplayFormat = '#.000'
    end
    object cdsKP_ListBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#.000'
    end
    object cdsKP_ListM3NOM_DELIVERED: TFloatField
      FieldName = 'M3NOM_DELIVERED'
      DisplayFormat = '#.000'
    end
    object cdsKP_ListSHIPMENT: TStringField
      FieldName = 'SHIPMENT'
      Size = 21
    end
    object cdsKP_ListREADYDATE: TStringField
      FieldName = 'READYDATE'
      Size = 30
    end
    object cdsKP_ListETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object cdsKP_ListVESSEL: TStringField
      FieldName = 'VESSEL'
      Size = 50
    end
    object cdsKP_ListETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object cdsKP_ListINVOICENO: TIntegerField
      FieldName = 'INVOICENO'
    end
    object cdsKP_ListCLIENT: TStringField
      FieldName = 'CLIENT'
      Size = 80
    end
    object cdsKP_ListSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsKP_ListORDERNO: TIntegerField
      FieldName = 'ORDERNO'
    end
    object cdsKP_ListCLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
    end
    object cdsKP_ListDESTINATIONNO: TIntegerField
      FieldName = 'DESTINATIONNO'
    end
    object cdsKP_ListUNIQUERECORDNO: TIntegerField
      FieldName = 'UNIQUERECORDNO'
    end
    object cdsKP_ListSALESREGIONNO: TIntegerField
      FieldName = 'SALESREGIONNO'
    end
    object cdsKP_ListORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
    end
  end
  object dsKP_List: TDataSource
    DataSet = cdsKP_List
    Left = 656
    Top = 184
  end
  object sq_PayHead: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PaymentNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PAYMENTHEAD'
      'WHERE PaymentNo = :PaymentNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 360
    Top = 40
    object sq_PayHeadPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PayHeadSenderStatus: TSmallintField
      FieldName = 'SenderStatus'
    end
    object sq_PayHeadReceiverStatus: TSmallintField
      FieldName = 'ReceiverStatus'
    end
    object sq_PayHeadCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
    end
    object sq_PayHeadModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
    end
    object sq_PayHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_PayHeadTypeOf: TSmallintField
      FieldName = 'TypeOf'
    end
    object sq_PayHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object sq_PayHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_PayHeadMILL_InvoiceNo: TStringField
      FieldName = 'MILL_InvoiceNo'
      Size = 50
    end
  end
  object dspPayHead: TDataSetProvider
    DataSet = sq_PayHead
    UpdateMode = upWhereChanged
    Left = 360
    Top = 88
  end
  object cdsPayHead: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPayHead'
    OnReconcileError = cdsPaymentHeadReconcileError
    Left = 360
    Top = 136
    object cdsPayHeadPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
    end
    object cdsPayHeadSenderStatus: TSmallintField
      FieldName = 'SenderStatus'
    end
    object cdsPayHeadReceiverStatus: TSmallintField
      FieldName = 'ReceiverStatus'
    end
    object cdsPayHeadCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
    end
    object cdsPayHeadModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
    end
    object cdsPayHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsPayHeadTypeOf: TSmallintField
      FieldName = 'TypeOf'
    end
    object cdsPayHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cdsPayHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cdsPayHeadMILL_InvoiceNo: TStringField
      FieldName = 'MILL_InvoiceNo'
      Size = 50
    end
  end
  object dsPayHead: TDataSource
    DataSet = cdsPayHead
    Left = 360
    Top = 184
  end
  object sq_SummaryLoadDetails: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PaymentNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
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
      'SSP.SupplierNo'
      ''
      ''
      ' '
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 272
    Top = 248
    object sq_SummaryLoadDetailsAKT_THICK: TFloatField
      FieldName = 'AKT_THICK'
    end
    object sq_SummaryLoadDetailsAKT_WIDTH: TFloatField
      FieldName = 'AKT_WIDTH'
    end
    object sq_SummaryLoadDetailsACT_M3: TFloatField
      FieldName = 'ACT_M3'
    end
    object sq_SummaryLoadDetailsNOM_LPM: TFloatField
      FieldName = 'NOM_LPM'
    end
    object sq_SummaryLoadDetailsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object sq_SummaryLoadDetailsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object sq_SummaryLoadDetailsNOM_M3: TFloatField
      FieldName = 'NOM_M3'
    end
    object sq_SummaryLoadDetailsLOADNO: TIntegerField
      FieldName = 'LOADNO'
    end
    object sq_SummaryLoadDetailsPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sq_SummaryLoadDetailsLO: TIntegerField
      FieldName = 'LO'
    end
    object sq_SummaryLoadDetailsGRADENAME: TStringField
      FieldName = 'GRADENAME'
      Size = 30
    end
  end
  object sq_SSP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SSP.*'
      ''
      'FROM dbo.SupplierShippingPlan SSP'
      'WHERE CustomerNo = :CustomerNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 440
    Top = 256
    object sq_SSPSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SSPCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
    object sq_SSPShipType: TIntegerField
      FieldName = 'ShipType'
    end
    object sq_SSPObjectType: TIntegerField
      FieldName = 'ObjectType'
    end
    object sq_SSPOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object sq_SSPOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
    end
    object sq_SSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object sq_SSPSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object sq_SSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object sq_SSPDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
    end
    object sq_SSPPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object sq_SSPPrice: TFloatField
      FieldName = 'Price'
    end
    object sq_SSPCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object sq_SSPNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
    end
    object sq_SSPPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
    end
    object sq_SSPVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object sq_SSPDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
    end
    object sq_SSPShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
    end
    object sq_SSPStartETDYearWeek: TIntegerField
      FieldName = 'StartETDYearWeek'
    end
    object sq_SSPEndETDYearWeek: TIntegerField
      FieldName = 'EndETDYearWeek'
    end
    object sq_SSPInternalNote: TStringField
      FieldName = 'InternalNote'
    end
    object sq_SSPProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object sq_SSPLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 100
    end
    object sq_SSPAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
    end
    object sq_SSPProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_SSPProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object sq_SSPActualM3Net: TFloatField
      FieldName = 'ActualM3Net'
    end
    object sq_SSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
    end
    object sq_SSPProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_SSPLOText: TMemoField
      FieldName = 'LOText'
      BlobType = ftMemo
    end
    object sq_SSPMinActualLengthMM: TFloatField
      FieldName = 'MinActualLengthMM'
    end
    object sq_SSPMaxActualLengthMM: TFloatField
      FieldName = 'MaxActualLengthMM'
    end
    object sq_SSPPackageCode: TStringField
      FieldName = 'PackageCode'
      Size = 10
    end
    object sq_SSPFreightOrderByClientNo: TIntegerField
      FieldName = 'FreightOrderByClientNo'
    end
    object sq_SSPSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object sq_SSPCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_SSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_SSPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SSPPartnerNo: TIntegerField
      FieldName = 'PartnerNo'
    end
    object sq_SSPProdInstructNo: TIntegerField
      FieldName = 'ProdInstructNo'
    end
    object sq_SSPShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
    end
    object sq_SSPPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
    end
    object sq_SSPCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_SSPCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
    end
    object sq_SSPCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
    end
    object sq_SSPLO_No: TIntegerField
      FieldName = 'LO_No'
    end
    object sq_SSPDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
    end
  end
  object dsp_SSP: TDataSetProvider
    DataSet = sq_SSP
    OnGetTableName = dsp_SSPGetTableName
    Left = 440
    Top = 304
  end
  object cds_SSP: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cds_SSPIndex1'
        Fields = 'SupplierShipPlanObjectNo'
      end>
    IndexName = 'cds_SSPIndex1'
    Params = <>
    ProviderName = 'dsp_SSP'
    StoreDefs = True
    OnReconcileError = cds_SSPReconcileError
    Left = 440
    Top = 352
    object cds_SSPSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_SSPCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
    object cds_SSPShipType: TIntegerField
      FieldName = 'ShipType'
    end
    object cds_SSPObjectType: TIntegerField
      FieldName = 'ObjectType'
    end
    object cds_SSPOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object cds_SSPOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
    end
    object cds_SSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cds_SSPSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cds_SSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object cds_SSPDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
    end
    object cds_SSPPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
    end
    object cds_SSPPrice: TFloatField
      FieldName = 'Price'
    end
    object cds_SSPCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cds_SSPNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
    end
    object cds_SSPPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
    end
    object cds_SSPVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object cds_SSPDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
    end
    object cds_SSPShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
    end
    object cds_SSPStartETDYearWeek: TIntegerField
      FieldName = 'StartETDYearWeek'
    end
    object cds_SSPEndETDYearWeek: TIntegerField
      FieldName = 'EndETDYearWeek'
    end
    object cds_SSPInternalNote: TStringField
      FieldName = 'InternalNote'
    end
    object cds_SSPProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object cds_SSPLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 100
    end
    object cds_SSPAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
    end
    object cds_SSPProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_SSPProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cds_SSPActualM3Net: TFloatField
      FieldName = 'ActualM3Net'
    end
    object cds_SSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
    end
    object cds_SSPProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_SSPLOText: TMemoField
      FieldName = 'LOText'
      BlobType = ftMemo
    end
    object cds_SSPMinActualLengthMM: TFloatField
      FieldName = 'MinActualLengthMM'
    end
    object cds_SSPMaxActualLengthMM: TFloatField
      FieldName = 'MaxActualLengthMM'
    end
    object cds_SSPPackageCode: TStringField
      FieldName = 'PackageCode'
      Size = 10
    end
    object cds_SSPFreightOrderByClientNo: TIntegerField
      FieldName = 'FreightOrderByClientNo'
    end
    object cds_SSPSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object cds_SSPCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_SSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_SSPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_SSPPartnerNo: TIntegerField
      FieldName = 'PartnerNo'
    end
    object cds_SSPProdInstructNo: TIntegerField
      FieldName = 'ProdInstructNo'
    end
    object cds_SSPShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
    end
    object cds_SSPPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
    end
    object cds_SSPCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cds_SSPCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
    end
    object cds_SSPCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
    end
    object cds_SSPLO_No: TIntegerField
      FieldName = 'LO_No'
    end
    object cds_SSPDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
    end
  end
  object sq_SSP_Exist: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ObjectType'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadingLocationNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShipToInvPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductLengthNo'
        ParamType = ptInput
      end>
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
      'AND SSP.ProductLengthNo = :ProductLengthNo'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 272
    Top = 360
    object sq_SSP_ExistSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
    end
  end
  object sq_LoadHead: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 600
    Top = 416
    object sq_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object sq_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
    end
    object sq_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
    end
    object sq_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
    object sq_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      BlobType = ftMemo
    end
    object sq_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      BlobType = ftMemo
    end
    object sq_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
    end
    object sq_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
    end
    object sq_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
    end
    object sq_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
    end
    object sq_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_LoadHeadFS: TStringField
      FieldName = 'FS'
    end
    object sq_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
    end
    object sq_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      BlobType = ftMemo
    end
  end
  object dsp_LoadHead: TDataSetProvider
    DataSet = sq_LoadHead
    UpdateMode = upWhereChanged
    Left = 600
    Top = 472
  end
  object cds_LoadHead: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadHead'
    Left = 600
    Top = 528
    object cds_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cds_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Required = True
    end
    object cds_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      Required = True
    end
    object cds_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
    object cds_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      BlobType = ftMemo
    end
    object cds_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      BlobType = ftMemo
    end
    object cds_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
    end
    object cds_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
    end
    object cds_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
    end
    object cds_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
    end
    object cds_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_LoadHeadFS: TStringField
      FieldName = 'FS'
    end
    object cds_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
    end
    object cds_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cds_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      BlobType = ftMemo
    end
  end
  object sq_LoadPackages: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
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
      'WHERE      LD.LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 472
    object sq_LoadPackagesLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object sq_LoadPackagesPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object sq_LoadPackagesSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
  end
  object sq_Pkgs: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
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
      'WHERE      LD.LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 272
    Top = 424
    object sq_PkgsLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object sq_PkgsPackageNo: TIntegerField
      FieldName = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PkgsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
  end
  object dsp_Pkgs: TDataSetProvider
    DataSet = sq_Pkgs
    OnGetTableName = dsp_PkgsGetTableName
    Left = 272
    Top = 472
  end
  object cds_Pkgs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Pkgs'
    OnReconcileError = cds_PkgsReconcileError
    Left = 272
    Top = 520
    object cds_PkgsLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object cds_PkgsPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cds_PkgsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
  end
  object sq_GetNewLIPno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'New_OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Old_LogicalInventoryPointNo'
        ParamType = ptInput
      end>
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
        'o'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 456
    object sq_GetNewLIPnoNew_LogicalInventoryPointNo: TIntegerField
      FieldName = 'New_LogicalInventoryPointNo'
    end
  end
  object sq_NoOfLoads_LO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
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
      'Where LS.ShippingPlanNo = :ShippingPlanNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 520
    object sq_NoOfLoads_LONoOfLoads: TIntegerField
      FieldName = 'NoOfLoads'
    end
  end
  object sq_Update_SSP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end>
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
      'AND L.CustomerNo = :CustomerNo'
      ''
      ''
      ''
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 256
    object sq_Update_SSPCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_Update_SSPLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = []
    end
    object sq_Update_SSPSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_Update_SSPSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object sq_Update_SSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object sq_Update_SSPObjectType: TIntegerField
      FieldName = 'ObjectType'
    end
    object sq_Update_SSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object sq_Update_SSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
    end
    object sq_Update_SSPProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_Update_SSPProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_Update_SSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object dsp_Update_SSP: TDataSetProvider
    DataSet = sq_Update_SSP
    OnGetTableName = dsp_SSPGetTableName
    Left = 368
    Top = 296
  end
  object cds_Update_SSP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Update_SSP'
    OnReconcileError = cds_SSPReconcileError
    Left = 368
    Top = 352
    object cds_Update_SSPCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cds_Update_SSPLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_Update_SSPSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
    end
    object cds_Update_SSPSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cds_Update_SSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cds_Update_SSPObjectType: TIntegerField
      FieldName = 'ObjectType'
    end
    object cds_Update_SSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object cds_Update_SSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
    end
    object cds_Update_SSPProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_Update_SSPProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_Update_SSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object sq_LoadDetail: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.LoadDetail'
      'WHERE '
      'LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 560
    Top = 256
    object sq_LoadDetailLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sq_LoadDetailLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sq_LoadDetailShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
  end
  object dsp_LoadDetail: TDataSetProvider
    DataSet = sq_LoadDetail
    UpdateMode = upWhereKeyOnly
    Left = 560
    Top = 304
  end
  object cds_LoadDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadDetail'
    OnReconcileError = cds_LoadDetailReconcileError
    Left = 560
    Top = 352
    object cds_LoadDetailLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadDetailLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadDetailShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
  end
  object sq_LS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from'
      'dbo.LoadShippingPlan'
      'Where LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 496
    Top = 256
    object sq_LSLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LSShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsp_LS: TDataSetProvider
    DataSet = sq_LS
    Left = 496
    Top = 304
  end
  object cds_LS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LS'
    OnReconcileError = cds_LSReconcileError
    Left = 496
    Top = 352
    object cds_LSLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_LSShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
  end
  object sq_ConfLoad: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LO_No'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.Confirmed_Load'
      'SET Confirmed_ShippingPlanNo = :LO_No'
      'Where '
      'Confirmed_LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 456
    Top = 40
  end
  object dsp_ConfLoad: TDataSetProvider
    Left = 456
    Top = 88
  end
  object cds_ConfLoad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ConfLoad'
    OnReconcileError = cds_ConfLoadReconcileError
    Left = 456
    Top = 136
    object cds_ConfLoadConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ConfLoadConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_DelConPkgLog: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LO_No'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.Confirmed_Package_Log'
      'Where Confirmed_LoadNo =:LoadNo'
      'AND Confirmed_ShippingPlanNo = :LO_No')
    SQLConnection = dmsConnector.SQLConnection
    Left = 160
    Top = 456
  end
  object sq_INS_PaymentLoad_ST: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PaymentNo'
        ParamType = ptInput
      end>
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
      'PL.PaymentNo = :PaymentNo'
      ''
      ''
      ''
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 264
    Top = 312
  end
  object sq_LO_Type: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end>
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
      'AND L.CustomerNo = :CustomerNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 424
    object sq_LO_TypeObjectType: TIntegerField
      FieldName = 'ObjectType'
    end
    object sq_LO_TypeOrderType: TIntegerField
      FieldName = 'OrderType'
    end
  end
  object sq_Confirmed_Load: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * '
      'from Confirmed_Load')
    SQLConnection = dmsConnector.SQLConnection
    Left = 744
    Top = 40
    object sq_Confirmed_LoadConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_Confirmed_LoadConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_Confirmed_LoadNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
    end
    object sq_Confirmed_LoadNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
    end
    object sq_Confirmed_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_Confirmed_LoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_Confirmed_LoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object dspConfirmed_Load: TDataSetProvider
    DataSet = sq_Confirmed_Load
    UpdateMode = upWhereChanged
    Left = 744
    Top = 88
  end
  object cdsConfirmed_Load: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfirmed_Load'
    Left = 744
    Top = 136
    object cdsConfirmed_LoadConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
    end
    object cdsConfirmed_LoadConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
    end
    object cdsConfirmed_LoadNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
    end
    object cdsConfirmed_LoadNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
    end
    object cdsConfirmed_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsConfirmed_LoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsConfirmed_LoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object sq_LoadRemAvr: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from dbo.LoadRemAvr')
    SQLConnection = dmsConnector.SQLConnection
    Left = 496
    Top = 424
  end
  object dsp_LoadRemAvr: TDataSetProvider
    DataSet = sq_LoadRemAvr
    Left = 496
    Top = 472
  end
  object cds_LoadRemAvr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadRemAvr'
    OnReconcileError = cds_LoadRemAvrReconcileError
    Left = 496
    Top = 520
    object cds_LoadRemAvrLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_LoadRemAvrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_LoadRemAvrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
  end
  object sq_IntOrderHead: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * From '
      'dbo.InternalOrderHead')
    SQLConnection = dmsConnector.SQLConnection
    Left = 856
    Top = 248
    object sq_IntOrderHeadOrderNo: TIntegerField
      FieldName = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_IntOrderHeadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadDefaultShipToInvPointNo: TIntegerField
      FieldName = 'DefaultShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadStatus: TIntegerField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadOrderNoText: TStringField
      FieldName = 'OrderNoText'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sq_IntOrderHeadDefaultDeliveryTermsNo: TIntegerField
      FieldName = 'DefaultDeliveryTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadDefaultPaymentTermsNo: TIntegerField
      FieldName = 'DefaultPaymentTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadDefaultCurrencyNo: TIntegerField
      FieldName = 'DefaultCurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadOrderNote: TMemoField
      FieldName = 'OrderNote'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_IntOrderHeadOrderType: TIntegerField
      FieldName = 'OrderType'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadProductDisplayFormat: TIntegerField
      FieldName = 'ProductDisplayFormat'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadDefaultVolumeUnitNo: TIntegerField
      FieldName = 'DefaultVolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadDefaultPriceUnitNo: TIntegerField
      FieldName = 'DefaultPriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadDef_StartETDYearWeek: TIntegerField
      FieldName = 'Def_StartETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadDef_StartETAYearWeek: TIntegerField
      FieldName = 'Def_StartETAYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_IntOrderHeadLO_No: TIntegerField
      FieldName = 'LO_No'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_IntOrderHead: TDataSetProvider
    DataSet = sq_IntOrderHead
    UpdateMode = upWhereKeyOnly
    Left = 856
    Top = 296
  end
  object cds_IntOrderHead: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_IntOrderHead'
    Left = 856
    Top = 344
    object cds_IntOrderHeadOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object cds_IntOrderHeadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cds_IntOrderHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cds_IntOrderHeadDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
    end
    object cds_IntOrderHeadDefaultShipToInvPointNo: TIntegerField
      FieldName = 'DefaultShipToInvPointNo'
    end
    object cds_IntOrderHeadStatus: TIntegerField
      FieldName = 'Status'
    end
    object cds_IntOrderHeadOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Size = 40
    end
    object cds_IntOrderHeadDefaultDeliveryTermsNo: TIntegerField
      FieldName = 'DefaultDeliveryTermsNo'
    end
    object cds_IntOrderHeadDefaultPaymentTermsNo: TIntegerField
      FieldName = 'DefaultPaymentTermsNo'
    end
    object cds_IntOrderHeadDefaultCurrencyNo: TIntegerField
      FieldName = 'DefaultCurrencyNo'
    end
    object cds_IntOrderHeadOrderNote: TMemoField
      FieldName = 'OrderNote'
      BlobType = ftMemo
    end
    object cds_IntOrderHeadOrderType: TIntegerField
      FieldName = 'OrderType'
    end
    object cds_IntOrderHeadProductDisplayFormat: TIntegerField
      FieldName = 'ProductDisplayFormat'
    end
    object cds_IntOrderHeadDefaultVolumeUnitNo: TIntegerField
      FieldName = 'DefaultVolumeUnitNo'
    end
    object cds_IntOrderHeadVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
    end
    object cds_IntOrderHeadDefaultPriceUnitNo: TIntegerField
      FieldName = 'DefaultPriceUnitNo'
    end
    object cds_IntOrderHeadDef_StartETDYearWeek: TIntegerField
      FieldName = 'Def_StartETDYearWeek'
    end
    object cds_IntOrderHeadDef_StartETAYearWeek: TIntegerField
      FieldName = 'Def_StartETAYearWeek'
    end
    object cds_IntOrderHeadSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object cds_IntOrderHeadLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
    end
    object cds_IntOrderHeadLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object cds_IntOrderHeadSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object cds_IntOrderHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_IntOrderHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_IntOrderHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_IntOrderHeadLO_No: TIntegerField
      FieldName = 'LO_No'
    end
  end
  object sq_ChangeLOnrInPaymentLoad: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NewLO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OldLO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'UPDATE dbo.PaymentLoad'
      'SET ShippingPlanNo = :NewLO'
      'FROM dbo.PaymentLoad '
      'WHERE'
      'LoadNo = :LoadNo'
      'AND ShippingPlanNo = :OldLO'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 160
    Top = 520
  end
  object sq_FindAvr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'PL.PaymentNo'#9#9#9#9'AS'#9'AVRAKNING_NO,'
      'OC.ClientName'#9#9#9#9'AS'#9'Verk,'
      'OC.ClientNo                           AS      VerkNo'
      ''
      ''
      'FROM  PaymentHead PH'
      'INNER JOIN PaymentLoad PL'#9#9#9'ON'#9'PL.PaymentNo'#9#9'= PH.PaymentNo'
      'INNER JOIN dbo.Client OC'#9#9#9#9'ON'#9'OC.ClientNo '#9#9'= PH.SupplierNo'
      ''
      'WHERE PL.LoadNo = :LoadNo'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 704
    Top = 536
    object sq_FindAvrVerk: TStringField
      FieldName = 'Verk'
      Size = 80
    end
    object sq_FindAvrVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object sq_FindAvrAVRAKNING_NO: TIntegerField
      FieldName = 'AVRAKNING_NO'
    end
  end
  object sq_PaymentLoadListII: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PaymentNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'PL.PaymentNo'#9#9#9#9'AS'#9'AVRAKNING_NO,'
      'US.INITIALS,'
      ''
      'L.LoadNo'#9#9#9#9'AS'#9'VIS_FS,'
      'L.FS'#9#9#9#9#9'AS '#9'MILL_FS,'
      'L.LoadedDate'#9#9#9#9'AS'#9'LOAD_DATE,'
      'OC.ClientName'#9#9#9#9'AS'#9'CUSTOMER,'
      'PL.ACT_Thick'#9#9#9#9'AS'#9'AKT_THICK,'
      'PL.ACT_Width'#9#9#9#9'AS'#9'AKT_WIDTH,'
      'SUM(PL.Totalm3Actual)'#9#9#9'AS'#9'ACT_M3,'
      'SUM(PL.TotalLinealMeterNominalLength)'#9'AS'#9'NOM_LPM,'
      'PL.NOM_Thick'#9#9#9#9'AS'#9'NOM_THICK,'
      'PL.NOM_Width'#9#9#9#9'AS'#9'NOM_WIDTH,'
      'SUM(PL.Totalm3Nominal)'#9#9#9'AS'#9'NOM_M3,'
      'PL.Price'#9#9#9#9'AS '#9'PRICE,'
      'SUM(PL.Totalm3Nominal * PL.Price)'#9'AS'#9'VALUE,'
      'CASE'
      'WHEN PH.TypeOf = 0 THEN SUM(PL.Totalm3Nominal * PL.Price) * 0.25'
      'WHEN PH.TypeOf = 3 THEN SUM(PL.Totalm3Nominal * PL.Price) * 0.25'
      ''
      'ELSE'
      ' 0'
      'END AS MOMS_VALUE,'
      ''
      'Mill.ClientCode                         AS      SUPPCODE,'
      'Cust.ClientCode                         AS      CUSTOMER,'
      'Cust.ClientNo                           AS      CUSTOMERNO,'
      'A.CountryNo,'
      'PL.GradeName'#9#9#9'AS GRADENAME,'
      'PH.Mill_InvoiceNo'#9#9'AS MILL_INVOICE_NO'
      ''
      ''
      'FROM  PaymentHead PH'
      'INNER JOIN PaymentLoad PL'#9#9#9'ON'#9'PL.PaymentNo'#9#9'= PH.PaymentNo'
      'INNER JOIN dbo.Loads L'#9#9#9#9'ON'#9'L.LoadNo'#9#9'= PL.LoadNo'
      ''
      'INNER JOIN dbo.LoadShippingPlan LS'#9#9'ON'#9'LS.LoadNo'#9#9'= PL.LoadNo'
      #9#9#9#9#9#9'AND '#9'LS.ShippingPlanNo'#9'= PL.ShippingPlanNo'
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
      'Left Outer Join dbo.Users'#9'US'#9'ON'#9'US.UserID = PH.CreatedUser'
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
      'PL.ACT_Thick'#9#9#9#9','
      'PL.ACT_Width'#9#9#9#9','
      'PL.NOM_Thick'#9#9#9#9','
      'PL.NOM_Width'#9#9#9#9','
      'PL.Price'#9#9#9#9','
      ''
      'Mill.ClientCode                         ,'
      'Cust.ClientCode                         ,'
      'Cust.ClientNo                           ,'
      'A.CountryNo'#9#9#9#9','
      'PL.PaymentNo'#9#9#9#9','
      'PH.TypeOf'#9#9#9#9','
      'PL.GradeName'#9#9#9#9','
      'PH.Mill_InvoiceNo'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 160
    Top = 256
    object sq_PaymentLoadListIIAVRAKNING_NO: TIntegerField
      FieldName = 'AVRAKNING_NO'
    end
    object sq_PaymentLoadListIIINITIALS: TStringField
      FieldName = 'INITIALS'
      Size = 3
    end
    object sq_PaymentLoadListIIVIS_FS: TIntegerField
      FieldName = 'VIS_FS'
    end
    object sq_PaymentLoadListIIMILL_FS: TStringField
      FieldName = 'MILL_FS'
    end
    object sq_PaymentLoadListIILOAD_DATE: TSQLTimeStampField
      FieldName = 'LOAD_DATE'
    end
    object sq_PaymentLoadListIICUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object sq_PaymentLoadListIIAKT_THICK: TFloatField
      FieldName = 'AKT_THICK'
    end
    object sq_PaymentLoadListIIAKT_WIDTH: TFloatField
      FieldName = 'AKT_WIDTH'
    end
    object sq_PaymentLoadListIIACT_M3: TFloatField
      FieldName = 'ACT_M3'
    end
    object sq_PaymentLoadListIINOM_LPM: TFloatField
      FieldName = 'NOM_LPM'
    end
    object sq_PaymentLoadListIINOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object sq_PaymentLoadListIINOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object sq_PaymentLoadListIINOM_M3: TFloatField
      FieldName = 'NOM_M3'
    end
    object sq_PaymentLoadListIIPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sq_PaymentLoadListIIVALUE: TFloatField
      FieldName = 'VALUE'
    end
    object sq_PaymentLoadListIIMOMS_VALUE: TFloatField
      FieldName = 'MOMS_VALUE'
    end
    object sq_PaymentLoadListIISUPPCODE: TStringField
      FieldName = 'SUPPCODE'
      Size = 3
    end
    object sq_PaymentLoadListIICUSTOMER_1: TStringField
      FieldName = 'CUSTOMER_1'
      Size = 3
    end
    object sq_PaymentLoadListIICUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
    end
    object sq_PaymentLoadListIICountryNo: TIntegerField
      FieldName = 'CountryNo'
    end
    object sq_PaymentLoadListIIGRADENAME: TStringField
      FieldName = 'GRADENAME'
      Size = 50
    end
    object sq_PaymentLoadListIIMILL_INVOICE_NO: TStringField
      FieldName = 'MILL_INVOICE_NO'
      Size = 50
    end
  end
  object dspPaymentLoadListII: TDataSetProvider
    DataSet = sq_PaymentLoadListII
    Left = 160
    Top = 304
  end
  object cdsPaymentLoadListII: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AVRAKNING_NO'
    MasterFields = 'PaymentNo'
    MasterSource = dsPaymentHead
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPaymentLoadListII'
    Left = 160
    Top = 352
    object cdsPaymentLoadListIIAVRAKNING_NO: TIntegerField
      FieldName = 'AVRAKNING_NO'
    end
    object cdsPaymentLoadListIIINITIALS: TStringField
      DisplayLabel = 'INI'
      FieldName = 'INITIALS'
      Size = 3
    end
    object cdsPaymentLoadListIIVIS_FS: TIntegerField
      DisplayLabel = 'VISFS'
      FieldName = 'VIS_FS'
    end
    object cdsPaymentLoadListIIMILL_FS: TStringField
      DisplayLabel = 'MILLFS'
      FieldName = 'MILL_FS'
    end
    object cdsPaymentLoadListIILOAD_DATE: TSQLTimeStampField
      DisplayLabel = 'UTLASTAD'
      FieldName = 'LOAD_DATE'
    end
    object cdsPaymentLoadListIICUSTOMER: TStringField
      DisplayLabel = 'EXTERNKUND'
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object cdsPaymentLoadListIIAKT_THICK: TFloatField
      DisplayLabel = 'AT'
      FieldName = 'AKT_THICK'
    end
    object cdsPaymentLoadListIIAKT_WIDTH: TFloatField
      DisplayLabel = 'AB'
      FieldName = 'AKT_WIDTH'
    end
    object cdsPaymentLoadListIIACT_M3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ACT_M3'
      DisplayFormat = '#,###,###.000'
    end
    object cdsPaymentLoadListIINOM_LPM: TFloatField
      DisplayLabel = 'NM1'
      FieldName = 'NOM_LPM'
    end
    object cdsPaymentLoadListIINOM_THICK: TFloatField
      DisplayLabel = 'NT'
      FieldName = 'NOM_THICK'
    end
    object cdsPaymentLoadListIINOM_WIDTH: TFloatField
      DisplayLabel = 'NB'
      FieldName = 'NOM_WIDTH'
    end
    object cdsPaymentLoadListIINOM_M3: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'NOM_M3'
      DisplayFormat = '#,###,###.000'
    end
    object cdsPaymentLoadListIIPRICE: TFloatField
      DisplayLabel = 'PRIS'
      FieldName = 'PRICE'
      DisplayFormat = '#,###,###.00'
    end
    object cdsPaymentLoadListIIVALUE: TFloatField
      DisplayLabel = 'V'#196'RDE'
      FieldName = 'VALUE'
      DisplayFormat = '#,###,###.00'
    end
    object cdsPaymentLoadListIIMOMS_VALUE: TFloatField
      DisplayLabel = 'MOMS'
      FieldName = 'MOMS_VALUE'
      DisplayFormat = '#,###,###.00'
    end
    object cdsPaymentLoadListIISUPPCODE: TStringField
      DisplayLabel = 'LEV.KOD'
      FieldName = 'SUPPCODE'
      Size = 3
    end
    object cdsPaymentLoadListIICUSTOMER_1: TStringField
      DisplayLabel = 'INTERNKUND'
      FieldName = 'CUSTOMER_1'
      Size = 3
    end
    object cdsPaymentLoadListIICUSTOMERNO: TIntegerField
      FieldName = 'CUSTOMERNO'
    end
    object cdsPaymentLoadListIICountryNo: TIntegerField
      FieldName = 'CountryNo'
    end
    object cdsPaymentLoadListIIGRADENAME: TStringField
      DisplayLabel = 'KV'
      FieldName = 'GRADENAME'
      Size = 50
    end
    object cdsPaymentLoadListIIMILL_INVOICE_NO: TStringField
      FieldName = 'MILL_INVOICE_NO'
      Size = 50
    end
  end
  object dsPaymentLoadListII: TDataSource
    DataSet = cdsPaymentLoadListII
    Left = 160
    Top = 400
  end
end
