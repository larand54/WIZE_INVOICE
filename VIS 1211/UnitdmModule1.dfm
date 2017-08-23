object dmModule1: TdmModule1
  OldCreateOrder = False
  Height = 779
  Width = 1132
  object dsClient: TDataSource
    DataSet = cdsClient
    Left = 616
    Top = 72
  end
  object dsDestination: TDataSource
    DataSet = cdsDestination
    Left = 808
    Top = 64
  end
  object dsClientAddress: TDataSource
    DataSet = cdsClientAddress
    Left = 40
    Top = 208
  end
  object dsLoadFreightCost: TDataSource
    DataSet = cdsLoadFreightCost
    Left = 792
    Top = 232
  end
  object ds_PkgInfo: TDataSource
    DataSet = cds_PkgInfo
    Left = 24
    Top = 80
  end
  object ds_LoadPkgInfo: TDataSource
    DataSet = cds_LoadPkgInfo
    Left = 128
    Top = 80
  end
  object tblLoadFreight: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LocalShippingCompanyNo'
        DataType = ftInteger
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
      end
      item
        Name = 'FS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LOADID'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOADEDDATE'
        DataType = ftDateTime
      end
      item
        Name = 'SHIPPER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'FROM_PLACE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DESTINATION'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'M3_NET'
        DataType = ftFloat
      end
      item
        Name = 'PRICE'
        DataType = ftFloat
      end
      item
        Name = 'INVOICEAMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
      end
      item
        Name = 'Checked'
        DataType = ftBoolean
      end
      item
        Name = 'LO'
        DataType = ftInteger
      end>
    IndexFieldNames = 'LOADNO'
    IndexName = 'tblLoadFreightIndex1'
    IndexDefs = <
      item
        Name = 'tblLoadFreightIndex1'
        Fields = 'LOADNO'
      end
      item
        Name = 'tblLoadFreightIndex2'
        Fields = 'FS'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = tblLoadFreightAfterInsert
    OnCalcFields = tblLoadFreightCalcFields
    Left = 696
    Top = 64
    object tblLoadFreightLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
    end
    object tblLoadFreightLOADNO: TIntegerField
      DisplayLabel = 'LASTNR'
      FieldName = 'LOADNO'
    end
    object tblLoadFreightFS: TStringField
      FieldName = 'FS'
    end
    object tblLoadFreightLOADID: TStringField
      DisplayLabel = 'LASTID'
      FieldName = 'LOADID'
      Size = 50
    end
    object tblLoadFreightLOADEDDATE: TDateTimeField
      DisplayLabel = 'UTLASTAD'
      FieldName = 'LOADEDDATE'
    end
    object tblLoadFreightSHIPPER: TStringField
      DisplayLabel = 'FRAKTF'#214'RARE'
      FieldName = 'SHIPPER'
      Size = 80
    end
    object tblLoadFreightFROM_PLACE: TStringField
      DisplayLabel = 'LASTST'#196'LLE'
      FieldName = 'FROM_PLACE'
      Size = 50
    end
    object tblLoadFreightDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Size = 50
    end
    object tblLoadFreightM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      OnChange = tblLoadFreightM3_NETChange
      DisplayFormat = '########.000'
    end
    object tblLoadFreightPRICE: TFloatField
      DisplayLabel = 'PRIS'
      FieldName = 'PRICE'
      OnChange = tblLoadFreightPRICEChange
      DisplayFormat = '#,###,###,###.00'
    end
    object tblLoadFreightINVOICEAMOUNT: TFloatField
      DisplayLabel = 'FAKTURABELOPP'
      FieldName = 'INVOICEAMOUNT'
      OnChange = tblLoadFreightINVOICEAMOUNTChange
      DisplayFormat = '#,###,###,###.00'
    end
    object tblLoadFreightSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object tblLoadFreightTOTAL_AMOUNT: TFloatField
      DisplayLabel = 'TOTALTBELOPP'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_AMOUNT'
      DisplayFormat = '#,###,###,###.00'
      Calculated = True
    end
    object tblLoadFreightChecked: TBooleanField
      DisplayLabel = 'R'#196'KNA AV'
      FieldName = 'Checked'
    end
    object tblLoadFreightLO: TIntegerField
      DisplayLabel = 'LONR'
      FieldName = 'LO'
    end
    object tblLoadFreightPaket: TIntegerField
      FieldName = 'Paket'
    end
  end
  object ds_LoadFreightCostHeader: TDataSource
    DataSet = cds_LoadFreightCostHeader
    Left = 280
    Top = 200
  end
  object ds_LoadFreightCostHeader2: TDataSource
    DataSet = cds_LoadFreightCostHeader2
    Left = 424
    Top = 80
  end
  object ds_LoadFreightCostDetails: TDataSource
    DataSet = cds_LoadFreightCostDetails
    Left = 424
    Top = 200
  end
  object ds_tblLoadFreight3: TDataSource
    DataSet = tblLoadFreight
    Left = 696
    Top = 112
  end
  object ds_genfreight: TDataSource
    Left = 696
    Top = 232
  end
  object mtShippers: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexFieldNames = 'Shipper'
    IndexDefs = <
      item
        Name = 'mtShippersIndex1'
        Fields = 'Shipper'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 1048
    Top = 24
    object mtShippersShipper: TStringField
      DisplayLabel = 'Spedit'#246'r'
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupDataSet = dmsContact.cds_Shippers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ShipperNo'
      Size = 80
      Lookup = True
    end
    object mtShippersShippersInvoiceNo: TStringField
      DisplayLabel = 'Spedit'#246'rens fakturanr'
      FieldName = 'ShippersInvoiceNo'
      Size = 50
    end
    object mtShippersShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtShippersAvrakningsNr: TIntegerField
      DisplayLabel = 'Avr'#228'kningsNr'
      FieldName = 'AvrakningsNr'
    end
  end
  object dsShippers: TDataSource
    DataSet = mtShippers
    Left = 1048
    Top = 72
  end
  object ds_LoadFC: TDataSource
    DataSet = cds_LoadFC
    Left = 224
    Top = 80
  end
  object ds_LF: TDataSource
    DataSet = sp_LF
    Left = 528
    Top = 504
  end
  object cds_PkgInfo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      ''
      'isNull(Us.UserName,'#39'NA'#39') AS PKG_CREATED_BY, '
      'PN.PackageNo AS PKG_NO, '
      'PN.DateCreated AS PKG_CREATED,'
      'PN.SupplierCode AS SUPP_CODE, '
      'PR.ProductDisplayName AS PRODUCT, '
      'C.ClientName AS INVENTORY_OWNER , '
      'Supp.ClientName AS PRODUCER, '
      'LOC.CityName AS INVENTORY,'
      'LIP.LogicalInventoryName AS INVENTORY_GROUP,'
      'CASE'
      ' WHEN PN.Status = 0 then '#39'PKG NOT AVAILABLE'#39
      ' WHEN PN.Status = 1 then '#39'PKG AVAILABLE'#39
      'END AS PKG_STATUS,'
      'BC.BarCode AS BARCODE,'
      'GS.GradeStamp AS GRADESTAMP,'
      'PT.PackageHeight AS PKG_HEIGHT,'
      'PT.PackageWidth AS PKG_WIDTH,'
      'CASE'
      'WHEN PT.MiniBundled = 0 THEN '#39'NO'#39
      'WHEN PT.MiniBundled = 1 THEN '#39'YES'#39
      'END AS MINI_BUNDLED,'
      ''
      'CASE '
      ' WHEN PT.OnSticks = 0 then '#39'NO'#39
      ' WHEN PT.OnSticks = 1 then '#39'YES'#39
      'END AS STICKS,'
      ''
      'WT.WrapType AS WRAP,'
      'CASE'
      'WHEN PT.ShrinkWrap = 0 THEN '#39'NO'#39
      'WHEN PT.ShrinkWrap = 1 THEN '#39'YES'#39
      'END AS SHRINK_WRAP,'
      ''
      'PT.Totalm3Actual AS M3_ACT, '
      'PT.Totalm3Nominal AS M3_NOM , '
      'PT.TotalNoOfPieces AS PIECES, '
      'PT.TotalMFBMNominal AS MFBM, '
      'PT.TotalLinealMeterActualLength AS ACT_LINEAL_METER,'
      'PT.m3Net AS NOM_LINEAL_METER,'
      'PT.TotalSQMofActualWidth AS M2,'
      'PT.PackageTypeNo AS PACKAGETYPENO,'
      'pc.PackageCodeNo AS KORTAKODEN,'
      'pp.PackageCode AS LANGAKODEN'
      ''
      'FROM PackageNumber PN'
      'Inner Join PackageType PT ON PT.PackageTypeNo = PN.PackageTypeNo'
      
        'Left Outer Join dbo.PkgVarCode pc ON pc.PackageTypeNo = Pt.Packa' +
        'geTypeNo'
      
        'Left Outer Join dbo.Packagecode_printparams pp on pp.PackageType' +
        'No = pc.PackageTypeNo'
      'Inner Join Product PR ON PR.ProductNo = PT.ProductNo'
      
        'Left Outer Join LogicalInventoryPoint LIP ON LIP.LogicalInventor' +
        'yPointNo = PN.LogicalInventoryPointNo'
      ''
      'Left Outer Join PhysicalInventoryPoint PIP'
      'Inner Join Client C ON C.ClientNo = PIP.OwnerNo'
      'Inner Join City LOC ON LOC.CityNo = PIP.PhyInvPointNameNo'
      'ON PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      'Inner Join Client Supp ON Supp.ClientNo = PN.SupplierNo'
      'Left Outer Join Users Us ON'#9'Us.UserID = PN.CreatedUser'
      ''
      'Left Outer Join BarCode'#9'BC'#9'ON BC.BarCodeNo = PT.BarCodeID'
      'Left Outer Join GradeStamp GS'#9'ON GS.GradeStampNo = PT.GradeStamp'
      'left Outer Join WrapType WT'#9'ON WT.WrapTypeNo = PT.WrapType'
      ''
      'Left Outer Join LoadDetail LD '
      ' Inner Join Loads L ON L.LoadNo = LD.LoadNo'
      ' Left Outer Join Users Load_Us ON'#9'Load_Us.UserID = L.CreatedUser'
      ' Inner Join LoadShippingPlan LS ON LS.LoadNo = LD.LoadNo'
      #9#9#9#9'AND LS.ShippingPlanNo = LD.ShippingPlanNo'
      ' Inner Join Client LC ON LC.ClientNo = L.CustomerNo'
      ' Inner Join Client LSupp ON LSupp.ClientNo = L.SupplierNo'
      ''
      
        ' Left Outer Join CustomerShippingPlanDetails CSD ON CSD.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ' Left Outer Join Orders O'#9'ON O.OrderNo = CSD.OrderNo'
      ' Left Outer Join Client OrdCli'#9'ON OrdCli.ClientNo = O.CustomerNo'
      ''
      'ON LD.PackageNo = PN.PackageNo'
      'AND LD.SupplierCode = PN.SupplierCode'
      ''
      'Left Outer Join Invoiced_Load IL '
      
        ' Inner Join InvoiceHeader IH ON IH.InternalInvoiceNo = IL.Intern' +
        'alInvoiceNo'
      
        ' Left Outer Join InvoiceNumber INO ON INO.InternalInvoiceNo = IH' +
        '.InternalInvoiceNo'
      ''
      ' Left Outer Join Users IN_Us ON'#9'IN_Us.UserID = INO.UserCreated'
      'ON IL.LoadNo = LS.LoadNo'
      'AND   IL.ShippingPlanNo = LS.ShippingPlanNo'
      'Where'
      'PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode')
    Left = 24
    Top = 24
    ParamData = <
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PkgInfoPKG_CREATED_BY: TStringField
      FieldName = 'PKG_CREATED_BY'
      Origin = 'PKG_CREATED_BY'
      ReadOnly = True
      Required = True
    end
    object cds_PkgInfoPKG_NO: TIntegerField
      FieldName = 'PKG_NO'
      Origin = 'PKG_NO'
      Required = True
    end
    object cds_PkgInfoPKG_CREATED: TSQLTimeStampField
      FieldName = 'PKG_CREATED'
      Origin = 'PKG_CREATED'
    end
    object cds_PkgInfoSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgInfoPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 100
    end
    object cds_PkgInfoINVENTORY_OWNER: TStringField
      FieldName = 'INVENTORY_OWNER'
      Origin = 'INVENTORY_OWNER'
      Size = 80
    end
    object cds_PkgInfoPRODUCER: TStringField
      FieldName = 'PRODUCER'
      Origin = 'PRODUCER'
      Size = 80
    end
    object cds_PkgInfoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      Size = 50
    end
    object cds_PkgInfoINVENTORY_GROUP: TStringField
      FieldName = 'INVENTORY_GROUP'
      Origin = 'INVENTORY_GROUP'
      Size = 50
    end
    object cds_PkgInfoPKG_STATUS: TStringField
      FieldName = 'PKG_STATUS'
      Origin = 'PKG_STATUS'
      ReadOnly = True
      Size = 17
    end
    object cds_PkgInfoBARCODE: TStringField
      FieldName = 'BARCODE'
      Origin = 'BARCODE'
      FixedChar = True
    end
    object cds_PkgInfoGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
      Origin = 'GRADESTAMP'
      FixedChar = True
    end
    object cds_PkgInfoPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
      Origin = 'PKG_HEIGHT'
    end
    object cds_PkgInfoPKG_WIDTH: TIntegerField
      FieldName = 'PKG_WIDTH'
      Origin = 'PKG_WIDTH'
    end
    object cds_PkgInfoMINI_BUNDLED: TStringField
      FieldName = 'MINI_BUNDLED'
      Origin = 'MINI_BUNDLED'
      ReadOnly = True
      Size = 3
    end
    object cds_PkgInfoSTICKS: TStringField
      FieldName = 'STICKS'
      Origin = 'STICKS'
      ReadOnly = True
      Size = 3
    end
    object cds_PkgInfoWRAP: TStringField
      FieldName = 'WRAP'
      Origin = 'WRAP'
      FixedChar = True
      Size = 15
    end
    object cds_PkgInfoSHRINK_WRAP: TStringField
      FieldName = 'SHRINK_WRAP'
      Origin = 'SHRINK_WRAP'
      ReadOnly = True
      Size = 3
    end
    object cds_PkgInfoM3_ACT: TFloatField
      FieldName = 'M3_ACT'
      Origin = 'M3_ACT'
    end
    object cds_PkgInfoM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object cds_PkgInfoPIECES: TIntegerField
      FieldName = 'PIECES'
      Origin = 'PIECES'
    end
    object cds_PkgInfoMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
    end
    object cds_PkgInfoACT_LINEAL_METER: TFloatField
      FieldName = 'ACT_LINEAL_METER'
      Origin = 'ACT_LINEAL_METER'
    end
    object cds_PkgInfoNOM_LINEAL_METER: TFloatField
      FieldName = 'NOM_LINEAL_METER'
      Origin = 'NOM_LINEAL_METER'
    end
    object cds_PkgInfoM2: TFloatField
      FieldName = 'M2'
      Origin = 'M2'
    end
    object cds_PkgInfoPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
      Required = True
    end
    object cds_PkgInfoKORTAKODEN: TStringField
      FieldName = 'KORTAKODEN'
      Origin = 'KORTAKODEN'
      Size = 40
    end
    object cds_PkgInfoLANGAKODEN: TStringField
      FieldName = 'LANGAKODEN'
      Origin = 'LANGAKODEN'
      Size = 50
    end
  end
  object sqGetSupplierNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select distinct SupplierNo From dbo.Loads LO'
      
        'Inner Join dbo.Confirmed_Load   CL ON CL.Confirmed_LoadNo = Lo.L' +
        'oadNo'
      'Inner Join ClientRole CR ON CR.ClientNo = Lo.SupplierNo'
      'AND CR.RoleType = 9'
      'Where LoadNo = :LoadNo')
    Left = 1048
    Top = 280
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqGetSupplierNoSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
  end
  object cds_LoadPkgInfo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      ''
      'LC.ClientName AS LOAD_CUSTOMER, '
      'LSupp.ClientName AS LOAD_SUPPLIER,'
      'L.LoadedDate AS LOAD_DATE,'
      'L.LoadNo AS LOAD_NO, '
      'LS.ShippingPlanNo AS LO_NUMBER, '
      'L.FS,'
      'isNull(Load_Us.UserName,'#39'NA'#39') AS LOAD_CREATED_BY,'
      'CASE'
      ' WHEN L.SenderLoadStatus  = 0 then '#39'PLANNED'#39
      ' WHEN L.SenderLoadStatus  = 1 then '#39'SHIPPED, PROBLEM'#39
      ' WHEN L.SenderLoadStatus  = 2 then '#39'SHIPPED OK'#39
      'END'
      'AS LOAD_STATUS,'
      ''
      'INO.InvoiceNo AS INVOICE_NO,'
      'isNull(IN_Us.Username,'#39'NA'#39') AS INV_CREATED_BY,'
      'IH.InvoiceDate AS INVOICE_DATE,'
      'IH.InternalInvoiceNo AS INT_INVOICE_NO,'
      'CASE '
      ' WHEN IH.InvoiceType = 0 then '#39'NORMAL'#39
      ' WHEN IH.InvoiceType = 1 then '#39'PROFORMA I'#39
      ' WHEN IH.InvoiceType = 2 then '#39'PROFROMA II'#39
      'END AS INVOICETYPE,'
      'CASE'
      ' WHEN IH.Debit_Credit = 0 then '#39'DEBIT'#39
      ' WHEN IH.Debit_Credit = 1 then '#39'CREDIT'#39
      'END AS DEBIT_CREDIT,'
      'O.OrderNoText AS ORDER_NO,'
      'OrdCli.ClientName AS ORDER_CUSTOMER'
      ''
      ''
      'FROM LoadDetail LD'
      ' Inner Join Loads L ON L.LoadNo = LD.LoadNo'
      ' Left Outer Join Users Load_Us ON'#9'Load_Us.UserID = L.CreatedUser'
      ' Inner Join LoadShippingPlan LS ON LS.LoadNo = LD.LoadNo'
      #9#9#9#9'AND LS.ShippingPlanNo = LD.ShippingPlanNo'
      ' Inner Join Client LC ON LC.ClientNo = L.CustomerNo'
      ' Inner Join Client LSupp ON LSupp.ClientNo = L.SupplierNo'
      ''
      
        ' Left Outer Join CustomerShippingPlanDetails CSD ON CSD.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ' Left Outer Join Orders O'#9'ON O.OrderNo = CSD.OrderNo'
      ' Left Outer Join Client OrdCli'#9'ON OrdCli.ClientNo = O.CustomerNo'
      ''
      ''
      'Left Outer Join Invoiced_Load IL '
      
        ' Inner Join InvoiceHeader IH ON IH.InternalInvoiceNo = IL.Intern' +
        'alInvoiceNo'
      
        ' Left Outer Join InvoiceNumber INO ON INO.InternalInvoiceNo = IH' +
        '.InternalInvoiceNo'
      ''
      ' Left Outer Join Users IN_Us ON'#9'IN_Us.UserID = INO.UserCreated'
      'ON IL.LoadNo = LS.LoadNo'
      'AND   IL.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      ''
      'Where'
      'LD.PackageNo = :PKG_NO'
      'AND LD.SupplierCode = :Supp_Code')
    Left = 128
    Top = 24
    ParamData = <
      item
        Name = 'PKG_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPP_CODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_LoadPkgInfoLOAD_CUSTOMER: TStringField
      FieldName = 'LOAD_CUSTOMER'
      Origin = 'LOAD_CUSTOMER'
      Size = 80
    end
    object cds_LoadPkgInfoLOAD_SUPPLIER: TStringField
      FieldName = 'LOAD_SUPPLIER'
      Origin = 'LOAD_SUPPLIER'
      Size = 80
    end
    object cds_LoadPkgInfoLOAD_DATE: TSQLTimeStampField
      FieldName = 'LOAD_DATE'
      Origin = 'LOAD_DATE'
    end
    object cds_LoadPkgInfoLOAD_NO: TIntegerField
      FieldName = 'LOAD_NO'
      Origin = 'LOAD_NO'
      Required = True
    end
    object cds_LoadPkgInfoLO_NUMBER: TIntegerField
      FieldName = 'LO_NUMBER'
      Origin = 'LO_NUMBER'
      Required = True
    end
    object cds_LoadPkgInfoFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cds_LoadPkgInfoLOAD_CREATED_BY: TStringField
      FieldName = 'LOAD_CREATED_BY'
      Origin = 'LOAD_CREATED_BY'
      ReadOnly = True
      Required = True
    end
    object cds_LoadPkgInfoLOAD_STATUS: TStringField
      FieldName = 'LOAD_STATUS'
      Origin = 'LOAD_STATUS'
      ReadOnly = True
      Size = 16
    end
    object cds_LoadPkgInfoINVOICE_NO: TIntegerField
      FieldName = 'INVOICE_NO'
      Origin = 'INVOICE_NO'
    end
    object cds_LoadPkgInfoINV_CREATED_BY: TStringField
      FieldName = 'INV_CREATED_BY'
      Origin = 'INV_CREATED_BY'
      ReadOnly = True
      Required = True
    end
    object cds_LoadPkgInfoINVOICE_DATE: TSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cds_LoadPkgInfoINT_INVOICE_NO: TIntegerField
      FieldName = 'INT_INVOICE_NO'
      Origin = 'INT_INVOICE_NO'
    end
    object cds_LoadPkgInfoINVOICETYPE: TStringField
      FieldName = 'INVOICETYPE'
      Origin = 'INVOICETYPE'
      ReadOnly = True
      Size = 11
    end
    object cds_LoadPkgInfoDEBIT_CREDIT: TStringField
      FieldName = 'DEBIT_CREDIT'
      Origin = 'DEBIT_CREDIT'
      ReadOnly = True
      Size = 6
    end
    object cds_LoadPkgInfoORDER_NO: TStringField
      FieldName = 'ORDER_NO'
      Origin = 'ORDER_NO'
    end
    object cds_LoadPkgInfoORDER_CUSTOMER: TStringField
      FieldName = 'ORDER_CUSTOMER'
      Origin = 'ORDER_CUSTOMER'
      Size = 80
    end
  end
  object cds_LoadFreightCostHeader: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'FROM'
      'dbo.LoadFreightCostHeader'
      '')
    Left = 280
    Top = 136
    object cds_LoadFreightCostHeaderAvrakningsNo: TIntegerField
      DisplayLabel = 'Avr'#228'kningsnr'
      FieldName = 'AvrakningsNo'
      Origin = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadFreightCostHeaderStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_LoadFreightCostHeaderLocalShipperNo: TIntegerField
      FieldName = 'LocalShipperNo'
      Origin = 'LocalShipperNo'
    end
    object cds_LoadFreightCostHeaderAvrakningsDate: TSQLTimeStampField
      DisplayLabel = 'Avr'#228'knad'
      FieldName = 'AvrakningsDate'
      Origin = 'AvrakningsDate'
    end
    object cds_LoadFreightCostHeaderCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LoadFreightCostHeaderModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LoadFreightCostHeaderDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LoadFreightCostHeaderDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_LoadFreightCostHeaderNote: TMemoField
      DisplayLabel = 'Notering'
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_LoadFreightCostHeaderShippersInvoiceNo: TStringField
      DisplayLabel = 'Ert fakturanr'
      FieldName = 'ShippersInvoiceNo'
      Origin = 'ShippersInvoiceNo'
      Size = 50
    end
    object cds_LoadFreightCostHeaderVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
  end
  object cds_LoadFreightCostDetails: TFDQuery
    BeforePost = cds_LoadFreightCostDetailsBeforePost
    BeforeRefresh = cds_LoadFreightCostDetailsBeforeRefresh
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_LoadFCostDtl_Index01'
        Fields = 'AvrakningsNo'
      end>
    IndexName = 'cds_LoadFCostDtl_Index01'
    MasterSource = ds_LoadFreightCostHeader2
    MasterFields = 'AvrakningsNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'LFC.AvrakningsNo,'
      'LFC.LoadNo, '
      'Lo.FS'#9','
      'Lo.LoadID'#9#9#9'AS LOAD_ID, '
      'Lo.LoadedDate'#9#9#9'AS LOADEDDATE,  '
      'shipper.clientname'#9#9'AS SHIPPER,'
      'FromPlace.CityName '#9#9'AS FROM_PLACE,'
      'ToPlace.CityName '#9#9'AS DESTINATION,'
      ''
      'LFC.M3_NET,'
      'LFC.PricePerM3_NET'#9#9','
      'LFC.TotalSUM'#9#9#9','
      'LFC.DateModified,'
      'LFC.ModifiedUser,'
      'LFC.Note'
      ''
      'FROM dbo.LoadFreightCost LFC'
      'Inner Join dbo.Loads Lo '#9'ON LO.LoadNo'#9'='#9'LFC.LoadNo'
      ''
      
        'left  outer join dbo.Client Shipper'#9'on shipper.clientno = lo.Loc' +
        'alShippingCompanyNo'
      
        'left  outer  join dbo.City FromPlace'#9'on FromPlace.CityNo = lo.Lo' +
        'calLoadingLocation'
      
        'left  outer  join dbo.City ToPlace'#9#9'on ToPlace.CityNo = lo.Local' +
        'DestinationNo'
      ''
      ''
      'WHERE LFC.AvrakningsNo = :AvrakningsNo'
      'Order by LFC.LoadNo desc')
    Left = 424
    Top = 136
    ParamData = <
      item
        Name = 'AVRAKNINGSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadFreightCostDetailsTotalSUM: TFloatField
      DisplayLabel = 'Belopp'
      FieldName = 'TotalSUM'
      Origin = 'TotalSUM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '########.00'
    end
    object cds_LoadFreightCostDetailsM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_LoadFreightCostDetailsPricePerM3_NET: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'PricePerM3_NET'
      Origin = 'PricePerM3_NET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###.00'
    end
    object cds_LoadFreightCostDetailsAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
      Origin = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadFreightCostDetailsLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadFreightCostDetailsFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      ProviderFlags = []
      FixedChar = True
    end
    object cds_LoadFreightCostDetailsLOAD_ID: TStringField
      DisplayLabel = 'LastID'
      FieldName = 'LOAD_ID'
      Origin = 'LOAD_ID'
      ProviderFlags = []
      Size = 50
    end
    object cds_LoadFreightCostDetailsLOADEDDATE: TSQLTimeStampField
      DisplayLabel = 'Utlastad'
      FieldName = 'LOADEDDATE'
      Origin = 'LOADEDDATE'
      ProviderFlags = []
    end
    object cds_LoadFreightCostDetailsSHIPPER: TStringField
      DisplayLabel = 'Fraktf'#246'rare'
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      ProviderFlags = []
      Size = 80
    end
    object cds_LoadFreightCostDetailsFROM_PLACE: TStringField
      DisplayLabel = 'Lastst'#228'lle'
      FieldName = 'FROM_PLACE'
      Origin = 'FROM_PLACE'
      ProviderFlags = []
      Size = 50
    end
    object cds_LoadFreightCostDetailsDESTINATION: TStringField
      DisplayLabel = 'Destination'
      FieldName = 'DESTINATION'
      Origin = 'DESTINATION'
      ProviderFlags = []
      Size = 50
    end
    object cds_LoadFreightCostDetailsDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostDetailsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostDetailsNote: TStringField
      DisplayLabel = 'Notering'
      FieldName = 'Note'
      Origin = 'Note'
      Size = 30
    end
  end
  object cdsClient: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vida_Clients'
    Left = 616
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@RoleType'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cdsClientClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cdsClientSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object sq_ClientData: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'CP.DefaultBillingAddressNo,'
      'C.ClientName,'
      'C.ClientNo,'
      'CP.InvoiceText,'
      'CP.LanguageCode,'
      'DT.DeliveryTerm,'
      'DT.DeliveryTerm_No,'
      ''
      'PayT.PaymentTermsNo,'
      'PT."Description" as PayDesc,'
      'PayT.FreightInDiscount,'
      'PayT.FreightInCommission ,'
      'PayT.CommissionPaidByCustomer,'
      'PayT.Discount1,'
      ''
      'CU.CurrencyNo,'
      ''
      'CU.CurrencyName'#9#9#9'AS CURRENCYNAME,'
      'ADR.AddressName'#9#9#9'AS BILL_ADDRESS_NAME,'
      'ADR.AddressLine1'#9#9'AS BILL_ADDRESSLINE1,'
      'ADR.AddressLine2'#9#9'AS BILL_ADDRESSLINE2,'
      'ADR.AddressLine3'#9#9'AS BILL_ADDRESSLINE3,'
      'ADR.AddressLine4'#9#9'AS BILL_ADDRESSLINE4,'
      'ADR.StateOrProvince'#9#9'AS BILL_STATEORPROVINCE,'
      'ADR.PostalCode'#9#9#9'AS BILL_POSTALCODE,'
      'ADRCY.CityName '#9#9#9'AS BILL_ADDRESSCITY,'
      'ADRCtry.CountryName '#9#9'AS BILL_ADDRESSCOUNTRY,'
      ''
      'ST_ADR.AddressName'#9#9#9'AS SHIPTO_ADDRESS_NAME,'
      'ST_ADR.AddressLine1'#9#9#9'AS SHIPTO_ADDRESSLINE1,'
      'ST_ADR.AddressLine2'#9#9#9'AS SHIPTO_ADDRESSLINE2,'#9
      'ST_ADR.AddressLine3'#9#9#9'AS SHIPTO_ADDRESSLINE3,'
      'ST_ADR.AddressLine4'#9#9#9'AS SHIPTO_ADDRESSLINE4,'
      'ST_ADR.StateOrProvince'#9#9#9'AS SHIPTO_PROVINCE,'
      'ST_ADR.PostalCode'#9#9#9'AS SHIPTO_POSTALCODE,'
      'ST_AdrCY.CityName '#9#9#9'AS SHIPTO_CITY,'
      'ST_AdrCtry.CountryName '#9#9#9'AS SHIPTO_COUNTRY,'
      'C.StatistikLandNr'
      ''
      ''
      ''
      ''
      'FROM dbo.Client C'
      '       left outer join ClientPreference CP'
      ''
      
        #9'INNER JOIN dbo.Currency'#9#9#9'CU'#9'ON'#9'CU.CurrencyNo'#9#9'= CP.DefaultCurr' +
        'encyNo'
      ''
      
        #9'INNER JOIN dbo.DeliveryTerm'#9#9'DT'#9'ON'#9'DT.DeliveryTerm_No'#9'= CP.Defa' +
        'ultDeliveryTermsNo'
      ''
      
        #9'INNER JOIN dbo.PaymentTerms'#9#9'PayT'#9'ON'#9'PayT.PaymentTermsNo'#9'= CP.D' +
        'efaultPaymentTermsNo'
      ''
      
        #9'INNER JOIN dbo.PaymentTermDesc'#9#9'PT'#9'ON'#9'PT.PaymentTermsNo'#9'= CP.De' +
        'faultPaymentTermsNo'
      #9#9#9#9#9#9#9'AND '#9'PT.LanguageCode'#9#9'= CP.LanguageCode'
      ''
      ''
      
        #9'INNER JOIN dbo.Address '#9#9'ADR'#9#9'ON'#9'ADR.AddressNo'#9#9'= CP.DefaultBil' +
        'lingAddressNo'
      #9'INNER JOIN dbo.CITY'#9#9'ADRCY'#9#9'ON'#9'ADrCY.CityNo '#9#9'= ADR.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9'ADrCtry'#9#9'ON'#9'ADrCtry.CountryNo '#9'= ADR.Co' +
        'untryNo'
      ''
      #9'LEFT OUTER JOIN dbo.Address '#9#9'ST_ADR'#9#9
      
        #9'INNER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR.City' +
        'No'
      
        #9'INNER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo '#9'= S' +
        'T_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'ST_ADR.AddressNo'#9'= CP.DefaultShippingAddressNo'
      ''
      #9#9#9#9#9' '#9#9'ON'#9'CP.ClientNo = C.ClientNo'
      ''
      'WHERE'
      'C.CLIENTNO = :CLIENTNO ')
    Left = 1048
    Top = 224
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ClientDataDefaultBillingAddressNo: TIntegerField
      FieldName = 'DefaultBillingAddressNo'
      Origin = 'DefaultBillingAddressNo'
    end
    object sq_ClientDataClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sq_ClientDataClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ClientDataInvoiceText: TStringField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      Size = 250
    end
    object sq_ClientDataLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object sq_ClientDataDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Origin = 'DeliveryTerm'
      Size = 21
    end
    object sq_ClientDataDeliveryTerm_No: TIntegerField
      FieldName = 'DeliveryTerm_No'
      Origin = 'DeliveryTerm_No'
    end
    object sq_ClientDataPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
    end
    object sq_ClientDataPayDesc: TStringField
      FieldName = 'PayDesc'
      Origin = 'PayDesc'
      Size = 100
    end
    object sq_ClientDataFreightInDiscount: TSmallintField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
    object sq_ClientDataFreightInCommission: TSmallintField
      FieldName = 'FreightInCommission'
      Origin = 'FreightInCommission'
    end
    object sq_ClientDataCommissionPaidByCustomer: TSmallintField
      FieldName = 'CommissionPaidByCustomer'
      Origin = 'CommissionPaidByCustomer'
    end
    object sq_ClientDataDiscount1: TFloatField
      FieldName = 'Discount1'
      Origin = 'Discount1'
    end
    object sq_ClientDataCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object sq_ClientDataCURRENCYNAME: TStringField
      FieldName = 'CURRENCYNAME'
      Origin = 'CURRENCYNAME'
      Size = 5
    end
    object sq_ClientDataBILL_ADDRESS_NAME: TStringField
      FieldName = 'BILL_ADDRESS_NAME'
      Origin = 'BILL_ADDRESS_NAME'
      Size = 80
    end
    object sq_ClientDataBILL_ADDRESSLINE1: TStringField
      FieldName = 'BILL_ADDRESSLINE1'
      Origin = 'BILL_ADDRESSLINE1'
      Size = 40
    end
    object sq_ClientDataBILL_ADDRESSLINE2: TStringField
      FieldName = 'BILL_ADDRESSLINE2'
      Origin = 'BILL_ADDRESSLINE2'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataBILL_ADDRESSLINE3: TStringField
      FieldName = 'BILL_ADDRESSLINE3'
      Origin = 'BILL_ADDRESSLINE3'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataBILL_ADDRESSLINE4: TStringField
      FieldName = 'BILL_ADDRESSLINE4'
      Origin = 'BILL_ADDRESSLINE4'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataBILL_STATEORPROVINCE: TStringField
      FieldName = 'BILL_STATEORPROVINCE'
      Origin = 'BILL_STATEORPROVINCE'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataBILL_POSTALCODE: TStringField
      FieldName = 'BILL_POSTALCODE'
      Origin = 'BILL_POSTALCODE'
      FixedChar = True
    end
    object sq_ClientDataBILL_ADDRESSCITY: TStringField
      FieldName = 'BILL_ADDRESSCITY'
      Origin = 'BILL_ADDRESSCITY'
      Size = 50
    end
    object sq_ClientDataBILL_ADDRESSCOUNTRY: TStringField
      FieldName = 'BILL_ADDRESSCOUNTRY'
      Origin = 'BILL_ADDRESSCOUNTRY'
      Size = 30
    end
    object sq_ClientDataSHIPTO_ADDRESS_NAME: TStringField
      FieldName = 'SHIPTO_ADDRESS_NAME'
      Origin = 'SHIPTO_ADDRESS_NAME'
      Size = 80
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE1'
      Origin = 'SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE2'
      Origin = 'SHIPTO_ADDRESSLINE2'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE3'
      Origin = 'SHIPTO_ADDRESSLINE3'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE4'
      Origin = 'SHIPTO_ADDRESSLINE4'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataSHIPTO_PROVINCE: TStringField
      FieldName = 'SHIPTO_PROVINCE'
      Origin = 'SHIPTO_PROVINCE'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataSHIPTO_POSTALCODE: TStringField
      FieldName = 'SHIPTO_POSTALCODE'
      Origin = 'SHIPTO_POSTALCODE'
      FixedChar = True
    end
    object sq_ClientDataSHIPTO_CITY: TStringField
      FieldName = 'SHIPTO_CITY'
      Origin = 'SHIPTO_CITY'
      Size = 50
    end
    object sq_ClientDataSHIPTO_COUNTRY: TStringField
      FieldName = 'SHIPTO_COUNTRY'
      Origin = 'SHIPTO_COUNTRY'
      Size = 30
    end
    object sq_ClientDataStatistikLandNr: TIntegerField
      FieldName = 'StatistikLandNr'
      Origin = 'StatistikLandNr'
    end
  end
  object sq_LoadFreightCost: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'B.FreightCost,'
      'B.FreightCostVolUnit,'
      'B.FreightCostCurrency,'
      ''
      'CASE WHEN IH.InvoiceType  = 0 THEN'
      
        '(Select InvNo.InvoiceNo FROM dbo.InvoiceNumber invno WHERE invno' +
        '.InternalInvoiceNo = IH.InternalInvoiceNo)'
      'WHEN IH.InvoiceType  = 1 THEN'
      
        '(Select InvNo.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber i' +
        'nvno WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo)'
      'WHEN IH.InvoiceType  = 2 THEN'
      
        '(Select InvNo.ProformaInvoiceNo FROM dbo.ProformaInvoiceNumber i' +
        'nvno WHERE invno.InternalInvoiceNo = IH.InternalInvoiceNo)'
      'WHEN IH.InvoiceType  = 4 THEN'
      
        '(Select InvNo.InvoiceNo FROM dbo.InvoiceNo_USA invno WHERE invno' +
        '.InternalInvoiceNo = IH.InternalInvoiceNo)'
      'WHEN IH.InvoiceType  = 5 THEN'
      
        '(Select InvNo.InvoiceNo FROM dbo.InvNo_FW invno WHERE invno.Inte' +
        'rnalInvoiceNo = IH.InternalInvoiceNo)'
      'END AS Fakturanr,'
      ''
      '(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX '
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom DE' +
        'SC)'
      ' *'
      ''
      
        'CASE WHEN B.FreightCostVolUnit = 11 THEN B.FreightCost / SUM(PTD' +
        '.Totalm3Actual)'
      'WHEN B.FreightCostVolUnit = 3 THEN B.FreightCost '
      'END AS PrisPerAM3SEK,'
      ''
      'L.LocalShippingCompanyNo,'
      'L.LoadNo '#9#9#9'AS Lastnr,'
      'L.FS'#9#9#9#9'AS FS,'
      'L.LoadID'#9#9#9'AS LastID,'
      'L.LoadedDate'#9#9#9'AS Utlastad,'
      'shipper.clientname'#9#9'AS Spedit'#246'r,'
      'FromPlace.CityName '#9#9'AS Utlastningsort,'
      'FromLIP.LogicalInventoryName AS Utlastningslager,'
      'ToPlace.CityName '#9#9'AS Destination,'
      'SUM(PTD.Totalm3Actual) '#9#9'AS AM3,'
      '--LFC.PricePerM3_NET'#9#9'AS PRICE,'
      'LFC.TotalSUM'#9#9#9'AS Belopp,'
      '--LFC.CreatedUser'#9#9#9'AS CREATEDUSER,'
      '--LFC.ModifiedUser'#9#9'AS MODIFIEDUSER,'
      '--LFC.DateCreated'#9#9#9'AS DATECREATED,'
      '--LFC.DateModified'#9#9'AS DATEMODIFIED,'
      'L.SupplierNo'#9#9#9'AS SupplierNo,'
      'LSP.ShippingPlanNo'#9#9'AS LO'
      'FROM   dbo.CustomerShippingPlanHeader csh'
      ''
      
        'Inner Join dbo.Booking B on B.ShippingPlanNo = csh.ShippingPlanN' +
        'o'
      
        'left  outer join Client Shipper'#9'on shipper.clientno = B.Shipping' +
        'CompanyNo'
      'INNER JOIN dbo.Orders OH on OH.OrderNo = csh.OrderNo'
      
        'INNER JOIN dbo.LoadShippingPlan LSP ON '#9'LSP.SHIPPINGPLANNO = CSH' +
        '.SHIPPINGPLANNO'
      'INNER JOIN dbo.Loads L ON'#9'L.LoadNo = LSP.LoadNo'
      'INNER JOIN dbo.Invoiced_Load IL ON'#9'IL.LoadNo = L.LoadNo'
      
        'INNER JOIN dbo.Invoiceheader IH on IH.InternalInvoiceNo = IL.Int' +
        'ernalInvoiceNo'
      'INNER JOIN dbo.Loaddetail LD ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9#9'AND LD.SHIPPINGPLANNO = LSP.SHIPPINGPLANNO'
      
        'Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPl' +
        'anDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        '--Inner Join dbo.ShippingPlan_ShippingAddress SPA on SPA.Shippin' +
        'gPlanNo = csd.ShippingPlanNo'
      '--'#9#9#9#9#9#9#9#9#9#9#9#9'AND SPA.Reference = CSD.Reference'
      '--Inner Join dbo.Address Adr on Adr.AddressNo = SPA.AddressNo'
      '--Inner Join dbo.City '
      
        'INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.Package' +
        'TypeNo'
      ''
      
        'left  outer join dbo.City FromPlace'#9'on FromPlace.CityNo = CSH.De' +
        'liveryTermsNo'
      
        'left  outer join dbo.LogicalInventoryPoint FromLIP'#9'on FromLIP.Lo' +
        'gicalInventoryPointNo = CSH.PaymentTermsNo'
      
        'left  outer join dbo.City ToPlace'#9'on ToPlace.CityNo = CSH.Destin' +
        'ationNo'
      'left join dbo.LoadFreightCost LFC'#9'on L.LoadNo = LFC.LoadNo'
      
        'Inner Join dbo.Confirmed_Load'#9'CL ON CL.Confirmed_LoadNo = LSP.Lo' +
        'adNo'
      '  '#9#9#9#9'and CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo'
      '--Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo'
      '--AND CR.RoleType = 9'
      'where'
      'OH.SalesRegionNo = 741'
      'AND LSP.ShippingPlanNo = 10191'
      '-- AND L.LocalShippingCompanyNo = 150'
      '--AND LSP.ConfirmedByReciever = 1'
      'AND  L.LoadNo NOT IN (Select LoadNo FROM LoadFreightCost)'
      
        'group by L.LocalShippingCompanyNo,L.LoadNo, L.FS, L.LoadID, L.Lo' +
        'adedDate, shipper.clientname,'
      
        'FromPlace.CityName, ToPlace.CityName, LFC.PricePerM3_NET, LFC.To' +
        'talSUM,LFC.CreatedUser,'
      
        'LFC.ModifiedUser, LFC.DateCreated, LFC.DateModified, L.SupplierN' +
        'o, LSP.ShippingPlanNo,'
      'B.FreightCost,'
      'B.FreightCostVolUnit,'
      'B.FreightCostCurrency,'
      
        'IH.CurrencyNo, IH.InvoiceDate, IH.InternalInvoiceNo, IH.InvoiceT' +
        'ype, FromLIP.LogicalInventoryName'
      'Order by L.LoadNo desc'
      '')
    Left = 696
    Top = 16
    object sq_LoadFreightCostFreightCost: TFloatField
      FieldName = 'FreightCost'
      Origin = 'FreightCost'
    end
    object sq_LoadFreightCostFreightCostVolUnit: TIntegerField
      FieldName = 'FreightCostVolUnit'
      Origin = 'FreightCostVolUnit'
    end
    object sq_LoadFreightCostFreightCostCurrency: TIntegerField
      FieldName = 'FreightCostCurrency'
      Origin = 'FreightCostCurrency'
    end
    object sq_LoadFreightCostFakturanr: TIntegerField
      FieldName = 'Fakturanr'
      Origin = 'Fakturanr'
      ReadOnly = True
    end
    object sq_LoadFreightCostPrisPerAM3SEK: TFloatField
      FieldName = 'PrisPerAM3SEK'
      Origin = 'PrisPerAM3SEK'
      ReadOnly = True
    end
    object sq_LoadFreightCostLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      Origin = 'LocalShippingCompanyNo'
    end
    object sq_LoadFreightCostLastnr: TIntegerField
      FieldName = 'Lastnr'
      Origin = 'Lastnr'
      Required = True
    end
    object sq_LoadFreightCostFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object sq_LoadFreightCostLastID: TStringField
      FieldName = 'LastID'
      Origin = 'LastID'
      Size = 50
    end
    object sq_LoadFreightCostUtlastad: TSQLTimeStampField
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
    end
    object sq_LoadFreightCostSpeditr: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      Size = 80
    end
    object sq_LoadFreightCostUtlastningsort: TStringField
      FieldName = 'Utlastningsort'
      Origin = 'Utlastningsort'
      Size = 50
    end
    object sq_LoadFreightCostUtlastningslager: TStringField
      FieldName = 'Utlastningslager'
      Origin = 'Utlastningslager'
      Size = 50
    end
    object sq_LoadFreightCostDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      Size = 50
    end
    object sq_LoadFreightCostAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object sq_LoadFreightCostBelopp: TFloatField
      FieldName = 'Belopp'
      Origin = 'Belopp'
    end
    object sq_LoadFreightCostSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object sq_LoadFreightCostLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
  end
  object cdsDestination: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Cities'
    Left = 808
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object cdsDestinationCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      Required = True
    end
    object cdsDestinationCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
  end
  object sq_UpdateLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.Loads'
      'Set LocalShippingCompanyNo = :LocalShippingCompanyNo'
      'WHERE Loads.LoadNo = :LoadNo')
    Left = 952
    Top = 24
    ParamData = <
      item
        Name = 'LOCALSHIPPINGCOMPANYNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_UpdLoadII: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.Loads'
      'Set LocalLoadingLocation = :LocalLoadingLocation,'
      'LocalDestinationNo = :LocalDestinationNo'
      'WHERE Loads.LoadNo = :LoadNo')
    Left = 952
    Top = 80
    ParamData = <
      item
        Name = 'LOCALLOADINGLOCATION'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOCALDESTINATIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsFakturaLoads: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.LoadFreightCost (AvrakningsNo, LoadNo, M3_NET, P' +
        'ricePerM3_NET, TotalSUM,'
      'CreatedUser, ModifiedUser, DateCreated, DateModified, Note)'
      'Select :AvrakningNr, IL.LoadNo, SUM(PTD.Totalm3Actual),'
      ''
      ':TotalFrakt /'
      '(Select SUM(PTD.Totalm3Actual) FROM dbo.Invoiced_Load IL'
      'INNER JOIN dbo.Loaddetail LD ON'#9'LD.LoadNo '#9#9'= IL.LoadNo'
      
        'INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.Package' +
        'TypeNo'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo),'
      ''
      ':TotalFrakt /'
      '(Select SUM(PTD.Totalm3Actual) FROM dbo.Invoiced_Load IL'
      'INNER JOIN dbo.Loaddetail LD ON'#9'LD.LoadNo '#9#9'= IL.LoadNo'
      
        'INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.Package' +
        'TypeNo'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo)'
      '* SUM(PTD.Totalm3Actual),'
      ''
      '8, 8, GetDate(), GetDate(), '#39#39
      ''
      'from dbo.Invoiced_Load IL'
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'L.LoadNo '#9#9'= IL.LoadNo'
      'INNER JOIN dbo.Loaddetail LD ON'#9'LD.LoadNo '#9#9'= L.LoadNo'
      
        'INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.Package' +
        'TypeNo'
      ''
      'WHERE InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Group By IL.LoadNo'
      '')
    Left = 920
    Top = 168
    ParamData = <
      item
        Name = 'AVRAKNINGNR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TOTALFRAKT'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TOTALFRAKT'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsAvrHdr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Insert into dbo.LoadFreightCostHeader(AvrakningsNo, Status'
      ', LocalShipperNo, AvrakningsDate, CreatedUser, ModifiedUser,'
      'DateCreated, DateModified, Note, ShippersInvoiceNo, VerkNo)'
      
        'Select :AvrakningsNr, :Status, :ShipperNo, getDate(), :UserID, :' +
        'UserID, getDate(), getDate(), :Note,'
      ':ShippersInvoiceNo, :VerkNo')
    Left = 424
    Top = 264
    ParamData = <
      item
        Name = 'AVRAKNINGSNR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SHIPPERSINVOICENO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cdsClientAddress: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      ''
      'ST_ADR.AddressNo'#9#9#9'AS ADDRESS_NO,'
      'ST_ADR.AddressName'#9#9#9'AS ADDRESS_NAME,'
      'ST_ADR.AddressLine1'#9#9#9'AS ADDRESSLINE1,'
      'ST_ADR.AddressLine2'#9#9#9'AS ADDRESSLINE2,'
      'ST_ADR.AddressLine3'#9#9#9'AS ADDRESSLINE3,'
      'ST_ADR.AddressLine4'#9#9#9'AS ADDRESSLINE4,'
      'ST_ADR.StateOrProvince'#9#9#9'AS PROVINCE,'
      'ST_ADR.PostalCode'#9#9#9'AS POSTALCODE,'
      'ST_AdrCY.CityName '#9#9#9'AS CITY,'
      'ST_AdrCtry.CountryName '#9#9#9'AS COUNTRY'
      ''
      ''
      ''
      'FROM CompanyAddress ST'
      
        #9'INNER JOIN dbo.Address '#9#9'ST_ADR'#9#9'ON'#9'ST_ADR.AddressNo'#9'= ST.Addre' +
        'ssNo'
      
        #9'INNER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR.City' +
        'No'
      
        #9'INNER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo '#9'= S' +
        'T_ADR.CountryNo'
      ''
      ''
      'WHERE'
      ' ST.ClientNo = :ClientNo'
      ' AND ST.AddressType = :AddressType')
    Left = 40
    Top = 152
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ADDRESSTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsClientAddressADDRESS_NO: TIntegerField
      FieldName = 'ADDRESS_NO'
      Origin = 'ADDRESS_NO'
      Required = True
    end
    object cdsClientAddressADDRESS_NAME: TStringField
      FieldName = 'ADDRESS_NAME'
      Origin = 'ADDRESS_NAME'
      Size = 80
    end
    object cdsClientAddressADDRESSLINE1: TStringField
      FieldName = 'ADDRESSLINE1'
      Origin = 'ADDRESSLINE1'
      Size = 40
    end
    object cdsClientAddressADDRESSLINE2: TStringField
      FieldName = 'ADDRESSLINE2'
      Origin = 'ADDRESSLINE2'
      FixedChar = True
      Size = 40
    end
    object cdsClientAddressADDRESSLINE3: TStringField
      FieldName = 'ADDRESSLINE3'
      Origin = 'ADDRESSLINE3'
      FixedChar = True
      Size = 40
    end
    object cdsClientAddressADDRESSLINE4: TStringField
      FieldName = 'ADDRESSLINE4'
      Origin = 'ADDRESSLINE4'
      FixedChar = True
      Size = 40
    end
    object cdsClientAddressPROVINCE: TStringField
      FieldName = 'PROVINCE'
      Origin = 'PROVINCE'
      FixedChar = True
      Size = 40
    end
    object cdsClientAddressPOSTALCODE: TStringField
      FieldName = 'POSTALCODE'
      Origin = 'POSTALCODE'
      FixedChar = True
    end
    object cdsClientAddressCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 50
    end
    object cdsClientAddressCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Required = True
      Size = 30
    end
  end
  object cds_LoadFreightCostHeader2: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    SQL.Strings = (
      'Select LFCH.* , C.clientname as SHIPPER,'
      've.ClientName AS VERK,'
      'usr.UserName AS ANVANDARE'
      'FROM'
      'dbo.LoadFreightCostHeader LFCH'
      'Left Outer Join dbo.Client C On C.ClientNo = LFCH.LocalShipperNo'
      'Left Outer Join dbo.Client ve On ve.ClientNo = LFCH.VerkNo'
      'Left Outer Join dbo.Users usr on usr.UserID = LFCH.CreatedUser'
      '')
    Left = 424
    Top = 24
    object cds_LoadFreightCostHeader2AvrakningsNo: TIntegerField
      DisplayLabel = 'Avr'#228'kningsnr'
      FieldName = 'AvrakningsNo'
      Origin = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadFreightCostHeader2Status: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostHeader2LocalShipperNo: TIntegerField
      FieldName = 'LocalShipperNo'
      Origin = 'LocalShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostHeader2AvrakningsDate: TSQLTimeStampField
      DisplayLabel = 'Avr'#228'knad'
      FieldName = 'AvrakningsDate'
      Origin = 'AvrakningsDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostHeader2CreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostHeader2ModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostHeader2DateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostHeader2DateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostHeader2Note: TMemoField
      DisplayLabel = 'Notering'
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_LoadFreightCostHeader2ShippersInvoiceNo: TStringField
      DisplayLabel = 'Ert fakturanr'
      FieldName = 'ShippersInvoiceNo'
      Origin = 'ShippersInvoiceNo'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LoadFreightCostHeader2VerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadFreightCostHeader2SHIPPER: TStringField
      DisplayLabel = 'Fraktf'#246'rare'
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      ProviderFlags = []
      Size = 80
    end
    object cds_LoadFreightCostHeader2VERK: TStringField
      DisplayLabel = 'Verk'
      FieldName = 'VERK'
      Origin = 'VERK'
      ProviderFlags = []
      Size = 80
    end
    object cds_LoadFreightCostHeader2ANVANDARE: TStringField
      DisplayLabel = 'Anv'#228'ndare'
      FieldName = 'ANVANDARE'
      Origin = 'ANVANDARE'
      ProviderFlags = []
    end
  end
  object cds_LoadFC: TFDQuery
    BeforePost = cds_LoadFCBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    SQL.Strings = (
      'SELECT distinct'
      'L.LoadNo AS Lastnr,'
      'L.FS AS FS,'
      'L.LoadID AS LastID,'
      'L.LoadedDate AS Utlastad,'
      'shipper.clientname AS Spedit'#246'r,'
      'FromPlace.CityName AS Utlastningsort,'
      'ToPlace.CityName AS Destination,'
      'SUM(PTD.Totalm3Actual) AS AM3,'
      'Count(LD.PackageNo) AS Paket,'
      'L.SupplierNo AS SupplierNo,'
      'LSP.ShippingPlanNo AS LO,'
      ''
      '0 AS Markerad,'
      '0.000 AS Belopp,'
      '0.000 AS PrisPerAM3SEK,'
      ''
      '(Select  Count(L2.FS) from dbo.Client_LoadingLocation     CLL2'
      
        'INNER JOIN dbo.LoadShippingPlan LSP2 ON LSP2.LoadingLocationNo =' +
        ' CLL2.PhyInvPointNameNo'
      'INNER JOIN dbo.Loads L2 ON L2.LoadNo = LSP2.LoadNo'
      'WHERE L2.FS = L.FS'
      'AND LSP2.ShippingPlanNo = LSP.ShippingPlanNo'
      'AND CLL2.ClientNo = 741'
      
        'AND  L2.LoadNo NOT IN (Select L3.LoadNo FROM dbo.LoadFreightCost' +
        ' L3'
      'WHERE L3.LoadNo = L2.LoadNo)) AS NoOfFS,'
      'L.LocalShippingCompanyNo AS ShippingCompanyNo,'
      'LSP.LoadingLocationNo,'
      'csh.CustomerNo,'
      'ssp.CustomerNo AS ssp_CustomerNo,'
      #39'                              '#39' AS Note'
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.LoadingLocationNo ' +
        '= CLL.PhyInvPointNameNo'
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'L.LoadNo '#9#9'= LSP.LoadNo'
      'INNER JOIN dbo.Loaddetail LD ON'#9'LD.LoadNo '#9#9'= LSP.LoadNo'
      'AND LD.SHIPPINGPLANNO = LSP.SHIPPINGPLANNO'
      
        'INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.Package' +
        'TypeNo'
      
        'Left  outer join dbo.Client Shipper'#9'on shipper.clientno = L.Loca' +
        'lShippingCompanyNo'
      
        'Left  outer  join dbo.City FromPlace'#9'on FromPlace.CityNo = L.Loc' +
        'alLoadingLocation'
      
        'Left  outer  join dbo.City ToPlace'#9#9'on ToPlace.CityNo = L.LocalD' +
        'estinationNo'
      
        'Inner Join dbo.SupplierShippingPlan ssp on ssp.SupplierShipPlanO' +
        'bjectNo = LD.DefsspNo'
      
        'Inner Join dbo.Confirmed_Load CL ON CL.Confirmed_LoadNo = LSP.Lo' +
        'adNo'
      '  '#9#9#9#9'and CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Left  outer  join dbo.CustomerShippingPlanHeader csh on csh.Ship' +
        'pingPlanNo = ssp.ShippingPlanNo'
      ''
      ''
      'where'
      'CLL.ClientNo = 741'
      'and L.LoadNo = 1'
      'AND L.LocalShippingCompanyNo = 132'
      'AND  L.LoadNo NOT IN (Select LoadNo FROM dbo.LoadFreightCost)'
      
        'group by L.LocalShippingCompanyNo,L.LoadNo, L.FS, L.LoadID, L.Lo' +
        'adedDate, shipper.clientname,'
      'FromPlace.CityName, ToPlace.CityName,'
      'L.SupplierNo, LSP.ShippingPlanNo, L.LocalShippingCompanyNo,'
      'LSP.LoadingLocationNo, csh.CustomerNo, ssp.CustomerNo'
      'Order by L.LoadNo desc')
    Left = 224
    Top = 24
    object cds_LoadFCLastnr: TIntegerField
      FieldName = 'Lastnr'
      Origin = 'Lastnr'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
    end
    object cds_LoadFCLastID: TStringField
      FieldName = 'LastID'
      Origin = 'LastID'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cds_LoadFCUtlastad: TSQLTimeStampField
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCSpeditr: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      ProviderFlags = []
      Size = 80
    end
    object cds_LoadFCUtlastningsort: TStringField
      FieldName = 'Utlastningsort'
      Origin = 'Utlastningsort'
      ProviderFlags = []
      Size = 50
    end
    object cds_LoadFCDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      ProviderFlags = []
      Size = 50
    end
    object cds_LoadFCAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadFCPaket: TIntegerField
      FieldName = 'Paket'
      Origin = 'Paket'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCMarkerad: TIntegerField
      FieldName = 'Markerad'
      Origin = 'Markerad'
      ProviderFlags = []
    end
    object cds_LoadFCBelopp: TBCDField
      FieldName = 'Belopp'
      Origin = 'Belopp'
      ProviderFlags = []
      OnChange = cds_LoadFCBeloppChange
      DisplayFormat = '#,###,###,###.00'
      Precision = 3
      Size = 3
    end
    object cds_LoadFCNoOfFS: TIntegerField
      DisplayLabel = 'FS dubletter'
      FieldName = 'NoOfFS'
      Origin = 'NoOfFS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
      ProviderFlags = []
    end
    object cds_LoadFCLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = []
    end
    object cds_LoadFCCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = []
    end
    object cds_LoadFCssp_CustomerNo: TIntegerField
      FieldName = 'ssp_CustomerNo'
      Origin = 'ssp_CustomerNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCNote: TStringField
      DisplayLabel = 'Notering'
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object cds_LoadFCPrisPerAM3SEK: TBCDField
      DisplayLabel = 'Pris'
      FieldName = 'PrisPerAM3SEK'
      Origin = 'PrisPerAM3SEK'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
      Precision = 3
      Size = 3
    end
  end
  object cds_genfreight: TFDQuery
    AfterInsert = cds_genfreightAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ShippingCosts')
    Left = 696
    Top = 176
    object cds_genfreightSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_genfreightscrow: TIntegerField
      FieldName = 'scrow'
      Origin = 'scrow'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_genfreighttype: TStringField
      FieldName = 'type'
      Origin = 'type'
      ProviderFlags = [pfInUpdate]
    end
    object cds_genfreightValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
      Origin = 'ValidFrom'
      ProviderFlags = [pfInUpdate]
    end
    object cds_genfreightCost: TBCDField
      FieldName = 'Cost'
      Origin = 'Cost'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_genfreightCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_genfreightVolunitNo: TIntegerField
      FieldName = 'VolunitNo'
      Origin = 'VolunitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_genfreightDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_genfreightModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsLoadFreightCost: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    SQL.Strings = (
      'select * from LoadFreightCost')
    Left = 792
    Top = 176
    object cdsLoadFreightCostAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
      Origin = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadFreightCostLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadFreightCostM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object cdsLoadFreightCostPricePerM3_NET: TFloatField
      FieldName = 'PricePerM3_NET'
      Origin = 'PricePerM3_NET'
    end
    object cdsLoadFreightCostTotalSUM: TFloatField
      FieldName = 'TotalSUM'
      Origin = 'TotalSUM'
    end
    object cdsLoadFreightCostCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsLoadFreightCostModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsLoadFreightCostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsLoadFreightCostDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cdsLoadFreightCostNote: TStringField
      FieldName = 'Note'
      Origin = 'Note'
      Size = 30
    end
  end
  object cds_LF: TFDQuery
    BeforePost = cds_LFBeforePost
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_LFIndex01'
        Fields = 'InternalInvoiceNo;ShippingPlanNo'
      end>
    IndexName = 'cds_LFIndex01'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    SQL.Strings = (
      'SELECT distinct'
      'IH.InvoiceType,'
      'IL.ShippingPlanNo,'
      'Inos.InvoiceNo AS Fakturanr,'
      'IH.InternalInvoiceNo,'
      ''
      'CuFrakt.CurrencyName AS FraktValuta,'
      'puFrakt.TemplateUnitName AS FraktEnhet,'
      'B.FreightCost AS Fraktkostnad,'
      '0 AS ConfirmFrakt,'
      ''
      '(Select SUM(ALO.AmountAttested) FROM'
      'dbo.Att_Ext_LO ALO'
      
        'Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.Sequens' +
        'No = ALO.SequensNo'
      'WHERE ALO.InternalInvoiceNo = IH.InternalInvoiceNo'
      'AND ALO.ShippingPlanNo = IL.ShippingPlanNo'
      'AND AttestHead.Description = '#39'Frakt'#39') AS Frakt,'
      ''
      '(Select SUM(invd.ProductValue) from dbo.InvoiceDetail invd'
      'WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo'
      'AND invd.ShippingPlanNo = IL.ShippingPlanNo'
      'AND invd.TypeOfRow = 3) AS Fraktkostnad_sum,'
      ''
      'IH.InvoiceDate AS Utlastad,'
      'shipper.clientname AS Spedit'#246'r,'
      ''
      '(Select SUM(invd.ActualNetM3) from dbo.InvoiceDetail invd'
      'WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo'
      'AND invd.ShippingPlanNo = IL.ShippingPlanNo'
      'AND invd.TypeOfRow = 1) AS AM3,'
      ''
      'B.ShippingCompanyNo AS ShippingCompanyNo,'
      ''
      'IH.Total_Product_Value_No_Freight'#9'AS Varuv'#228'rde,'
      'IH.Tot_Inv_Inc_Freight_Extras'#9#9'AS Fakturav'#228'rde,'
      ''
      'IH.AgentCommission AS Kommission_Percent,'
      'IH.Commission AS Kommission_Sum,'
      'IH.FreightInCommission AS Kommission_villkor,'
      'IH.CurrencyName AS ValutaFaktura,'
      'IH.AgentName AS Agent,'
      'IH.AgentNo,'
      'IH.CustomerName AS Kund,'
      '0 AS ConfirmKomm,'
      ''
      '(Select SUM(ALO.AmountAttested) FROM'
      'dbo.Att_Ext_LO ALO'
      
        'Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.Sequens' +
        'No = ALO.SequensNo'
      'WHERE ALO.InternalInvoiceNo = IH.InternalInvoiceNo'
      'AND ALO.ShippingPlanNo = IL.ShippingPlanNo'
      'AND AttestHead.Description = '#39'Komm'#39') AS Komm,'
      ''
      ''
      
        'CuFrakt.CurrencyNo AS FraktCurrencyNo, IH.CurrencyNo AS KommCurr' +
        'encyNo,'
      'CuFrakt.CurrencyNo AS ValutaNr'
      ''
      
        'FROM dbo.Invoiceheader IH -- on IH.InternalInvoiceNo = IL.Intern' +
        'alInvoiceNo'
      
        'INNER JOIN dbo.InvoiceNos inos on inos.InternalInvoiceNo = IH.In' +
        'ternalInvoiceNo'
      
        'Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.Interna' +
        'lInvoiceNo'
      ''
      ''
      'Inner Join dbo.Booking B'
      
        'Left Outer Join dbo.Currency CuFrakt on CuFrakt.CurrencyNo = B.F' +
        'reightCostCurrency'
      
        'Left Outer Join dbo.PackUnit puFrakt on puFrakt.TemplateUnitNo =' +
        ' B.FreightCostVolUnit'
      
        'Left Outer join Client Shipper'#9'on shipper.clientno = B.ShippingC' +
        'ompanyNo'
      'on B.ShippingPlanNo = IL.ShippingPlanNo'
      ''
      'where IH.InternalInvoiceNo = -11'
      '--OH.SalesRegionNo = 741'
      '--AND B.ShippingCompanyNo = :ShippingCompanyNo'
      '--AND  L.LoadNo NOT IN (Select LoadNo FROM dbo.LoadFreightCost)'
      ''
      'Order By IL.ShippingPlanNo, IH.InternalInvoiceNo')
    Left = 584
    Top = 328
    object cds_LFAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LFInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = []
    end
    object cds_LFKommission_Percent: TFloatField
      DisplayLabel = 'Komm %'
      FieldName = 'Kommission_Percent'
      Origin = 'Kommission_Percent'
      ProviderFlags = []
      DisplayFormat = '##.00'
    end
    object cds_LFKommission_Sum: TFloatField
      DisplayLabel = 'Kommission sum'
      FieldName = 'Kommission_Sum'
      Origin = 'Kommission_Sum'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFKommission_villkor: TIntegerField
      DisplayLabel = 'Kommission villkor'
      FieldName = 'Kommission_villkor'
      Origin = 'Kommission_villkor'
      ProviderFlags = []
    end
    object cds_LFValutaFaktura: TStringField
      FieldName = 'ValutaFaktura'
      Origin = 'ValutaFaktura'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object cds_LFAgent: TStringField
      FieldName = 'Agent'
      Origin = 'Agent'
      ProviderFlags = []
      FixedChar = True
      Size = 80
    end
    object cds_LFKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = []
      FixedChar = True
      Size = 80
    end
    object cds_LFShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = []
    end
    object cds_LFFakturanr: TIntegerField
      FieldName = 'Fakturanr'
      Origin = 'Fakturanr'
      ProviderFlags = []
    end
    object cds_LFFraktValuta: TStringField
      DisplayLabel = 'Valuta(frakt)'
      FieldName = 'FraktValuta'
      Origin = 'FraktValuta'
      ProviderFlags = []
      Size = 5
    end
    object cds_LFFraktEnhet: TStringField
      DisplayLabel = 'Fraktkostnad/enhet'
      FieldName = 'FraktEnhet'
      Origin = 'FraktEnhet'
      ProviderFlags = []
    end
    object cds_LFFraktkostnad: TFloatField
      FieldName = 'Fraktkostnad'
      Origin = 'Fraktkostnad'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFConfirmFrakt: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmFrakt'
      Origin = 'ConfirmFrakt'
      ProviderFlags = []
      OnChange = cds_LFConfirmFraktChange
    end
    object cds_LFFraktkostnad_sum: TFloatField
      DisplayLabel = 'Fraktkostnad sum'
      FieldName = 'Fraktkostnad_sum'
      Origin = 'Fraktkostnad_sum'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFUtlastad: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
      ProviderFlags = []
    end
    object cds_LFSpeditr: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      ProviderFlags = []
      Size = 80
    end
    object cds_LFShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
      ProviderFlags = []
    end
    object cds_LFVaruvrde: TFloatField
      FieldName = 'Varuv'#228'rde'
      Origin = '[Varuv'#228'rde]'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFFakturavrde: TFloatField
      FieldName = 'Fakturav'#228'rde'
      Origin = '[Fakturav'#228'rde]'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFConfirmKomm: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmKomm'
      Origin = 'ConfirmKomm'
      OnChange = cds_LFConfirmKommChange
    end
    object cds_LFFrakt: TFloatField
      FieldName = 'Frakt'
      Origin = 'Frakt'
      OnChange = cds_LFFraktChange
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_LFKomm: TFloatField
      FieldName = 'Komm'
      Origin = 'Komm'
      OnChange = cds_LFKommChange
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_LFFraktCurrencyNo: TIntegerField
      FieldName = 'FraktCurrencyNo'
      Origin = 'FraktCurrencyNo'
    end
    object cds_LFKommCurrencyNo: TIntegerField
      FieldName = 'KommCurrencyNo'
      Origin = 'KommCurrencyNo'
    end
    object cds_LFAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object cds_LFInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
      ProviderFlags = []
    end
    object cds_LFValutaNr: TIntegerField
      FieldName = 'ValutaNr'
      Origin = 'ValutaNr'
      ProviderFlags = []
    end
    object cds_LFEgenValuta: TStringField
      DisplayLabel = 'Att.valuta'
      FieldKind = fkLookup
      FieldName = 'EgenValuta'
      LookupDataSet = dmsSystem.cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'ValutaNr'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
  end
  object sq_GetLoadNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select distinct LoadNo From dbo.LoadShippingPlan'
      'Where ShippingPlanNo = :LO')
    Left = 584
    Top = 200
    ParamData = <
      item
        Name = 'LO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLoadNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_FindAvr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'LFC.AvrakningsNo, ve.ClientName AS VERK, LFCH.VerkNo'
      ''
      'FROM LoadFreightCost LFC'
      
        'Inner Join dbo.LoadFreightCostHeader LFCH ON LFCH.AvrakningsNo =' +
        ' LFC.AvrakningsNo'
      'Left Outer Join dbo.Client ve On ve.ClientNo = LFCH.VerkNo'
      'WHERE LFC.LoadNo = :LoadNo')
    Left = 584
    Top = 264
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_FindAvrAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
      Origin = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_FindAvrVERK: TStringField
      FieldName = 'VERK'
      Origin = 'VERK'
      Size = 80
    end
    object sq_FindAvrVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
  end
  object sq_GetAddressNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select AddressNo From ShippingPlan_ShippingAddress'
      'Where '
      'ShippingPlanNo = :ShippingPlanNo'
      'AND Reference = :Reference')
    Left = 1048
    Top = 168
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetAddressNoAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      Required = True
    end
  end
  object sp_PcsPerLength: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_GetPiecesPerLengthTEST'
    Left = 40
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PicesPerLength'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 8000
      end
      item
        Position = 4
        Name = '@NomPicesPerLength'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 8000
      end>
  end
  object sp_vis_GenOSRunAll: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GenOSRunAll'
    Left = 48
    Top = 336
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_vis_GenOSRunAllUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
    end
    object sp_vis_GenOSRunAllORDER_STATUS: TIntegerField
      FieldName = 'ORDER_STATUS'
      Origin = 'ORDER_STATUS'
    end
    object sp_vis_GenOSRunAllORDER_NO: TStringField
      FieldName = 'ORDER_NO'
      Origin = 'ORDER_NO'
    end
    object sp_vis_GenOSRunAllSALES_REGION: TStringField
      FieldName = 'SALES_REGION'
      Origin = 'SALES_REGION'
      Size = 80
    end
    object sp_vis_GenOSRunAllMARKET_REGION: TStringField
      FieldName = 'MARKET_REGION'
      Origin = 'MARKET_REGION'
      Size = 10
    end
    object sp_vis_GenOSRunAllCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 80
    end
    object sp_vis_GenOSRunAllDELIVERY_COUNTRY: TStringField
      FieldName = 'DELIVERY_COUNTRY'
      Origin = 'DELIVERY_COUNTRY'
      Size = 50
    end
    object sp_vis_GenOSRunAllAGENT: TStringField
      FieldName = 'AGENT'
      Origin = 'AGENT'
      Size = 80
    end
    object sp_vis_GenOSRunAllNOM_THICK: TBCDField
      FieldName = 'NOM_THICK'
      Origin = 'NOM_THICK'
      Precision = 12
      Size = 2
    end
    object sp_vis_GenOSRunAllNOM_WIDTH: TBCDField
      FieldName = 'NOM_WIDTH'
      Origin = 'NOM_WIDTH'
      Precision = 12
      Size = 2
    end
    object sp_vis_GenOSRunAllNOM_LENGTH: TBCDField
      FieldName = 'NOM_LENGTH'
      Origin = 'NOM_LENGTH'
      Precision = 12
      Size = 2
    end
    object sp_vis_GenOSRunAllSPECIES: TStringField
      FieldName = 'SPECIES'
      Origin = 'SPECIES'
      Size = 30
    end
    object sp_vis_GenOSRunAllSURFACING: TStringField
      FieldName = 'SURFACING'
      Origin = 'SURFACING'
      Size = 30
    end
    object sp_vis_GenOSRunAllGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 30
    end
    object sp_vis_GenOSRunAllCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'CURRENCY'
      Size = 5
    end
    object sp_vis_GenOSRunAllTotalOrderNM3int: TFloatField
      FieldName = 'TotalOrderNM3int'
      Origin = 'TotalOrderNM3int'
    end
    object sp_vis_GenOSRunAllLevNM3int: TFloatField
      FieldName = 'LevNM3int'
      Origin = 'LevNM3int'
    end
    object sp_vis_GenOSRunAllOrderStockNM3int: TFloatField
      FieldName = 'OrderStockNM3int'
      Origin = 'OrderStockNM3int'
    end
    object sp_vis_GenOSRunAllTotalOrderNM3ext: TFloatField
      FieldName = 'TotalOrderNM3ext'
      Origin = 'TotalOrderNM3ext'
    end
    object sp_vis_GenOSRunAllLevNM3ext: TFloatField
      FieldName = 'LevNM3ext'
      Origin = 'LevNM3ext'
    end
    object sp_vis_GenOSRunAllOrderStockNM3ext: TFloatField
      FieldName = 'OrderStockNM3ext'
      Origin = 'OrderStockNM3ext'
    end
    object sp_vis_GenOSRunAllOrderStockCurrency: TFloatField
      FieldName = 'OrderStockCurrency'
      Origin = 'OrderStockCurrency'
    end
    object sp_vis_GenOSRunAllOrderStockSEK: TFloatField
      FieldName = 'OrderStockSEK'
      Origin = 'OrderStockSEK'
    end
    object sp_vis_GenOSRunAllDataGenerated: TSQLTimeStampField
      FieldName = 'DataGenerated'
      Origin = 'DataGenerated'
    end
    object sp_vis_GenOSRunAllProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sp_vis_GenOSRunAllSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object sp_vis_GenOSRunAllCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object sp_vis_GenOSRunAllCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
  end
  object ds_vis_GenOSRunAll: TDataSource
    DataSet = sp_vis_GenOSRunAll
    Left = 48
    Top = 384
  end
  object sq_Orderstock: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select 1 AS PriceOK, DELIVERY_COUNTRY AS Lev_Land,'
      'CURRENCY AS Valuta,'
      'SALES_REGION AS F'#246'rs'#228'ljningsregion,'
      'SUM(TotalOrderNM3int) AS OrderNM3int,'
      'SUM(LevNM3int) AS LevNM3int,'
      'SUM(OrderStockNM3int) AS OrderstockNM3int,'
      'SUM(TotalOrderNM3ext) AS OrderNM3ext,'
      'SUM(LevNM3ext) AS LevNM3ext,'
      'SUM(OrderStockNM3ext) AS OrderstockNM3ext,'
      'SUM(OrderStockCurrency) AS OrderstockValuta,'
      'SUM(OrderStockSEK) AS OrderstockSEK,'
      'Sum(InternalPrice * OrderStockNM3int) AS InternalValue,'
      'SalesRegionNo,'
      'CountryNo,'
      'CurrencyNo,'
      
        'Sum(InternalPrice * OrderStockNM3int) / sum(OrderStockNM3int) AS' +
        ' MPNH'
      'FROM dbo.OrderStock_III'
      'WHERE UserID = :UserID'
      'and OrderStockNM3int is not null'
      'and OrderStockNM3int > 0'
      'and SalesRegionNo in (741, 3682)'
      'Group By SALES_REGION, DELIVERY_COUNTRY,'
      'CURRENCY, SalesRegionNo, CountryNo, CurrencyNo')
    Left = 160
    Top = 344
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_OrderstockLev_Land: TStringField
      DisplayLabel = 'Statistikland'
      FieldName = 'Lev_Land'
      Origin = 'Lev_Land'
      Size = 50
    end
    object sq_OrderstockValuta: TStringField
      FieldName = 'Valuta'
      Origin = 'Valuta'
      Size = 5
    end
    object sq_OrderstockOrderNM3int: TFloatField
      FieldName = 'OrderNM3int'
      Origin = 'OrderNM3int'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sq_OrderstockLevNM3int: TFloatField
      FieldName = 'LevNM3int'
      Origin = 'LevNM3int'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sq_OrderstockOrderstockNM3int: TFloatField
      FieldName = 'OrderstockNM3int'
      Origin = 'OrderstockNM3int'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sq_OrderstockOrderNM3ext: TFloatField
      FieldName = 'OrderNM3ext'
      Origin = 'OrderNM3ext'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sq_OrderstockLevNM3ext: TFloatField
      FieldName = 'LevNM3ext'
      Origin = 'LevNM3ext'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sq_OrderstockOrderstockNM3ext: TFloatField
      FieldName = 'OrderstockNM3ext'
      Origin = 'OrderstockNM3ext'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sq_OrderstockOrderstockValuta: TFloatField
      FieldName = 'OrderstockValuta'
      Origin = 'OrderstockValuta'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sq_OrderstockOrderstockSEK: TFloatField
      FieldName = 'OrderstockSEK'
      Origin = 'OrderstockSEK'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sq_OrderstockFrsljningsregion: TStringField
      FieldName = 'F'#246'rs'#228'ljningsregion'
      Origin = '[F'#246'rs'#228'ljningsregion]'
      Size = 80
    end
    object sq_OrderstockSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object sq_OrderstockCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object sq_OrderstockCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object sq_OrderstockMPNH: TFloatField
      DisplayLabel = 'Netto hemma/NM3int'
      FieldName = 'MPNH'
      Origin = 'MPNH'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sq_OrderstockPriceOK: TIntegerField
      DisplayLabel = 'Pris OK'
      FieldName = 'PriceOK'
      Origin = 'PriceOK'
      ReadOnly = True
    end
    object sq_OrderstockInternalValue: TFloatField
      DisplayLabel = 'Internv'#228'rde'
      FieldName = 'InternalValue'
      Origin = 'InternalValue'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
  end
  object ds_Orderstock: TDataSource
    DataSet = sp_Orderstock
    Left = 160
    Top = 392
  end
  object sp_Vis_Intra_Stat_Exp: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_Intra_Stat_Exp'
    Left = 256
    Top = 336
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@FromDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ToDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object sp_Vis_Intra_Stat_ExpLandKod: TStringField
      FieldName = 'LandKod'
      Origin = 'LandKod'
      Size = 2
    end
    object sp_Vis_Intra_Stat_ExpTransaktionstyp: TIntegerField
      FieldName = 'Transaktionstyp'
      Origin = 'Transaktionstyp'
    end
    object sp_Vis_Intra_Stat_ExpVarukod: TStringField
      FieldName = 'Varukod'
      Origin = 'Varukod'
      Size = 10
    end
    object sp_Vis_Intra_Stat_Expkvantitet: TFloatField
      FieldName = 'kvantitet'
      Origin = 'kvantitet'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_Intra_Stat_ExpNettovikt: TFloatField
      FieldName = 'Nettovikt'
      Origin = 'Nettovikt'
      DisplayFormat = '#,###,###.0'
    end
    object sp_Vis_Intra_Stat_ExpFakturavarde_sek: TFloatField
      DisplayLabel = 'Fakturav'#228'rde SEK'
      FieldName = 'Fakturavarde_sek'
      Origin = 'Fakturavarde_sek'
      DisplayFormat = '#,###,###,###.0'
    end
  end
  object ds_Vis_Intra_Stat_Exp: TDataSource
    DataSet = sp_Vis_Intra_Stat_Exp
    Left = 256
    Top = 384
  end
  object sp_Vis_GenTradingAnalyze: TFDStoredProc
    OnCalcFields = sp_Vis_GenTradingAnalyzeCalcFields
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_GenTradingAnalyze'
    Left = 400
    Top = 336
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@StartDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@EndDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object sp_Vis_GenTradingAnalyzeLev: TStringField
      FieldName = 'Lev'
      Origin = 'Sales_Fakturadatum'
      Size = 80
    end
    object sp_Vis_GenTradingAnalyzePO_Kontraktnr: TStringField
      FieldName = 'PO_Kontraktnr'
      Origin = 'PO_Kontraktnr'
      Required = True
      Size = 1
    end
    object sp_Vis_GenTradingAnalyzePO_Fakturanr: TIntegerField
      FieldName = 'PO_Fakturanr'
      Origin = 'PO_Fakturanr'
      Required = True
    end
    object sp_Vis_GenTradingAnalyzePO_Fakturadatum: TSQLTimeStampField
      FieldName = 'PO_Fakturadatum'
      Origin = 'PO_Fakturadatum'
    end
    object sp_Vis_GenTradingAnalyzePO_Valuta: TStringField
      FieldName = 'PO_Valuta'
      Origin = 'PO_Valuta'
      FixedChar = True
      Size = 5
    end
    object sp_Vis_GenTradingAnalyzePO_Belopp_Valuta: TFloatField
      FieldName = 'PO_Belopp_Valuta'
      Origin = 'PO_Belopp_Valuta'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_GenTradingAnalyzePO_Belopp_SEK: TFloatField
      FieldName = 'PO_Belopp_SEK'
      Origin = 'PO_Belopp_SEK'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_GenTradingAnalyzePO_ProduktVrde_Valuta: TFloatField
      FieldName = 'PO_ProduktV'#228'rde_Valuta'
      Origin = '[PO_ProduktV'#228'rde_Valuta]'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_GenTradingAnalyzePO_AM3: TFloatField
      FieldName = 'PO_AM3'
      Origin = 'PO_AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_GenTradingAnalyzeSales_Valuta: TStringField
      FieldName = 'Sales_Valuta'
      Origin = 'Sales_Valuta'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object sp_Vis_GenTradingAnalyzeSales_ProduktVrde_Valuta: TFloatField
      FieldName = 'Sales_ProduktV'#228'rde_Valuta'
      Origin = '[Sales_ProduktV'#228'rde_Valuta]'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_GenTradingAnalyzeSales_AM3: TFloatField
      FieldName = 'Sales_AM3'
      Origin = 'Sales_AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_GenTradingAnalyzeSales_Belopp_Valuta: TFloatField
      FieldName = 'Sales_Belopp_Valuta'
      Origin = 'Sales_Belopp_Valuta'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_GenTradingAnalyzeSales_Belopp_SEK: TFloatField
      FieldName = 'Sales_Belopp_SEK'
      Origin = 'Sales_Belopp_SEK'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_GenTradingAnalyzeKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ReadOnly = True
      Size = 80
    end
    object sp_Vis_GenTradingAnalyzeSales_Fakturanr: TIntegerField
      FieldName = 'Sales_Fakturanr'
      Origin = 'Sales_Fakturanr'
      ReadOnly = True
    end
    object sp_Vis_GenTradingAnalyzeSales_Fakturadatum: TSQLTimeStampField
      FieldName = 'Sales_Fakturadatum'
      Origin = 'Sales_Fakturadatum'
      ReadOnly = True
    end
    object sp_Vis_GenTradingAnalyzePOPrefix: TStringField
      FieldName = 'POPrefix'
      Origin = 'POPrefix'
      Required = True
      Size = 50
    end
    object sp_Vis_GenTradingAnalyzeDiff_SEK: TFloatField
      FieldName = 'Diff_SEK'
      Origin = 'Diff_SEK'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_Vis_GenTradingAnalyzePOIntInvNo: TIntegerField
      FieldName = 'POIntInvNo'
      Origin = 'POIntInvNo'
      Required = True
    end
    object sp_Vis_GenTradingAnalyzeSalesIntInvNo: TIntegerField
      FieldName = 'SalesIntInvNo'
      Origin = 'SalesIntInvNo'
      Required = True
    end
    object sp_Vis_GenTradingAnalyzeFR: TStringField
      FieldName = 'FR'
      Origin = 'FR'
      Size = 80
    end
    object sp_Vis_GenTradingAnalyzeDiffOfSales: TFloatField
      DisplayLabel = '% av f'#246'rs'#228'lj.'
      FieldKind = fkCalculated
      FieldName = 'DiffOfSales'
      DisplayFormat = '##.##'
      Calculated = True
    end
  end
  object ds_Vis_GenTradingAnalyze: TDataSource
    DataSet = sp_Vis_GenTradingAnalyze
    Left = 400
    Top = 384
  end
  object cds_InvoicePayStatus: TFDQuery
    BeforePost = cds_InvoicePayStatusBeforePost
    OnCalcFields = cds_InvoicePayStatusCalcFields
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_InvoicePayStatusIndex01'
        Fields = 'FAKTURANR'
      end>
    IndexName = 'cds_InvoicePayStatusIndex01'
    OnUpdateRecord = cds_InvoicePayStatusUpdateRecord
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select INV.InvoiceNo AS FAKTURANR,'
      'IH.QuickInvoice,'
      'IH.InternalInvoiceNo AS IH_InternalInvoiceNo, '
      'IH.InvoiceDate AS FAKTURA_DATUM, '
      'CR.idXOR AS KUND, '
      'IH.AgentName AS AGENT, '
      'IH.PaymentDescription AS BETALVILLKOR,'
      
        'ROUND(CAST((  IH.Inv_Value_To_Be_Paid_2    ) As decimal(18,2)),2' +
        ') AS BELOPP,'
      
        'ROUND(CAST((  IH.Discount    ) As decimal(18,2)),2) AS KASSARABA' +
        'TT,'
      
        'ROUND(CAST((  IH.Inv_Value_To_Be_Paid_2-IH.Discount    ) As deci' +
        'mal(18,2)),2) AS BELOP_EXKL_KASSA,'
      'IP.Paid,'
      'IP.DatePaid,'
      'IP.AmountPaid,'
      'IP.Note,'
      'IP.InternalInvoiceNo,'
      'IH.CurrencyName AS VALUTA ,'
      'IH.StickyNote AS POST_IT ,'
      'IH.Total_Product_Value_No_Freight AS VARUVARDE_NO_FREIGHT,'
      
        'IH.Commission AS PROVISION, IH.Trading, IH.SUM_FreigthCost AS FR' +
        'AKT'
      'FROM dbo.InvoiceHeader IH'
      
        'INNER JOIN dbo.InvoiceNumber INV ON INV.InternalInvoiceNo = IH.I' +
        'nternalInvoiceNo'
      'INNER JOIN  dbo.ClientRole    CR ON CR.ClientNo = IH.CustomerNo'
      
        'LEFT OUTER JOIN dbo.InvoicePayStatus IP ON IP.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      'WHERE CR.RoleType = 1'
      'AND IH.InternalInvoiceNo not IN'
      
        '(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid' +
        ' = 1)'
      '')
    Left = 920
    Top = 448
    object cds_InvoicePayStatusFAKTURANR: TIntegerField
      DisplayLabel = 'Fakturanr'
      FieldName = 'FAKTURANR'
      Origin = 'FAKTURANR'
      ProviderFlags = []
    end
    object cds_InvoicePayStatusQuickInvoice: TIntegerField
      DisplayLabel = 'Snabbfaktura'
      FieldName = 'QuickInvoice'
      Origin = 'QuickInvoice'
      ProviderFlags = []
    end
    object cds_InvoicePayStatusFAKTURA_DATUM: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'FAKTURA_DATUM'
      Origin = 'FAKTURA_DATUM'
      ProviderFlags = []
    end
    object cds_InvoicePayStatusKUND: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'KUND'
      Origin = 'KUND'
      ProviderFlags = []
      Size = 12
    end
    object cds_InvoicePayStatusAGENT: TStringField
      DisplayLabel = 'Agent'
      FieldName = 'AGENT'
      Origin = 'AGENT'
      ProviderFlags = []
      FixedChar = True
      Size = 80
    end
    object cds_InvoicePayStatusBETALVILLKOR: TStringField
      DisplayLabel = 'Betalvillkor'
      FieldName = 'BETALVILLKOR'
      Origin = 'BETALVILLKOR'
      ProviderFlags = []
      FixedChar = True
      Size = 100
    end
    object cds_InvoicePayStatusBELOPP: TBCDField
      DisplayLabel = 'Belopp'
      FieldName = 'BELOPP'
      Origin = 'BELOPP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '### ### ### ###.00'
      Precision = 18
      Size = 2
    end
    object cds_InvoicePayStatusKASSARABATT: TBCDField
      DisplayLabel = 'Kassarabatt'
      FieldName = 'KASSARABATT'
      Origin = 'KASSARABATT'
      ProviderFlags = []
      DisplayFormat = '### ### ### ###.00'
      Precision = 18
      Size = 2
    end
    object cds_InvoicePayStatusBELOP_EXKL_KASSA: TBCDField
      DisplayLabel = 'Belopp exkl.kassa'
      FieldName = 'BELOP_EXKL_KASSA'
      Origin = 'BELOP_EXKL_KASSA'
      ProviderFlags = []
      DisplayFormat = '### ### ### ###.00'
      Precision = 18
      Size = 2
    end
    object cds_InvoicePayStatusVALUTA: TStringField
      DisplayLabel = 'Valuta'
      FieldName = 'VALUTA'
      Origin = 'VALUTA'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object cds_InvoicePayStatusPOST_IT: TStringField
      DisplayLabel = 'Post it note'
      FieldName = 'POST_IT'
      Origin = 'POST_IT'
      ProviderFlags = []
      Size = 255
    end
    object cds_InvoicePayStatusVARUVARDE_NO_FREIGHT: TFloatField
      DisplayLabel = 'Varuv'#228'rde exkl.frakt'
      FieldName = 'VARUVARDE_NO_FREIGHT'
      Origin = 'VARUVARDE_NO_FREIGHT'
      ProviderFlags = []
      DisplayFormat = '### ### ### ###.00'
    end
    object cds_InvoicePayStatusPROVISION: TFloatField
      DisplayLabel = 'Kommission'
      FieldName = 'PROVISION'
      Origin = 'PROVISION'
      ProviderFlags = []
      DisplayFormat = '### ### ### ###.00'
    end
    object cds_InvoicePayStatusTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
      ProviderFlags = []
    end
    object cds_InvoicePayStatusFRAKT: TFloatField
      DisplayLabel = 'Frakt'
      FieldName = 'FRAKT'
      Origin = 'FRAKT'
      ProviderFlags = []
      DisplayFormat = '### ### ### ###.00'
    end
    object cds_InvoicePayStatusIH_InternalInvoiceNo: TIntegerField
      FieldName = 'IH_InternalInvoiceNo'
      Origin = 'IH_InternalInvoiceNo'
      ProviderFlags = []
      Required = True
    end
    object cds_InvoicePayStatusPaid: TWordField
      DisplayLabel = 'Betald'
      FieldName = 'Paid'
      Origin = 'Paid'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvoicePayStatusDatePaid: TSQLTimeStampField
      DisplayLabel = 'Datum betald'
      FieldName = 'DatePaid'
      Origin = 'DatePaid'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvoicePayStatusAmountPaid: TBCDField
      DisplayLabel = 'Summa betald'
      FieldName = 'AmountPaid'
      Origin = 'AmountPaid'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '### ### ### ###.00'
      Precision = 18
      Size = 2
    end
    object cds_InvoicePayStatusNote: TStringField
      DisplayLabel = 'Meddelande'
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_InvoicePayStatusInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
    end
    object cds_InvoicePayStatusAttBetala: TFloatField
      DisplayLabel = 'Belopp (att betala)'
      FieldKind = fkCalculated
      FieldName = 'AttBetala'
      ProviderFlags = []
      DisplayFormat = '### ### ### ###.00'
      Calculated = True
    end
  end
  object ds_InvoicePayStatus: TDataSource
    DataSet = cds_InvoicePayStatus
    Left = 920
    Top = 496
  end
  object FD_InsAttHead: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'INSERT INTO [vis_vida].[dbo].[Att_Ext_Services]'
      '           ([InternalInvoiceNo]'
      '           ,[ShippingPlanNo]'
      '           ,[SequensNo]'
      '           ,[Description]'
      '           ,[Supplier_InvoiceNo]'
      '           ,[Supplier_InvoiceDate]'
      '           ,[Amount]'
      '           ,[CurrencyNo]'
      '           ,[SupplierNo]'
      '           ,[Note]'
      '           ,[CreatedUser]'
      '           ,[ModifiedUser]'
      '           ,[CreatedDate]'
      '           ,[ModifiedDate]'
      '           ,[Quick_InvoiceNo]'
      '           ,[Active])'
      'SELECT distinct'
      ':InternalInvoiceNo,'
      ':ShippingPlanNo,'
      ':SequensNo,'
      ':Desc,'
      ':Supplier_InvoiceNo,'
      ':Supplier_InvoiceDate,'
      ':Amount,'
      ':CurrencyNo,'
      ':ShippingCompanyNo,'
      ':Note,'
      ':UserID,'
      ':UserID,'
      'GetDate(),'
      'GetDate(),'
      ':Quick_InvoiceNo,'
      '0'
      '')
    Left = 768
    Top = 472
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DESC'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIER_INVOICENO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIER_INVOICEDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'AMOUNT'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGCOMPANYNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'QUICK_INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDmSelectedRows: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 856
    Top = 664
    object FDmSelectedRowsInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object FDmSelectedRowsLONo: TIntegerField
      FieldName = 'LONo'
    end
    object FDmSelectedRowsSupplier_InvoiceNo: TStringField
      FieldName = 'Supplier_InvoiceNo'
      Size = 50
    end
    object FDmSelectedRowsSupplier_InvoiceDate: TDateTimeField
      FieldName = 'Supplier_InvoiceDate'
    end
    object FDmSelectedRowsTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object FDmSelectedRowsAmount: TFloatField
      FieldName = 'Amount'
    end
    object FDmSelectedRowsSHIPPINGCOMPANYNO: TIntegerField
      FieldName = 'SHIPPINGCOMPANYNO'
    end
    object FDmSelectedRowsCURRENCYNO: TIntegerField
      FieldName = 'CURRENCYNO'
    end
    object FDmSelectedRowsFakturanr: TIntegerField
      FieldName = 'Fakturanr'
    end
    object FDmSelectedRowsNote: TStringField
      FieldName = 'Note'
      Size = 255
    end
  end
  object FD_InsAttestRow: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.AttestRow(InternalInvoiceNo, ShippingPlanNo, Seq' +
        'uensNo, invoicedetailno)'
      
        'Select invd.InternalInvoiceNo, invd.ShippingPlanNo, :SequensNo, ' +
        'invd.invoicedetailno from dbo.InvoiceDetail invd'
      'WHERE invd.InternalInvoiceNo = :InternalInvoiceNo'
      'AND invd.ShippingPlanNo = :ShippingPlanNo'
      'AND ((invd.ArticleNo = 1) or (invd.ArticleNo = 3))')
    Left = 768
    Top = 600
    ParamData = <
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Att_Ext_ServicesII: TFDQuery
    CachedUpdates = True
    MasterSource = ds_LF
    MasterFields = 'InternalInvoiceNo;ShippingPlanNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'Att_Ext_Services'
    SQL.Strings = (
      'Select AEL.InternalInvoiceNo,'
      'AEL.ShippingPlanNo,'
      'AEL.SequensNo,'
      'AES.Description,'
      'AES.Supplier_InvoiceNo,'
      'AES.Supplier_InvoiceDate,'
      'AEL.AmountAttested,'
      'AES.CurrencyNo,'
      'AES.SupplierNo,'
      'AES.Note,'
      'AES.CreatedDate,'
      'AES.CreatedUser,'
      'AES.ModifiedDate,'
      'AES.ModifiedUser,'
      'AES.Quick_InvoiceNo,'
      'AES.Amount,'
      'AES.[Active],'
      'C.ClientName AS Klient'
      'FROM dbo.Att_Ext_LO AEL'
      
        'Inner Join dbo.Att_Ext_Services AES on AES.InternalInvoiceNo= AE' +
        'L.InternalInvoiceNo'
      'Inner Join dbo.Client C on C.ClientNo = AES.SupplierNo'
      'AND AES.SequensNo = AEL.SequensNo'
      'AND AES.ShippingPlanNo = AEL.ShippingPlanNo'
      'WHERE AEL.InternalInvoiceNo = :InternalInvoiceNo'
      'AND AEL.ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 640
    Top = 464
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Att_Ext_ServicesIIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Att_Ext_ServicesIIShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Att_Ext_ServicesIISequensNo: TIntegerField
      DisplayLabel = 'Attestnr'
      FieldName = 'SequensNo'
      Origin = 'SequensNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Att_Ext_ServicesIIDescription: TStringField
      DisplayLabel = 'Beskrivning'
      FieldName = 'Description'
      Origin = 'Description'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_Att_Ext_ServicesIISupplier_InvoiceNo: TStringField
      DisplayLabel = 'Lev.fakturanr'
      FieldName = 'Supplier_InvoiceNo'
      Origin = 'Supplier_InvoiceNo'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_Att_Ext_ServicesIISupplier_InvoiceDate: TSQLTimeStampField
      DisplayLabel = 'Lev.fakturadatum'
      FieldName = 'Supplier_InvoiceDate'
      Origin = 'Supplier_InvoiceDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIAmount: TFloatField
      DisplayLabel = 'Belopp'
      FieldName = 'Amount'
      Origin = 'Amount'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_Att_Ext_ServicesIICurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIISupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIINote: TMemoField
      DisplayLabel = 'Notering'
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_Att_Ext_ServicesIICreatedDate: TSQLTimeStampField
      DisplayLabel = 'Registrerad'
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIICreatedUser: TIntegerField
      DisplayLabel = 'Reg.av'
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIModifiedDate: TSQLTimeStampField
      DisplayLabel = #196'ndrad'
      FieldName = 'ModifiedDate'
      Origin = 'ModifiedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIModifiedUser: TIntegerField
      DisplayLabel = #196'ndrad av'
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIQuick_InvoiceNo: TIntegerField
      DisplayLabel = 'Snabbfaktura'
      FieldName = 'Quick_InvoiceNo'
      Origin = 'Quick_InvoiceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIAmountAttested: TFloatField
      FieldName = 'AmountAttested'
      Origin = 'AmountAttested'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_Att_Ext_ServicesIIActive: TIntegerField
      FieldName = 'Active'
      Origin = 'Active'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIValuta: TStringField
      FieldKind = fkLookup
      FieldName = 'Valuta'
      LookupDataSet = dmsSystem.cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'CurrencyNo'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
    object cds_Att_Ext_ServicesIIKlient: TStringField
      FieldName = 'Klient'
      Origin = 'Klient'
      ProviderFlags = []
      Size = 80
    end
  end
  object ds_Att_Ext_ServicesII: TDataSource
    DataSet = cds_Att_Ext_ServicesII
    Left = 640
    Top = 520
  end
  object FD_GetFreightCost: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select SUM(invd.ProductValue) AS Frakt from dbo.InvoiceDetail in' +
        'vd'
      'WHERE invd.InternalInvoiceNo = 3491'
      'AND (invd.ShippingPlanNo = 13164'
      'or invd.ShippingPlanNo = 13163)'
      'AND invd.TypeOfRow = 3')
    Left = 768
    Top = 416
    object FD_GetFreightCostFrakt: TFloatField
      FieldName = 'Frakt'
      Origin = 'Frakt'
      ReadOnly = True
    end
  end
  object FD_InsAttLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.Att_Ext_LO(SequensNo, InternalInvoiceNo, Shippin' +
        'gPlanNo, AmountAttested)'
      
        'Values(:SequensNo, :InternalInvoiceNo, :ShippingPlanNo, :AmountA' +
        'ttested)')
    Left = 768
    Top = 664
    ParamData = <
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'AMOUNTATTESTED'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object FD_InsAttestRowKomm: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.AttestRow(InternalInvoiceNo, ShippingPlanNo, Seq' +
        'uensNo, invoicedetailno)'
      
        'Select invd.InternalInvoiceNo, invd.ShippingPlanNo, :SequensNo, ' +
        'invd.invoicedetailno from dbo.InvoiceDetail invd'
      'WHERE invd.InternalInvoiceNo = :InternalInvoiceNo'
      'AND ((invd.ArticleNo = 1) or (invd.ArticleNo = 3))')
    Left = 768
    Top = 544
    ParamData = <
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object adDeleteAttest: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete dbo.AttestRow'
      'WHERE SequensNo = :SequensNo'
      'Delete dbo.Att_Ext_LO '
      'WHERE SequensNo = :SequensNo'
      'Delete dbo.Att_Ext_Services'
      'WHERE SequensNo = :SequensNo')
    Left = 640
    Top = 576
    ParamData = <
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_AttestFreightList: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_AttestFreightList'
    Left = 408
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
        Name = '@InvoiceDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ShippingCompanyNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@MarketRegionNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Description'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end>
    object sp_AttestFreightListInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
    end
    object sp_AttestFreightListShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object sp_AttestFreightListFakturanr: TIntegerField
      FieldName = 'Fakturanr'
      Origin = 'Fakturanr'
      Required = True
    end
    object sp_AttestFreightListInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      Required = True
    end
    object sp_AttestFreightListFraktValuta: TStringField
      DisplayLabel = 'Valuta(frakt)'
      FieldName = 'FraktValuta'
      Origin = 'FraktValuta'
      Size = 5
    end
    object sp_AttestFreightListFraktEnhet: TStringField
      DisplayLabel = 'Fraktkostnad/enhet'
      FieldName = 'FraktEnhet'
      Origin = 'FraktEnhet'
    end
    object sp_AttestFreightListFraktkostnad: TFloatField
      FieldName = 'Fraktkostnad'
      Origin = 'Fraktkostnad'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestFreightListConfirmFrakt: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmFrakt'
      Origin = 'ConfirmFrakt'
      OnChange = sp_AttestFreightListConfirmFraktChange
    end
    object sp_AttestFreightListShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
    end
    object sp_AttestFreightListSpeditr: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      Size = 80
    end
    object sp_AttestFreightListFraktCurrencyNo: TIntegerField
      FieldName = 'FraktCurrencyNo'
      Origin = 'FraktCurrencyNo'
    end
    object sp_AttestFreightListFrakt: TFloatField
      FieldName = 'Frakt'
      Origin = 'Frakt'
      OnChange = sp_AttestFreightListFraktChange
      DisplayFormat = '#,###,###,###.00'
    end
    object sp_AttestFreightListFraktkostnad_sum: TFloatField
      DisplayLabel = 'Fraktkostnad sum'
      FieldName = 'Fraktkostnad_sum'
      Origin = 'Fraktkostnad_sum'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestFreightListUtlastad: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
    end
    object sp_AttestFreightListAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.000'
    end
    object sp_AttestFreightListVaruvrde: TFloatField
      FieldName = 'Varuv'#228'rde'
      Origin = '[Varuv'#228'rde]'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestFreightListFakturavrde: TFloatField
      FieldName = 'Fakturav'#228'rde'
      Origin = '[Fakturav'#228'rde]'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestFreightListKommission_Percent: TFloatField
      DisplayLabel = 'Komm %'
      FieldName = 'Kommission_Percent'
      Origin = 'Kommission_Percent'
      DisplayFormat = '##.00'
    end
    object sp_AttestFreightListKommission_Sum: TFloatField
      DisplayLabel = 'Kommission sum'
      FieldName = 'Kommission_Sum'
      Origin = 'Kommission_Sum'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestFreightListKommission_villkor: TIntegerField
      DisplayLabel = 'Kommission villkor'
      FieldName = 'Kommission_villkor'
      Origin = 'Kommission_villkor'
    end
    object sp_AttestFreightListValutaFaktura: TStringField
      FieldName = 'ValutaFaktura'
      Origin = 'ValutaFaktura'
      FixedChar = True
      Size = 5
    end
    object sp_AttestFreightListAgent: TStringField
      FieldName = 'Agent'
      Origin = 'Agent'
      FixedChar = True
      Size = 80
    end
    object sp_AttestFreightListAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object sp_AttestFreightListKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      FixedChar = True
      Size = 80
    end
    object sp_AttestFreightListConfirmKomm: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmKomm'
      Origin = 'ConfirmKomm'
      ReadOnly = True
      Required = True
    end
    object sp_AttestFreightListKomm: TFloatField
      FieldName = 'Komm'
      Origin = 'Komm'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.00'
    end
    object sp_AttestFreightListKommCurrencyNo: TIntegerField
      FieldName = 'KommCurrencyNo'
      Origin = 'KommCurrencyNo'
    end
    object sp_AttestFreightListValutaNr: TIntegerField
      FieldName = 'ValutaNr'
      Origin = 'ValutaNr'
    end
    object sp_AttestFreightListEgenValuta: TStringField
      DisplayLabel = 'Att.valuta'
      FieldKind = fkLookup
      FieldName = 'EgenValuta'
      LookupDataSet = dmsSystem.cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'ValutaNr'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
  end
  object sp_AttestKommList: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_AttestKommList'
    Left = 408
    Top = 576
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@InvoiceDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@AgentNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@MarketRegionNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_AttestKommListInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
    end
    object sp_AttestKommListShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object sp_AttestKommListFakturanr: TIntegerField
      FieldName = 'Fakturanr'
      Origin = 'Fakturanr'
    end
    object sp_AttestKommListInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
    end
    object sp_AttestKommListFraktValuta: TStringField
      DisplayLabel = 'Valuta(frakt)'
      FieldName = 'FraktValuta'
      Origin = 'FraktValuta'
      Size = 3
    end
    object sp_AttestKommListFraktEnhet: TStringField
      DisplayLabel = 'Fraktkostnad/enhet'
      FieldName = 'FraktEnhet'
      Origin = 'FraktEnhet'
      Size = 3
    end
    object sp_AttestKommListFraktkostnad: TFloatField
      FieldName = 'Fraktkostnad'
      Origin = 'Fraktkostnad'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListConfirmFrakt: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmFrakt'
      Origin = 'ConfirmFrakt'
    end
    object sp_AttestKommListShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
    end
    object sp_AttestKommListSpeditr: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      Size = 3
    end
    object sp_AttestKommListFraktCurrencyNo: TIntegerField
      FieldName = 'FraktCurrencyNo'
      Origin = 'FraktCurrencyNo'
    end
    object sp_AttestKommListFrakt: TFloatField
      FieldName = 'Frakt'
      Origin = 'Frakt'
      DisplayFormat = '#,###,###,###.00'
    end
    object sp_AttestKommListFraktkostnad_sum: TFloatField
      DisplayLabel = 'Fraktkostnad sum'
      FieldName = 'Fraktkostnad_sum'
      Origin = 'Fraktkostnad_sum'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListUtlastad: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
    end
    object sp_AttestKommListAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###,###.000'
    end
    object sp_AttestKommListVaruvrde: TFloatField
      FieldName = 'Varuv'#228'rde'
      Origin = '[Varuv'#228'rde]'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListFakturavrde: TFloatField
      FieldName = 'Fakturav'#228'rde'
      Origin = '[Fakturav'#228'rde]'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListKommission_Percent: TFloatField
      DisplayLabel = 'Komm %'
      FieldName = 'Kommission_Percent'
      Origin = 'Kommission_Percent'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##.00'
    end
    object sp_AttestKommListKommission_Sum: TFloatField
      DisplayLabel = 'Kommission sum'
      FieldName = 'Kommission_Sum'
      Origin = 'Kommission_Sum'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListKommission_villkor: TIntegerField
      DisplayLabel = 'Kommission villkor'
      FieldName = 'Kommission_villkor'
      Origin = 'Kommission_villkor'
      ProviderFlags = [pfInUpdate]
    end
    object sp_AttestKommListValutaFaktura: TStringField
      FieldName = 'ValutaFaktura'
      Origin = 'ValutaFaktura'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object sp_AttestKommListAgent: TStringField
      FieldName = 'Agent'
      Origin = 'Agent'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object sp_AttestKommListAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_AttestKommListKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object sp_AttestKommListConfirmKomm: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmKomm'
      Origin = 'ConfirmKomm'
      ProviderFlags = [pfInUpdate]
      OnChange = sp_AttestKommListConfirmKommChange
    end
    object sp_AttestKommListKomm: TFloatField
      FieldName = 'Komm'
      Origin = 'Komm'
      ProviderFlags = [pfInUpdate]
      OnChange = sp_AttestKommListKommChange
      DisplayFormat = '#,###,###,###.00'
    end
    object sp_AttestKommListKommCurrencyNo: TIntegerField
      FieldName = 'KommCurrencyNo'
      Origin = 'KommCurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_AttestKommListValutaNr: TIntegerField
      FieldName = 'ValutaNr'
      Origin = 'ValutaNr'
      ProviderFlags = [pfInUpdate]
    end
    object sp_AttestKommListEgenValuta: TStringField
      DisplayLabel = 'Att.valuta'
      FieldKind = fkLookup
      FieldName = 'EgenValuta'
      LookupDataSet = dmsSystem.cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'ValutaNr'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
  end
  object ds_LFALL: TDataSource
    DataSet = sp_AttestFreightList
    Left = 400
    Top = 448
  end
  object sp_LF: TFDStoredProc
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'indexopopop'
        Fields = 'InternalInvoiceNo;ShippingPlanNo'
      end>
    IndexName = 'indexopopop'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_AttestFreightListSingle'
    Left = 528
    Top = 448
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@InvoiceNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_LFInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
    end
    object sp_LFShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object sp_LFFakturanr: TIntegerField
      FieldName = 'Fakturanr'
      Origin = 'Fakturanr'
      Required = True
    end
    object sp_LFInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      Required = True
    end
    object sp_LFFraktValuta: TStringField
      DisplayLabel = 'Valuta(frakt)'
      FieldName = 'FraktValuta'
      Origin = 'FraktValuta'
      Size = 5
    end
    object sp_LFFraktEnhet: TStringField
      DisplayLabel = 'Fraktkostnad/enhet'
      FieldName = 'FraktEnhet'
      Origin = 'FraktEnhet'
    end
    object sp_LFFraktkostnad: TFloatField
      FieldName = 'Fraktkostnad'
      Origin = 'Fraktkostnad'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_LFConfirmFrakt: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmFrakt'
      Origin = 'ConfirmFrakt'
      OnChange = sp_LFConfirmFraktChange
    end
    object sp_LFShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
    end
    object sp_LFSpeditr: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      Size = 80
    end
    object sp_LFFraktCurrencyNo: TIntegerField
      FieldName = 'FraktCurrencyNo'
      Origin = 'FraktCurrencyNo'
    end
    object sp_LFFrakt: TFloatField
      FieldName = 'Frakt'
      Origin = 'Frakt'
      OnChange = sp_LFFraktChange
      DisplayFormat = '#,###,###,###.00'
    end
    object sp_LFFraktkostnad_sum: TFloatField
      DisplayLabel = 'Fraktkostnad sum'
      FieldName = 'Fraktkostnad_sum'
      Origin = 'Fraktkostnad_sum'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_LFUtlastad: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
    end
    object sp_LFAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.000'
    end
    object sp_LFVaruvrde: TFloatField
      FieldName = 'Varuv'#228'rde'
      Origin = '[Varuv'#228'rde]'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_LFFakturavrde: TFloatField
      FieldName = 'Fakturav'#228'rde'
      Origin = '[Fakturav'#228'rde]'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_LFKommission_Percent: TFloatField
      DisplayLabel = 'Komm %'
      FieldName = 'Kommission_Percent'
      Origin = 'Kommission_Percent'
      DisplayFormat = '##.00'
    end
    object sp_LFKommission_Sum: TFloatField
      DisplayLabel = 'Kommission sum'
      FieldName = 'Kommission_Sum'
      Origin = 'Kommission_Sum'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_LFKommission_villkor: TIntegerField
      DisplayLabel = 'Kommission villkor'
      FieldName = 'Kommission_villkor'
      Origin = 'Kommission_villkor'
    end
    object sp_LFValutaFaktura: TStringField
      FieldName = 'ValutaFaktura'
      Origin = 'ValutaFaktura'
      FixedChar = True
      Size = 5
    end
    object sp_LFAgent: TStringField
      FieldName = 'Agent'
      Origin = 'Agent'
      FixedChar = True
      Size = 80
    end
    object sp_LFAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object sp_LFKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      FixedChar = True
      Size = 80
    end
    object sp_LFConfirmKomm: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmKomm'
      Origin = 'ConfirmKomm'
      ReadOnly = True
      Required = True
    end
    object sp_LFKomm: TFloatField
      FieldName = 'Komm'
      Origin = 'Komm'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.00'
    end
    object sp_LFKommCurrencyNo: TIntegerField
      FieldName = 'KommCurrencyNo'
      Origin = 'KommCurrencyNo'
    end
    object sp_LFValutaNr: TIntegerField
      FieldName = 'ValutaNr'
      Origin = 'ValutaNr'
    end
    object sp_LFEgenValuta: TStringField
      DisplayLabel = 'Att.valuta'
      FieldKind = fkLookup
      FieldName = 'EgenValuta'
      LookupDataSet = dmsSystem.cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'ValutaNr'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
  end
  object sp_AttestKommListSingle: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_AttestKommListSingle'
    Left = 408
    Top = 624
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@InvoiceNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_AttestKommListSingleInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
    end
    object sp_AttestKommListSingleShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ReadOnly = True
      Required = True
    end
    object sp_AttestKommListSingleFakturanr: TIntegerField
      FieldName = 'Fakturanr'
      Origin = 'Fakturanr'
      Required = True
    end
    object sp_AttestKommListSingleInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      Required = True
    end
    object sp_AttestKommListSingleFraktValuta: TStringField
      DisplayLabel = 'Valuta(frakt)'
      FieldName = 'FraktValuta'
      Origin = 'FraktValuta'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object sp_AttestKommListSingleFraktEnhet: TStringField
      DisplayLabel = 'Fraktkostnad/enhet'
      FieldName = 'FraktEnhet'
      Origin = 'FraktEnhet'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object sp_AttestKommListSingleFraktkostnad: TFloatField
      FieldName = 'Fraktkostnad'
      Origin = 'Fraktkostnad'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListSingleConfirmFrakt: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmFrakt'
      Origin = 'ConfirmFrakt'
      ReadOnly = True
      Required = True
    end
    object sp_AttestKommListSingleShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
      ReadOnly = True
      Required = True
    end
    object sp_AttestKommListSingleSpeditr: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Required = True
      Size = 3
    end
    object sp_AttestKommListSingleFraktCurrencyNo: TIntegerField
      FieldName = 'FraktCurrencyNo'
      Origin = 'FraktCurrencyNo'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Required = True
    end
    object sp_AttestKommListSingleFrakt: TFloatField
      FieldName = 'Frakt'
      Origin = 'Frakt'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###,###.00'
    end
    object sp_AttestKommListSingleFraktkostnad_sum: TFloatField
      DisplayLabel = 'Fraktkostnad sum'
      FieldName = 'Fraktkostnad_sum'
      Origin = 'Fraktkostnad_sum'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListSingleUtlastad: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
      ProviderFlags = [pfInUpdate]
    end
    object sp_AttestKommListSingleAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###,###.000'
    end
    object sp_AttestKommListSingleVaruvrde: TFloatField
      FieldName = 'Varuv'#228'rde'
      Origin = '[Varuv'#228'rde]'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListSingleFakturavrde: TFloatField
      FieldName = 'Fakturav'#228'rde'
      Origin = '[Fakturav'#228'rde]'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListSingleKommission_Percent: TFloatField
      DisplayLabel = 'Komm %'
      FieldName = 'Kommission_Percent'
      Origin = 'Kommission_Percent'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##.00'
    end
    object sp_AttestKommListSingleKommission_Sum: TFloatField
      DisplayLabel = 'Kommission sum'
      FieldName = 'Kommission_Sum'
      Origin = 'Kommission_Sum'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_AttestKommListSingleKommission_villkor: TIntegerField
      DisplayLabel = 'Kommission villkor'
      FieldName = 'Kommission_villkor'
      Origin = 'Kommission_villkor'
      ProviderFlags = [pfInUpdate]
    end
    object sp_AttestKommListSingleValutaFaktura: TStringField
      FieldName = 'ValutaFaktura'
      Origin = 'ValutaFaktura'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object sp_AttestKommListSingleAgent: TStringField
      FieldName = 'Agent'
      Origin = 'Agent'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object sp_AttestKommListSingleAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_AttestKommListSingleKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object sp_AttestKommListSingleConfirmKomm: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmKomm'
      Origin = 'ConfirmKomm'
      ProviderFlags = [pfInUpdate]
      OnChange = sp_AttestKommListSingleConfirmKommChange
    end
    object sp_AttestKommListSingleKomm: TFloatField
      FieldName = 'Komm'
      Origin = 'Komm'
      ProviderFlags = [pfInUpdate]
      OnChange = sp_AttestKommListSingleKommChange
      DisplayFormat = '#,###,###,###.00'
    end
    object sp_AttestKommListSingleKommCurrencyNo: TIntegerField
      FieldName = 'KommCurrencyNo'
      Origin = 'KommCurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_AttestKommListSingleValutaNr: TIntegerField
      FieldName = 'ValutaNr'
      Origin = 'ValutaNr'
      ProviderFlags = [pfInUpdate]
    end
    object sp_AttestKommListSingleEgenValuta: TStringField
      DisplayLabel = 'Att.valuta'
      FieldKind = fkLookup
      FieldName = 'EgenValuta'
      LookupDataSet = dmsSystem.cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'ValutaNr'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
  end
  object cds_CreLim: TFDQuery
    AfterInsert = cds_CreLimAfterInsert
    BeforePost = cds_CreLimBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select C.grpNo AS grpno, C.Name , '
      'C.CreditLimit , C.CurrencyNo,'
      'C.DateCreated, C.DateModified, C.UserModified, C.Note'
      'FROM'
      'dbo.CreditGrp C')
    Left = 128
    Top = 608
    object cds_CreLimgrpno: TIntegerField
      FieldName = 'grpno'
      Origin = 'grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CreLimName: TStringField
      DisplayLabel = 'Grupp'
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cds_CreLimCreditLimit: TBCDField
      DisplayLabel = 'Kreditgr'#228'ns'
      FieldName = 'CreditLimit'
      Origin = 'CreditLimit'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_CreLimCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CreLimDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CreLimDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CreLimUserModified: TIntegerField
      FieldName = 'UserModified'
      Origin = 'UserModified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CreLimNote: TStringField
      DisplayLabel = 'Notering'
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_CreLimValuta: TStringField
      FieldKind = fkLookup
      FieldName = 'Valuta'
      LookupDataSet = dmsSystem.cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'CurrencyNo'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
  end
  object ds_CreLim: TDataSource
    DataSet = cds_CreLim
    Left = 128
    Top = 664
  end
  object cds_CreClients: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.CreditGrpClients')
    Left = 224
    Top = 608
    object cds_CreClientsgrpNo: TIntegerField
      FieldName = 'grpNo'
      Origin = 'grpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CreClientsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_CreGrpCli: TFDQuery
    AfterInsert = cds_CreGrpCliAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select CG.grpNo , CG.ClientNo '
      'FROM'
      'dbo.CreditGrpClients CG'
      'where cg.grpno = :grpNo'
      '')
    Left = 304
    Top = 608
    ParamData = <
      item
        Name = 'GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CreGrpCligrpNo: TIntegerField
      FieldName = 'grpNo'
      Origin = 'grpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CreGrpCliClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CreGrpCliKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = dmsContact.sp_Customers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
  end
  object sq_GetCreditGroupNamn: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select dbo.CreditGrp.[Name] AS Gruppnamn'
      'From dbo.CreditGrp '
      
        'Inner Join dbo.CreditGrpClients on dbo.CreditGrpClients.grpno = ' +
        'dbo.CreditGrp.grpno'
      'where dbo.CreditGrpClients.ClientNo = :ClientNo')
    Left = 224
    Top = 664
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetCreditGroupNamnGruppnamn: TStringField
      FieldName = 'Gruppnamn'
      Origin = 'Gruppnamn'
      Required = True
      Size = 80
    end
  end
  object cds_CreditAnalys: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct CG.Name AS KUND,'
      'CG.Note,'
      'cg.grpNo AS ClientNo,'
      'CREDIT_LIMIT_SEK AS CreditLimit,'
      ''
      'ROUND(CAST((  XTS.XOR     ) As decimal(18,3)),2) AS XOR,'
      
        'ROUND(CAST((  SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2' +
        ') AS VIS,'
      
        'ROUND(CAST((  XTS.XOR+SUM(isnull(SEK_VALUE,0))     ) As decimal(' +
        '18,3)),2) AS TOTALT,'
      
        'ROUND(CAST((  CRS.CREDIT_LIMIT_SEK - (XTS.XOR+SUM(isnull(SEK_VAL' +
        'UE,0)))     ) As decimal(18,3)),2) AS DIFFERENS'
      ''
      'FROM'
      'dbo.Creditgrp CG'
      'Inner Join dbo.XOR_TotalSaldo_ALVE XTS ON XTS.grpNo = CG.grpNo'
      ''
      
        'Left Outer Join dbo.InvoiceValueCust_ALVE ivc ON ivc.grpNo = CG.' +
        'grpNo'
      'Inner Join dbo.CreditLimitSEK CRS ON CRS.grpNo = CG.grpNo'
      ''
      'Group By  CG.Name,  cg.grpNo, XTS.XOR,'
      ' CRS.CREDIT_LIMIT_SEK, CG.Note'
      ''
      
        'having (CRS.CREDIT_LIMIT_SEK -  (XTS.XOR+SUM(isnull(SEK_VALUE,0)' +
        '))) < :Limit'
      ''
      'UNION'
      ''
      'Select distinct C.ClientName AS KUND,'
      #39'EJ F'#214'RS'#196'KRAD'#39' AS Note,'
      'C.ClientNo AS ClientNo,'
      '0.0 AS CreditLimit,'
      ''
      'ROUND(CAST((  XTS.XOR     ) As decimal(18,3)),2) AS XOR,'
      
        'ROUND(CAST((  SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2' +
        ') AS VIS,'
      
        'ROUND(CAST((  XTS.XOR+SUM(isnull(SEK_VALUE,0))     ) As decimal(' +
        '18,3)),2) AS TOTALT,'
      
        'ROUND(CAST((  0.0 - (XTS.XOR+SUM(isnull(SEK_VALUE,0)))     ) As ' +
        'decimal(18,3)),2) AS DIFFERENS'
      ''
      'FROM'
      'dbo.Client C'
      
        'Inner Join dbo.XOR_TotalSaldo_ALVE_NoInsurance XTS ON XTS.Client' +
        'No = C.ClientNo'
      ''
      
        'Left Outer Join dbo.InvoiceValueCust_ALVE_NoInsurance ivc ON ivc' +
        '.ClientNo = C.ClientNo'
      ''
      'WHERE'
      
        'C.ClientNo not in (Select cgc.ClientNo from dbo.CreditGrpClients' +
        ' cgc'
      'Inner Join dbo.Creditgrp CG on cg.grpNo = cgc.grpNo'
      'where Cgc.ClientNo = C.ClientNo)'
      ''
      'Group By  C.ClientName,  C.ClientNo, XTS.XOR'
      ''
      'having (0.0 -  (XTS.XOR+SUM(isnull(SEK_VALUE,0)))) < 0')
    Left = 24
    Top = 608
    ParamData = <
      item
        Name = 'LIMIT'
        DataType = ftFloat
        ParamType = ptInput
      end>
    object cds_CreditAnalysKUND: TStringField
      DisplayLabel = 'Grupp'
      FieldName = 'KUND'
      Origin = 
        #338'x'#8221#0'X) '#10#144#177' '#10#0#0#0#0#220#11' '#10#144#179' '#10#216#0'p'#0#0#1#0#0#0#0#0#0#1#0#0#0#10#208#2'@'#26#208#2'@'#0#0#0#0#732#8220' '#10'J'#10#16#0#0#0#0#0 +
        #0#1#0#0#24#339' '#10#192'U'#352#1#0#0#0#0#0#0#0#0#0#0#0#0#255#255#255#255#255#255#255#255#0#1#0#0'<'#219'"'#7#0#0#0#0#0#0#0#0#208'XX'#0'X) '#10#0#0#0#0'<'#8211' '#10 +
        #26#0#0#0#204#176
      ReadOnly = True
      Size = 80
    end
    object cds_CreditAnalysNote: TStringField
      DisplayLabel = 'Notering'
      FieldName = 'Note'
      Origin = 'Note'
      ReadOnly = True
      Size = 255
    end
    object cds_CreditAnalysClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ReadOnly = True
      Required = True
    end
    object cds_CreditAnalysCreditLimit: TFloatField
      DisplayLabel = 'Kreditgr'#228'ns'
      FieldName = 'CreditLimit'
      Origin = 'CreditLimit'
      ReadOnly = True
    end
    object cds_CreditAnalysXOR: TBCDField
      FieldName = 'XOR'
      Origin = 'XOR'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object cds_CreditAnalysVIS: TBCDField
      FieldName = 'VIS'
      Origin = 'VIS'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object cds_CreditAnalysTOTALT: TBCDField
      DisplayLabel = 'Totalt'
      FieldName = 'TOTALT'
      Origin = 'TOTALT'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object cds_CreditAnalysDIFFERENS: TBCDField
      DisplayLabel = 'Differens'
      FieldName = 'DIFFERENS'
      Origin = 'DIFFERENS'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object ds_CreditAnalys: TDataSource
    DataSet = cds_CreditAnalys
    Left = 24
    Top = 664
  end
  object ds_CreGrpCli: TDataSource
    DataSet = cds_CreGrpCli
    Left = 304
    Top = 664
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    ConnectionName = 'VIS'
    InsertSQL.Strings = (
      'INSERT INTO invoicepaystatus'
      '(internalinvoiceno, datepaid, paid, amountpaid, '
      '  note)'
      
        'VALUES (:new_internalinvoiceno, :new_datepaid, :new_paid, :new_a' +
        'mountpaid, '
      '  :new_note)')
    ModifySQL.Strings = (
      'UPDATE invoicepaystatus'
      
        'SET internalinvoiceno = :new_internalinvoiceno, datepaid = :new_' +
        'datepaid, '
      
        '  paid = :new_paid, amountpaid = :new_amountpaid, note = :new_no' +
        'te'
      'WHERE internalinvoiceno = :old_internalinvoiceno')
    DeleteSQL.Strings = (
      'DELETE FROM invoicepaystatus'
      'WHERE internalinvoiceno = :old_internalinvoiceno')
    LockSQL.Strings = (
      
        'SELECT internalinvoiceno, datepaid, paid, amountpaid, note, user' +
        'id'
      'FROM invoicepaystatus'
      'WHERE internalinvoiceno = :old_internalinvoiceno')
    FetchRowSQL.Strings = (
      
        'SELECT internalinvoiceno, datepaid, paid, amountpaid, note, user' +
        'id'
      'FROM invoicepaystatus'
      'WHERE internalinvoiceno = :internalinvoiceno')
    Left = 1032
    Top = 448
  end
  object sq_InsPayStatus: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_InvoicePayStatusIndex01'
        Fields = 'FAKTURANR'
      end>
    IndexName = 'cds_InvoicePayStatusIndex01'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.InvoicePayStatus (InternalInvoiceNo, DatePaid, P' +
        'aid, AmountPaid, Note, UserID)'
      'Select IH.InternalInvoiceNo,'
      ':DatePaid, :Paid, :AmountPaid, :Note, :UserID'
      'FROM dbo.InvoiceHeader IH'
      'WHERE'
      'IH.InternalInvoiceNo = :InternalInvoiceNo'
      
        'AND NOT EXISTS (select ps.InternalInvoiceNo FROM dbo.InvoicePayS' +
        'tatus ps'
      'WHERE ps.InternalInvoiceNo = ih.InternalInvoiceNo)'
      '')
    Left = 920
    Top = 392
    ParamData = <
      item
        Name = 'DATEPAID'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'PAID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'AMOUNTPAID'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'NOTE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_OrderstockDtl: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_OrderstockDtl'
    Left = 160
    Top = 240
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@DELIVERY_COUNTRY'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = '@CURRENCY'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 5
        Name = '@SALES_REGION'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end>
    object sp_OrderstockDtlORDER_NO: TStringField
      FieldName = 'ORDER_NO'
      Origin = 'ORDER_NO'
    end
    object sp_OrderstockDtlStatistikland: TStringField
      FieldName = 'Statistikland'
      Origin = 'Statistikland'
      Size = 50
    end
    object sp_OrderstockDtlProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
    object sp_OrderstockDtlValuta: TStringField
      FieldName = 'Valuta'
      Origin = 'Valuta'
      Size = 5
    end
    object sp_OrderstockDtlFrsljningsregion: TStringField
      FieldName = 'F'#246'rs'#228'ljningsregion'
      Origin = '[F'#246'rs'#228'ljningsregion]'
      Size = 80
    end
    object sp_OrderstockDtlKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      Size = 80
    end
    object sp_OrderstockDtlOrderNM3int: TFloatField
      FieldName = 'OrderNM3int'
      Origin = 'OrderNM3int'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockDtlLevNM3int: TFloatField
      FieldName = 'LevNM3int'
      Origin = 'LevNM3int'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockDtlOrderstockNM3int: TFloatField
      FieldName = 'OrderstockNM3int'
      Origin = 'OrderstockNM3int'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockDtlOrderNM3ext: TFloatField
      FieldName = 'OrderNM3ext'
      Origin = 'OrderNM3ext'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockDtlLevNM3ext: TFloatField
      FieldName = 'LevNM3ext'
      Origin = 'LevNM3ext'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockDtlOrderstockNM3ext: TFloatField
      FieldName = 'OrderstockNM3ext'
      Origin = 'OrderstockNM3ext'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockDtlOrderstockValuta: TFloatField
      FieldName = 'OrderstockValuta'
      Origin = 'OrderstockValuta'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockDtlOrderstockSEK: TFloatField
      FieldName = 'OrderstockSEK'
      Origin = 'OrderstockSEK'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockDtlSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object sp_OrderstockDtlCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object sp_OrderstockDtlCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object sp_OrderstockDtlMPNH: TFloatField
      FieldName = 'MPNH'
      Origin = 'MPNH'
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockDtlOrderradnr: TIntegerField
      FieldName = 'Orderradnr'
      Origin = 'Orderradnr'
    end
  end
  object ds_OrderstockDtl: TDataSource
    DataSet = sp_OrderstockDtl
    Left = 160
    Top = 288
  end
  object sq_ModInsPayStatus: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_InvoicePayStatusIndex01'
        Fields = 'FAKTURANR'
      end>
    IndexName = 'cds_InvoicePayStatusIndex01'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Update dbo.InvoicePayStatus SET DatePaid = :DatePaid, Paid = :Pa' +
        'id, AmountPaid = :AmountPaid, Note = :Note, UserID = :UserID'
      'WHERE'
      'InternalInvoiceNo = :InternalInvoiceNo')
    Left = 920
    Top = 336
    ParamData = <
      item
        Name = 'DATEPAID'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'PAID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'AMOUNTPAID'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'NOTE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_Orderstock: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_Orderstock'
    Left = 160
    Top = 448
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_OrderstockPriceOK: TIntegerField
      FieldName = 'PriceOK'
      Origin = 'PriceOK'
      ReadOnly = True
      Required = True
    end
    object sp_OrderstockLev_Land: TStringField
      FieldName = 'Lev_Land'
      Origin = 'Lev_Land'
      Size = 50
    end
    object sp_OrderstockValuta: TStringField
      FieldName = 'Valuta'
      Origin = 'Valuta'
      Size = 5
    end
    object sp_OrderstockFörsäljningsregion: TStringField
      FieldName = 'F'#246'rs'#228'ljningsregion'
      Origin = '[F'#246'rs'#228'ljningsregion]'
      Size = 80
    end
    object sp_OrderstockOrderNM3int: TFloatField
      FieldName = 'OrderNM3int'
      Origin = 'OrderNM3int'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockLevNM3int: TFloatField
      FieldName = 'LevNM3int'
      Origin = 'LevNM3int'
      ReadOnly = True
    end
    object sp_OrderstockOrderstockNM3int: TFloatField
      FieldName = 'OrderstockNM3int'
      Origin = 'OrderstockNM3int'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockOrderNM3ext: TFloatField
      FieldName = 'OrderNM3ext'
      Origin = 'OrderNM3ext'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockLevNM3ext: TFloatField
      FieldName = 'LevNM3ext'
      Origin = 'LevNM3ext'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockOrderstockNM3ext: TFloatField
      FieldName = 'OrderstockNM3ext'
      Origin = 'OrderstockNM3ext'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockOrderstockValuta: TFloatField
      FieldName = 'OrderstockValuta'
      Origin = 'OrderstockValuta'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockOrderstockSEK: TFloatField
      FieldName = 'OrderstockSEK'
      Origin = 'OrderstockSEK'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockInternalValue: TFloatField
      FieldName = 'InternalValue'
      Origin = 'InternalValue'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object sp_OrderstockSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object sp_OrderstockCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object sp_OrderstockCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object sp_OrderstockMPNH: TFloatField
      FieldName = 'MPNH'
      Origin = 'MPNH'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
  end
end
