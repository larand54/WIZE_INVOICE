object dm_ImportWoodx: Tdm_ImportWoodx
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 868
  Width = 1132
  object ds_ImpClientMap: TDataSource
    DataSet = cds_ImpClientMap
    Left = 40
    Top = 64
  end
  object ds_ImpProdMap: TDataSource
    DataSet = cds_ImpProdMap
    Left = 144
    Top = 72
  end
  object ds_ImpLenMap: TDataSource
    DataSet = cds_ImpLenMap
    Left = 240
    Top = 72
  end
  object dsClient: TDataSource
    DataSet = cdsClient
    Left = 504
    Top = 80
  end
  object ds_Products: TDataSource
    DataSet = cds_Products
    Left = 612
    Top = 80
  end
  object mtPkgStatus: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'Message'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <>
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
    Left = 360
    Top = 192
    object mtPkgStatusStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtPkgStatusMessage: TStringField
      FieldName = 'Message'
      Size = 80
    end
  end
  object mtClient: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'WoodX_ClientName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PartyIdentifier'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VisClientNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
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
    AfterInsert = mtClientAfterInsert
    Left = 616
    Top = 200
    object mtClientWoodX_ClientName: TStringField
      FieldName = 'WoodX_ClientName'
      Size = 80
    end
    object mtClientPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Size = 50
    end
    object mtClientVisClientNo: TIntegerField
      FieldName = 'VisClientNo'
    end
    object mtClientVisClientName: TStringField
      FieldKind = fkLookup
      FieldName = 'VisClientName'
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VisClientNo'
      Size = 80
      Lookup = True
    end
  end
  object ds_mtClient: TDataSource
    DataSet = mtClient
    Left = 616
    Top = 248
  end
  object ds_ProdLength: TDataSource
    DataSet = cds_ProdLength
    Left = 792
    Top = 80
  end
  object ds_DMWH: TDataSource
    DataSet = cds_DMWH
    Left = 56
    Top = 432
  end
  object ds_DMR: TDataSource
    DataSet = cds_DMR
    Left = 136
    Top = 432
  end
  object ds_PartyID: TDataSource
    DataSet = cds_PartyID
    Left = 216
    Top = 440
  end
  object ds_NameAddress: TDataSource
    DataSet = cds_NameAddress
    Left = 296
    Top = 440
  end
  object ds_DMS: TDataSource
    DataSet = cds_DMS
    Left = 384
    Top = 440
  end
  object ds_DSDMR: TDataSource
    DataSet = cds_DSDMR
    Left = 464
    Top = 440
  end
  object ds_ProdID: TDataSource
    DataSet = cds_ProdID
    Left = 552
    Top = 440
  end
  object ds_TrpPkgInfo: TDataSource
    DataSet = cds_TrpPkgInfo
    Left = 632
    Top = 448
  end
  object ds_InfoQuant: TDataSource
    DataSet = cds_InfoQuant
    Left = 720
    Top = 440
  end
  object ds_LengthSpec: TDataSource
    DataSet = cds_LengthSpec
    Left = 824
    Top = 448
  end
  object mtLoadProducts: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductDisplayName'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
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
    Left = 616
    Top = 152
    object mtLoadProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLoadProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
  end
  object sq_GetDMR: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      'INV.InvoiceNo '#9#9'AS InvoiceNo,'
      'IL.OrderNoText '#9#9'AS OrderNoText,'
      'IL.ShippingPlanNo '#9'AS LONo,'
      'IL.Reference     '#9'AS IL_Reference,'
      'IH.InternalInvoiceNo '#9'AS InternalInvoiceNo,'
      'CSD.Reference     '#9'AS CSD_Reference_Detail,'
      'OH.PO_Number'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNos INV'#9'ON'#9'INV.InternalInvoiceNo = I' +
        'H.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      'AND (IL.ShippingPlanNo = :ShippingPlanNo)'
      '  AND     (IL.ShippingPlanNo      <> -1                )')
    Left = 136
    Top = 320
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
    object sq_GetDMRInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
    end
    object sq_GetDMROrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      FixedChar = True
    end
    object sq_GetDMRLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      Required = True
    end
    object sq_GetDMRIL_Reference: TStringField
      FieldName = 'IL_Reference'
      Origin = 'IL_Reference'
      Size = 30
    end
    object sq_GetDMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetDMRCSD_Reference_Detail: TStringField
      FieldName = 'CSD_Reference_Detail'
      Origin = 'CSD_Reference_Detail'
      Size = 30
    end
    object sq_GetDMRPO_Number: TStringField
      FieldName = 'PO_Number'
      Origin = 'PO_Number'
      Size = 30
    end
  end
  object cds_DMWH: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.DeliveryMessageWoodHeader'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 56
    Top = 376
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_DMWHDeliveryMessageType: TStringField
      FieldName = 'DeliveryMessageType'
      Origin = 'DeliveryMessageType'
    end
    object cds_DMWHDeliveryMessageStatusType: TStringField
      FieldName = 'DeliveryMessageStatusType'
      Origin = 'DeliveryMessageStatusType'
      Size = 10
    end
    object cds_DMWHReissued: TStringField
      FieldName = 'Reissued'
      Origin = 'Reissued'
      Size = 3
    end
    object cds_DMWHLanguage: TStringField
      FieldName = 'Language'
      Origin = '[Language]'
      Size = 3
    end
    object cds_DMWHDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_DMWHDeliveryMessageDate: TSQLTimeStampField
      FieldName = 'DeliveryMessageDate'
      Origin = 'DeliveryMessageDate'
    end
    object cds_DMWHIncoTermsLocation: TStringField
      FieldName = 'IncoTermsLocation'
      Origin = 'IncoTermsLocation'
      Size = 45
    end
    object cds_DMWHIncoTerms: TStringField
      FieldName = 'IncoTerms'
      Origin = 'IncoTerms'
      Size = 3
    end
    object cds_DMWHAdditionalText: TStringField
      FieldName = 'AdditionalText'
      Origin = 'AdditionalText'
      Size = 255
    end
    object cds_DMWHTotalNumberOfShipments: TIntegerField
      FieldName = 'TotalNumberOfShipments'
      Origin = 'TotalNumberOfShipments'
    end
    object cds_DMWHTotalQuantityQuantityType: TStringField
      FieldName = 'TotalQuantityQuantityType'
      Origin = 'TotalQuantityQuantityType'
      Size = 50
    end
    object cds_DMWHTotalQuantityValue: TBCDField
      FieldName = 'TotalQuantityValue'
      Origin = 'TotalQuantityValue'
      Precision = 18
      Size = 3
    end
    object cds_DMWHTotalQuantityUOM: TStringField
      FieldName = 'TotalQuantityUOM'
      Origin = 'TotalQuantityUOM'
      Size = 50
    end
    object cds_DMWHInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_DMWHYear: TIntegerField
      FieldName = 'Year'
      Origin = '[Year]'
      ProviderFlags = [pfInUpdate]
    end
    object cds_DMWHMonth: TIntegerField
      FieldName = 'Month'
      Origin = '[Month]'
      ProviderFlags = [pfInUpdate]
    end
    object cds_DMWHDay: TIntegerField
      FieldName = 'Day'
      Origin = '[Day]'
      ProviderFlags = [pfInUpdate]
    end
    object cds_DMWHPO_Number: TStringField
      FieldName = 'PO_Number'
      Origin = 'PO_Number'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sq_Ins_wx_prod_trsl: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete From dbo.wx_prod_trsl'
      'WHERE SupplierNo = :SupplierNo'
      'AND PartNumber = :PartNumber'
      'AND SalesRegionNo = :SalesRegionNo'
      
        'Insert into dbo.wx_prod_trsl (SupplierNo, PartNumber, ProductNo,' +
        ' SalesRegionNo)'
      'VALUES(:SupplierNo, :PartNumber, :ProductNo, :SalesRegionNo)')
    Left = 360
    Top = 24
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PARTNUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PARTNUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SearchPkgNo: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select PackageNo FROM dbo.PackageNumber'
      'WHERE PackageNo = :PackageNo'
      'AND SupplierCode = :SupplierCode')
    Left = 360
    Top = 136
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
    object sq_SearchPkgNoPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_ImpLenMap: TADQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_ImpLenMapIndex01'
        Fields = 'Identifier;DeliveryMessageNumber'
      end>
    IndexName = 'cds_ImpLenMapIndex01'
    MasterSource = ds_ImpProdMap
    MasterFields = 'Identifier;DeliveryMessageNumber'
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select distinct tp.DeliveryMessageNumber, tp.Identifier, ls.Leng' +
        'thCategory, ls.TotalNumberOfUnitsValue as Styck,'
      
        '(Select Top 1 PL.ActualLengthMM FROM dbo.ProductLength PL WHERE ' +
        'PL.ActualLengthMM = ls.LengthCategory'
      'AND PL.NominalLengthMM = ls.LengthCategory'
      'AND PL.Act = 1) AS L'#228'ngd,'
      
        '(Select Top 1 PL.ProductLengthNo FROM dbo.ProductLength PL WHERE' +
        ' PL.ActualLengthMM = ls.LengthCategory'
      'AND PL.NominalLengthMM = ls.LengthCategory'
      'AND PL.Act = 1) AS ProductLengthNo'
      'FROM dbo.DeliveryMessageShipment2 dms'
      
        'Inner Join dbo.Transportpackageinformation2 tp on tp.DeliveryMes' +
        'sageNumber = dms.DeliveryMessageNumber'
      
        #9#9#9#9#9#9'                                AND tp.DeliveryShipmentLin' +
        'eItemNumber = dms.DeliveryShipmentLineItemNumber'
      ''
      
        'Inner Join dbo.LengthSpecification2 ls on ls.DeliveryMessageNumb' +
        'er = tp.DeliveryMessageNumber'
      
        #9#9#9#9#9#9'                                AND ls.DeliveryShipmentLin' +
        'eItemNumber = tp.DeliveryShipmentLineItemNumber'
      
        #9#9#9#9#9#9'                                AND ls.Identifier = tp.Ide' +
        'ntifier'
      ''
      '--WHERE tp.DeliveryMessageNumber = :DeliveryMessageNumber'
      '--      AND tp.Identifier = :Identifier'
      ''
      'Order By tp.Identifier, ls.LengthCategory')
    Left = 240
    Top = 16
    object cds_ImpLenMapDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      Required = True
      Size = 30
    end
    object cds_ImpLenMapIdentifier: TStringField
      FieldName = 'Identifier'
      Origin = 'Identifier'
      Required = True
      Size = 60
    end
    object cds_ImpLenMapLengthCategory: TStringField
      FieldName = 'LengthCategory'
      Origin = 'LengthCategory'
      Required = True
      Size = 40
    end
    object cds_ImpLenMapStyck: TBCDField
      FieldName = 'Styck'
      Origin = 'Styck'
      Precision = 18
      Size = 3
    end
    object cds_ImpLenMapLngd: TFloatField
      FieldName = 'L'#228'ngd'
      Origin = '[L'#228'ngd]'
      ReadOnly = True
    end
    object cds_ImpLenMapProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ReadOnly = True
    end
  end
  object sq_GetISOCtry: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select CountryCode FROM dbo.Country'
      'WHERE CountryName = :CountryName')
    Left = 208
    Top = 200
    ParamData = <
      item
        Name = 'COUNTRYNAME'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetISOCtryCountryCode: TStringField
      FieldName = 'CountryCode'
      Origin = 'CountryCode'
      FixedChar = True
      Size = 5
    end
  end
  object cds_ImpProdMap: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select distinct'
      'dmwh.DeliveryMessageNumber,'
      'tp.ProductIdentifier,'
      'tp.Identifier,'
      'wxp.ProductNo,'
      'SUM(ls.TotalNumberOfUnitsValue) AS Styck,'
      'tp.prefix AS ClientCode,'
      'wxp.SupplierNo,'
      'wxp.PartNumber,'
      'C.ClientNo,'
      '0 AS Status,'
      'tp.ProductDescription AS WoodXProduct,'
      'Case'
      'When tp.ProductDescription > '#39#39' Then tp.ProductDescription'
      'else'
      'tp.ProductIdentifier'
      'End AS Produktbeskrivning'
      ''
      ''
      'FROM dbo.DeliveryMessageWoodHeader2 dmwh'
      
        'Inner Join dbo.PartyIdentifier2 paid on paid.DeliveryMessageNumb' +
        'er = dmwh.DeliveryMessageNumber'
      
        'Inner Join dbo.Client c on c.PartyIdentifier = paid.PartyIdentif' +
        'ier'
      ''
      
        '--Inner Join dbo.DeliveryMessageShipment2 dms on dms.DeliveryMes' +
        'sageNumber = dmwh.DeliveryMessageNumber'
      
        'Inner Join dbo.Transportpackageinformation2 tp on tp.DeliveryMes' +
        'sageNumber = dmwh.DeliveryMessageNumber'
      
        '--                                            AND tp.DeliveryShi' +
        'pmentLineItemNumber = dms.DeliveryShipmentLineItemNumber'
      
        'Inner Join dbo.ProductIdentifier2 pid on pid.DeliveryMessageNumb' +
        'er = tp.DeliveryMessageNumber'
      
        '                                    AND pid.ProductIdentifier = ' +
        'tp.ProductIdentifier'
      ''
      
        'Inner Join dbo.LengthSpecification2 ls on ls.DeliveryMessageNumb' +
        'er = tp.DeliveryMessageNumber'
      
        '                                    AND ls.DeliveryShipmentLineI' +
        'temNumber = tp.DeliveryShipmentLineItemNumber'
      
        '                                    AND ls.Identifier = tp.Ident' +
        'ifier'
      
        'Left Outer Join dbo.wx_prod_trsl wxp on wxp.PartNumber = tp.Prod' +
        'uctIdentifier'
      #9#9#9#9'AND wxp.SupplierNo = C.ClientNo'
      '        AND wxp.SalesRegionNo = :SalesRegionNo'
      ''
      
        'WHERE dmwh.DeliveryMessageNumber = :DeliveryMessageNumber       ' +
        ' '
      
        'Group By dmwh.DeliveryMessageNumber, tp.ProductIdentifier, tp.Id' +
        'entifier, wxp.ProductNo,'
      'tp.prefix,'
      'wxp.SupplierNo, wxp.PartNumber, C.ClientNo,'
      'tp.ProductDescription'
      'Order By tp.Identifier')
    Left = 144
    Top = 16
    ParamData = <
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_ImpProdMapProductIdentifier: TStringField
      FieldName = 'ProductIdentifier'
      Origin = 'ProductIdentifier'
      ProviderFlags = []
      Size = 60
    end
    object cds_ImpProdMapIdentifier: TStringField
      FieldName = 'Identifier'
      Origin = 'Identifier'
      ProviderFlags = []
      Size = 60
    end
    object cds_ImpProdMapProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ImpProdMapClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cds_ImpProdMapProdukt: TStringField
      FieldKind = fkLookup
      FieldName = 'Produkt'
      LookupDataSet = cds_Products
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'ProductNo'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object cds_ImpProdMapSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ImpProdMapPartNumber: TStringField
      FieldName = 'PartNumber'
      Origin = 'PartNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object cds_ImpProdMapClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_ImpProdMapStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = []
    end
    object cds_ImpProdMapLogg: TStringField
      FieldKind = fkLookup
      FieldName = 'Logg'
      LookupDataSet = mtPkgStatus
      LookupKeyFields = 'Status'
      LookupResultField = 'Message'
      KeyFields = 'Status'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_ImpProdMapDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = []
      Size = 30
    end
    object cds_ImpProdMapWoodXProduct: TStringField
      FieldName = 'WoodXProduct'
      Origin = 'WoodXProduct'
      ProviderFlags = []
      Size = 50
    end
    object cds_ImpProdMapProduktbeskrivning: TStringField
      FieldName = 'Produktbeskrivning'
      Origin = 'Produktbeskrivning'
      ProviderFlags = []
      Size = 60
    end
    object cds_ImpProdMapStyck: TFMTBCDField
      FieldName = 'Styck'
      Origin = 'Styck'
      ProviderFlags = [pfInUpdate]
      Precision = 38
      Size = 3
    end
  end
  object sq_Delete: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.DeliveryMessageWoodHeader'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 40
    Top = 184
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetLONos: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      'IL.SHIPPINGPLANNO AS LONo,'
      'IH.InternalInvoiceNo  AS InternalInvoiceNo,'
      'INV.InvoiceNo         AS InvoiceNo'
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      ''
      'WHERE     (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      ''
      '  AND     (IL.ShippingPlanNo      <> -1)')
    Left = 40
    Top = 128
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLONosLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'InvoiceNo'
      Required = True
    end
    object sq_GetLONosInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetLONosInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
    end
  end
  object cds_ImpClientMap: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select distinct c.ClientName,'
      'paid.PartyIdentifier AS WoodXPartyIdentifier,'
      'paid.PartyIdentifierType AS WoodXPartyIdentifierType,'
      'na.Name1, dmwh.DeliveryMessageNumber,'
      'c.ClientNo, c.PartyIdentifier,'
      'c.PartyIdentifierType,'
      'dmwh.DeliveryMessageDate'
      'FROM dbo.DeliveryMessageWoodHeader2 dmwh'
      
        'Inner Join dbo.NameAddress2 na on na.DeliveryMessageNumber = dmw' +
        'h.DeliveryMessageNumber'
      
        'Inner Join dbo.PartyIdentifier2 paid on paid.DeliveryMessageNumb' +
        'er = dmwh.DeliveryMessageNumber'
      
        'Left Outer Join dbo.Client c on c.PartyIdentifier = paid.PartyId' +
        'entifier'
      
        '                            and c.PartyIdentifierType = paid.Par' +
        'tyIdentifierType'
      'WHERE'
      'dmwh.DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND na.PartyType = '#39'Supplier'#39
      
        'AND ((paid.PartyIdentifierType = '#39'TaxIdentifier'#39') or (paid.Party' +
        'IdentifierType = '#39'VATIdentificationNumber'#39')'
      'or (paid.PartyIdentifierType = '#39'AssignedBySeller'#39')'
      'or (paid.PartyIdentifierType = '#39'GlobalLocationNumber'#39'))'
      'AND paid.Partytype = '#39'Supplier'#39)
    Left = 40
    Top = 16
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_ImpClientMapClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object cds_ImpClientMapWoodXPartyIdentifier: TStringField
      FieldName = 'WoodXPartyIdentifier'
      Origin = 'WoodXPartyIdentifier'
      ProviderFlags = []
      Required = True
      Size = 60
    end
    object cds_ImpClientMapName1: TStringField
      FieldName = 'Name1'
      Origin = 'Name1'
      ProviderFlags = []
      Size = 60
    end
    object cds_ImpClientMapDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object cds_ImpClientMapClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ImpClientMapPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Origin = 'PartyIdentifier'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_ImpClientMapDeliveryMessageDate: TSQLTimeStampField
      FieldName = 'DeliveryMessageDate'
      Origin = 'DeliveryMessageDate'
      ProviderFlags = []
    end
    object cds_ImpClientMapWoodXPartyIdentifierType: TStringField
      FieldName = 'WoodXPartyIdentifierType'
      Origin = 'WoodXPartyIdentifierType'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object cds_ImpClientMapPartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      Origin = 'PartyIdentifierType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sq_ClrPartyID: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.Client'
      'Set PartyIdentifier = '#39#39
      'WHERE PartyIdentifier = :PartyIdentifier')
    Left = 792
    Top = 224
    ParamData = <
      item
        Name = 'PARTYIDENTIFIER'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sq_UpdateClient: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.Client'
      'Set PartyIdentifier = :PartyIdentifier,'
      'PartyIdentifierType = :PartyIdentifierType'
      'WHERE ClientNo = :ClientNo')
    Left = 792
    Top = 168
    ParamData = <
      item
        Name = 'PARTYIDENTIFIER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'PARTYIDENTIFIERTYPE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_ImpLengths: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select LS.*'
      'FROM dbo.LengthSpecification2 LS '
      'WHERE'
      'LS.DeliveryMessageNumber = :DeliveryMessageNumber')
    Left = 688
    Top = 32
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_ImpLengthsDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_ImpLengthsDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      Required = True
    end
    object cds_ImpLengthsIdentifier: TStringField
      FieldName = 'Identifier'
      Origin = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object cds_ImpLengthsLengthCategory: TStringField
      FieldName = 'LengthCategory'
      Origin = 'LengthCategory'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_ImpLengthsTotalNumberOfUnitsValue: TBCDField
      FieldName = 'TotalNumberOfUnitsValue'
      Origin = 'TotalNumberOfUnitsValue'
      Precision = 18
      Size = 3
    end
    object cds_ImpLengthsTotalNumberOfUnitsUOM: TStringField
      FieldName = 'TotalNumberOfUnitsUOM'
      Origin = 'TotalNumberOfUnitsUOM'
      Size = 50
    end
  end
  object cds_Products: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,'
      '      sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName,'
      
        #9'    pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThickness' +
        'MM, pg.NominalWidthMM,'
      
        '      pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.Produc' +
        'tCategoryNo,'
      
        '      pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthIN' +
        'CH'
      'FROM dbo.Product pd'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      #9#9#9#9'AND gd.LanguageCode = 1'
      ''
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      #9#9#9#9'AND pc.LanguageCode = 1'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE pd.Act = 1'
      'AND  pg.Act = 1'
      'AND pc.Act = 1'
      'AND sc.Act = 1'
      'AND gd.Act = 1'
      'AND sf.Act = 1'
      '')
    Left = 608
    Top = 32
    object cds_ProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object cds_ProductsGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProductsSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_ProductsSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_ProductsProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      Required = True
    end
    object cds_ProductsActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_ProductsActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_ProductsNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_ProductsNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_ProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProductsGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_ProductsSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_ProductsProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cds_ProductsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_ProductsNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_ProductsNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
  end
  object cdsClient: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'select C.ClientNo, C.ClientName, C.ClientCode, C.PartyIdentifier' +
        ','
      'C.PartyIdentifierType'
      ''
      'from dbo.client C'
      'WHERE C.ClientNo = :ClientNo'
      'Order by C.clientName'
      '')
    Left = 504
    Top = 24
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsClientClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsClientPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Origin = 'PartyIdentifier'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClientPartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      Origin = 'PartyIdentifierType'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sq_GetOLDesc: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT OL.OrderLineDescription'#9'AS ProductDescription'
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      'WHERE (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      'AND OL.ProductNo = :ProductNo'
      'AND (IL.ShippingPlanNo      = :ShippingPlanNo)'
      'AND (IL.ShippingPlanNo      <> -1)')
    Left = 360
    Top = 240
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetOLDescProductDescription: TStringField
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      Size = 100
    end
  end
  object sq_GetLinkedProductNo: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select ProductNo From dbo.wx_prod_trsl'
      'WHERE SupplierNo = :SupplierNo'
      'AND PartNumber = :PartNumber')
    Left = 360
    Top = 80
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PARTNUMBER'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetLinkedProductNoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object sq_GetDMHW: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      'CASE'
      'WHEN DT.DeliveryTerm = '#39'CFR'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'CIF'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'CIP'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'CPT'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'DDP'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'DDU'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'DEQ'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'DES'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'EXW'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'FAS'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'FCA'#39' then DT.DeliveryTerm'
      'WHEN DT.DeliveryTerm = '#39'FOB'#39' then DT.DeliveryTerm'
      'Else'
      ' '#39'Other'#39
      'END                   AS DeliveryTerm,'
      'IH.InternalInvoiceNo  AS InternalInvoiceNo,'
      'IH.InvoiceDate        AS InvoiceDate,'
      'INV.InvoiceNo         AS InvoiceNo,'
      ''
      'CASE'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39'   THEN SUM(PTD.m3Nominal)'
      
        'WHEN PU.TemplateUnitName = '#39'Lopm n'#39'     THEN SUM(PTD.LinealMeter' +
        'NominalLength)'
      
        'WHEN PU.TemplateUnitName = '#39'kvm aB'#39'     THEN SUM(PTD.SQMofActual' +
        'Width )'
      
        'WHEN PU.TemplateUnitName = '#39'Lopm a'#39'     THEN SUM(PTD.LinealMeter' +
        'ActualLength)'
      'WHEN PU.TemplateUnitName = '#39'Stycketal'#39'  THEN SUM(PTD.NoOfPieces)'
      'WHEN PU.TemplateUnitName = '#39'm3 aDxaL'#39'   THEN SUM(PTD.m3Actual)'
      
        'WHEN PU.TemplateUnitName = '#39'm3 aDxnL'#39'   THEN SUM(PTD.m3ActualSiz' +
        'eNomLength)'
      
        'WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39'   THEN SUM(PTD.m3NomSizeAc' +
        'tualLength )'
      
        'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39'   THEN SUM(PTD.MFBMNominal' +
        ')'
      'END AS PriceVolume,'
      ''
      'SUM(PTD.LinealMeterActualLength) '#9'AS AM1,'
      'SUM(PTD.NoOfPieces) '#9#9#9'        AS Pieces,'
      'SUM(PTD.m3Actual) '#9#9#9'          AS AM3,'
      'SUM(PTD.MFBMNominal) '#9#9#9'        AS MFBM,'
      'SUM(PTD.SQMofActualWidth) '#9#9'    AS AM2,'
      'SUM(PTD.m3Nominal) '#9#9#9'          AS NM3,'
      'Count(PN.PackageNo)'#9#9#9'          AS Pkgs,'
      'Count(Distinct Ilo.LoadNo)'#9#9#9'  AS TotalNumberOfShipments,'
      'OH.OrderCreated,'
      'OH.PO_Number'
      ''
      'FROM   dbo.InvoiceHeader IH '
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      
        #9'INNER JOIN dbo.DeliveryTerm'#9#9'DT'#9'ON'#9'DT.DeliveryTerm_No'#9'= OH.Deli' +
        'veryTermsNo'
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      ''
      
        #9'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitN' +
        'o'
      ''
      
        #9'Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      #9'AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo'
      #9'AND PTD.LoadNo = ILO.LoadNo'
      #9'AND PTD.LoadDetailNo = LD.LoadDetailNo'
      ''
      ''
      'WHERE     (IL.ShippingPlanNo = :ShippingPlanNo)'
      'AND (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      'AND     (IL.ShippingPlanNo      <> -1)'
      ''
      'GROUP BY'
      'IH.InternalInvoiceNo ,'
      'IH.InvoiceDate ,'
      'INV.InvoiceNo ,'
      'PU.TemplateUnitName,'
      'DT.DeliveryTerm,'
      'OH.OrderCreated,'
      'OH.PO_Number')
    Left = 56
    Top = 320
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetDMHWPriceVolume: TFMTBCDField
      FieldName = 'PriceVolume'
      Origin = 'PriceVolume'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetDMHWAM3: TFMTBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetDMHWTotalNumberOfShipments: TIntegerField
      FieldName = 'TotalNumberOfShipments'
      Origin = 'TotalNumberOfShipments'
      ReadOnly = True
    end
    object sq_GetDMHWOrderCreated: TSQLTimeStampField
      FieldName = 'OrderCreated'
      Origin = 'OrderCreated'
    end
    object sq_GetDMHWPO_Number: TStringField
      FieldName = 'PO_Number'
      Origin = 'PO_Number'
      Size = 30
    end
  end
  object sq_GetPGNo: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT pd.ProductNo, pg.ProductGroupNo, pg.SurfacingNo, pg.Nomin' +
        'alThicknessMM'
      'FROM dbo.Product pd'
      
        'INNER JOIN dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Product' +
        'GroupNo'
      ''
      'WHERE pd.ProductNo = :ProductNo')
    Left = 880
    Top = 32
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPGNoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetPGNoProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object sq_GetPGNoSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sq_GetPGNoNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
  end
  object cds_ProdLength: TADQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_ProdLengthIndex1'
        Fields = 'ActualLengthMM;NominalLengthMM'
      end>
    IndexName = 'cds_ProdLengthIndex1'
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.ProductLength')
    Left = 792
    Top = 32
    object cds_ProdLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_ProdLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
    object cds_ProdLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
    end
    object cds_ProdLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      FixedChar = True
      Size = 15
    end
    object cds_ProdLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_ProdLengthFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_ProdLengthCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProdLengthModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProdLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProdLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdLengthProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
    end
    object cds_ProdLengthAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
  end
  object cds_DMR: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.DeliveryMessageReference'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 136
    Top = 376
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_DMRDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_DMRDeliveryMessageReference: TStringField
      FieldName = 'DeliveryMessageReference'
      Origin = 'DeliveryMessageReference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 255
    end
    object cds_DMRDeliveryMessageReferenceType: TStringField
      FieldName = 'DeliveryMessageReferenceType'
      Origin = 'DeliveryMessageReferenceType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_DMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetPartyID: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      '-- //PartyIdentifiers'
      'Select DISTINCT'
      'IL.ShippingPlanNo     AS LONo,  '
      'IH.InternalInvoiceNo '#9'AS IntNo,'
      'IH.CustomerName '#9'AS BuyerName,'
      'IH.AddressLine1 '#9'AS BuyerAddressLine1,'
      'IH.AddressLine2 '#9'AS BuyerAddressLine2,'
      'IH.AddressLine3 '#9'AS BuyerAddressLine3,'
      'IH.AddressLine4 '#9'AS BuyerAddressLine4,'
      'IH.StateOrProvince '#9'AS BuyerStateOrProvince,'
      'IH.PostalCode '#9#9'AS BuyerPostalCode,'
      'IH.CityName '#9#9'AS BuyerCity,'
      'IH.CountryName'#9#9'AS BuyerCountry,'
      'C.VATNo'#9#9#9'AS BuyerVATNo,'
      'C.ClientNo'#9#9'AS BuyerClientNo,'
      'C.ClientCode'#9#9'AS BuyerClientCode,'
      ''
      'IH.CustomerName '#9'AS ShipToName,'
      'IH.ST_AddressName '#9'AS ShipToAddressName,'
      'IH.ST_AddressLine1'#9'AS ShipToAddressLine1,'
      'IH.ST_AddressLine2'#9'AS ShipToAddressLine2,'
      'IH.ST_AddressLine3'#9'AS ShipToAddressLine3,'
      'IH.ST_AddressLine4'#9'AS ShipToAddressLine4,'
      'IH.ST_StateOrProvince'#9'AS ShipToStateOrProvince,'
      'IH.ST_PostalCode'#9'AS ShipToPostalCode,'
      'IH.ST_CityName'#9#9'AS ShipToCity,'
      'IH.ST_CountryName'#9'AS ShipToCountry,'
      ''
      'Supp.ClientName '#9'AS SupplierName,'
      'Ad.AddressLine1'#9#9'AS SupplierAddressLine1,'
      'Ad.AddressLine2'#9#9'AS SupplierAddressLine2,'
      'Ad.AddressLine3'#9#9'AS SupplierAddressLine3,'
      'Ad.AddressLine4'#9#9'AS SupplierAddressLine4,'
      'Ad.StateOrProvince'#9'AS SupplierStateOrProvince,'
      'Ad.PostalCode'#9#9'AS SupplierPostalCode,'
      'City.CityName'#9#9'AS SupplierCity,'
      'Country.CountryName'#9'AS SupplierCountry,'
      'Supp.VATNo'#9#9'AS SupplierVatNo,'
      'Supp.ClientNo'#9#9'AS SupplierClientNo,'
      'Supp.ClientCode'#9#9'AS SupplierClientCode'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = IH.CustomerNo'
      ''
      #9'inner JOIN dbo.Client Supp'#9#9'ON Supp.ClientNo = IH.SupplierNo'
      #9'Inner Join dbo.CompanyAddress CA on CA.ClientNo = Supp.ClientNo'
      #9#9#9#9#9'AND CA.AddressType = 1'
      #9'Inner Join dbo.Address Ad on Ad.AddressNo = CA.AddressNo'
      #9'Inner Join dbo.City on City.CityNo = Ad.CityNo'
      #9'Inner Join dbo.Country on Country.CountryNo = Ad.CountryNo'
      #9
      ''
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      ''
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      '  AND     (IL.ShippingPlanNo     = :ShippingPlanNo)'
      '  AND     (IL.ShippingPlanNo      <> -1)'
      '')
    Left = 216
    Top = 328
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
    object sq_GetPartyIDLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      Required = True
    end
    object sq_GetPartyIDIntNo: TIntegerField
      FieldName = 'IntNo'
      Origin = 'IntNo'
      Required = True
    end
    object sq_GetPartyIDBuyerName: TStringField
      FieldName = 'BuyerName'
      Origin = 'BuyerName'
      FixedChar = True
      Size = 80
    end
    object sq_GetPartyIDBuyerAddressLine1: TStringField
      FieldName = 'BuyerAddressLine1'
      Origin = 'BuyerAddressLine1'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerAddressLine2: TStringField
      FieldName = 'BuyerAddressLine2'
      Origin = 'BuyerAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerAddressLine3: TStringField
      FieldName = 'BuyerAddressLine3'
      Origin = 'BuyerAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerAddressLine4: TStringField
      FieldName = 'BuyerAddressLine4'
      Origin = 'BuyerAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerStateOrProvince: TStringField
      FieldName = 'BuyerStateOrProvince'
      Origin = 'BuyerStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDBuyerPostalCode: TStringField
      FieldName = 'BuyerPostalCode'
      Origin = 'BuyerPostalCode'
      FixedChar = True
    end
    object sq_GetPartyIDBuyerCity: TStringField
      FieldName = 'BuyerCity'
      Origin = 'BuyerCity'
      Size = 50
    end
    object sq_GetPartyIDBuyerCountry: TStringField
      FieldName = 'BuyerCountry'
      Origin = 'BuyerCountry'
      Size = 30
    end
    object sq_GetPartyIDBuyerVATNo: TStringField
      FieldName = 'BuyerVATNo'
      Origin = 'BuyerVATNo'
      FixedChar = True
    end
    object sq_GetPartyIDBuyerClientNo: TIntegerField
      FieldName = 'BuyerClientNo'
      Origin = 'BuyerClientNo'
      Required = True
    end
    object sq_GetPartyIDBuyerClientCode: TStringField
      FieldName = 'BuyerClientCode'
      Origin = 'BuyerClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetPartyIDShipToName: TStringField
      FieldName = 'ShipToName'
      Origin = 'ShipToName'
      FixedChar = True
      Size = 80
    end
    object sq_GetPartyIDShipToAddressName: TStringField
      FieldName = 'ShipToAddressName'
      Origin = 'ShipToAddressName'
      FixedChar = True
      Size = 80
    end
    object sq_GetPartyIDShipToAddressLine1: TStringField
      FieldName = 'ShipToAddressLine1'
      Origin = 'ShipToAddressLine1'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToAddressLine2: TStringField
      FieldName = 'ShipToAddressLine2'
      Origin = 'ShipToAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToAddressLine3: TStringField
      FieldName = 'ShipToAddressLine3'
      Origin = 'ShipToAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToAddressLine4: TStringField
      FieldName = 'ShipToAddressLine4'
      Origin = 'ShipToAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToStateOrProvince: TStringField
      FieldName = 'ShipToStateOrProvince'
      Origin = 'ShipToStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDShipToPostalCode: TStringField
      FieldName = 'ShipToPostalCode'
      Origin = 'ShipToPostalCode'
      FixedChar = True
    end
    object sq_GetPartyIDShipToCity: TStringField
      FieldName = 'ShipToCity'
      Origin = 'ShipToCity'
      FixedChar = True
      Size = 50
    end
    object sq_GetPartyIDShipToCountry: TStringField
      FieldName = 'ShipToCountry'
      Origin = 'ShipToCountry'
      FixedChar = True
      Size = 30
    end
    object sq_GetPartyIDSupplierName: TStringField
      FieldName = 'SupplierName'
      Origin = 'SupplierName'
      Size = 80
    end
    object sq_GetPartyIDSupplierAddressLine1: TStringField
      FieldName = 'SupplierAddressLine1'
      Origin = 'SupplierAddressLine1'
      Size = 40
    end
    object sq_GetPartyIDSupplierAddressLine2: TStringField
      FieldName = 'SupplierAddressLine2'
      Origin = 'SupplierAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDSupplierAddressLine3: TStringField
      FieldName = 'SupplierAddressLine3'
      Origin = 'SupplierAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDSupplierAddressLine4: TStringField
      FieldName = 'SupplierAddressLine4'
      Origin = 'SupplierAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDSupplierStateOrProvince: TStringField
      FieldName = 'SupplierStateOrProvince'
      Origin = 'SupplierStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetPartyIDSupplierPostalCode: TStringField
      FieldName = 'SupplierPostalCode'
      Origin = 'SupplierPostalCode'
      FixedChar = True
    end
    object sq_GetPartyIDSupplierCity: TStringField
      FieldName = 'SupplierCity'
      Origin = 'SupplierCity'
      Size = 50
    end
    object sq_GetPartyIDSupplierCountry: TStringField
      FieldName = 'SupplierCountry'
      Origin = 'SupplierCountry'
      Required = True
      Size = 30
    end
    object sq_GetPartyIDSupplierVatNo: TStringField
      FieldName = 'SupplierVatNo'
      Origin = 'SupplierVatNo'
      FixedChar = True
    end
    object sq_GetPartyIDSupplierClientNo: TIntegerField
      FieldName = 'SupplierClientNo'
      Origin = 'SupplierClientNo'
      Required = True
    end
    object sq_GetPartyIDSupplierClientCode: TStringField
      FieldName = 'SupplierClientCode'
      Origin = 'SupplierClientCode'
      FixedChar = True
      Size = 3
    end
  end
  object cds_PartyID: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.PartyIdentifier'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      '')
    Left = 216
    Top = 384
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PartyIDDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_PartyIDPartyType: TStringField
      FieldName = 'PartyType'
      Origin = 'PartyType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cds_PartyIDPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Origin = 'PartyIdentifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object cds_PartyIDPartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
      Origin = 'PartyIdentifierType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PartyIDInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetAddress: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      '-- //PartyIdentifiers'
      'Select DISTINCT'
      'IL.ShippingPlanNo     AS LONo,  '
      'IH.InternalInvoiceNo '#9'AS IntNo,'
      'IH.CustomerName '#9'AS BuyerName,'
      'IH.AddressLine1 '#9'AS BuyerAddressLine1,'
      'IH.AddressLine2 '#9'AS BuyerAddressLine2,'
      'IH.AddressLine3 '#9'AS BuyerAddressLine3,'
      'IH.AddressLine4 '#9'AS BuyerAddressLine4,'
      'IH.StateOrProvince '#9'AS BuyerStateOrProvince,'
      'IH.PostalCode '#9#9'AS BuyerPostalCode,'
      'IH.CityName '#9#9'AS BuyerCity,'
      'IH.CountryName'#9#9'AS BuyerCountry,'
      'C.VATNo'#9#9#9'AS BuyerVATNo,'
      'C.ClientNo'#9#9'AS BuyerClientNo,'
      'C.ClientCode'#9#9'AS BuyerClientCode,'
      ''
      'IH.CustomerName '#9'AS ShipToName,'
      'IH.ST_AddressName '#9'AS ShipToAddressName,'
      'IH.ST_AddressLine1'#9'AS ShipToAddressLine1,'
      'IH.ST_AddressLine2'#9'AS ShipToAddressLine2,'
      'IH.ST_AddressLine3'#9'AS ShipToAddressLine3,'
      'IH.ST_AddressLine4'#9'AS ShipToAddressLine4,'
      'IH.ST_StateOrProvince'#9'AS ShipToStateOrProvince,'
      'IH.ST_PostalCode'#9'AS ShipToPostalCode,'
      'IH.ST_CityName'#9#9'AS ShipToCity,'
      'IH.ST_CountryName'#9'AS ShipToCountry,'
      ''
      'Supp.ClientName '#9'AS SupplierName,'
      'Ad.AddressLine1'#9#9'AS SupplierAddressLine1,'
      'Ad.AddressLine2'#9#9'AS SupplierAddressLine2,'
      'Ad.AddressLine3'#9#9'AS SupplierAddressLine3,'
      'Ad.AddressLine4'#9#9'AS SupplierAddressLine4,'
      'Ad.StateOrProvince'#9'AS SupplierStateOrProvince,'
      'Ad.PostalCode'#9#9'AS SupplierPostalCode,'
      'City.CityName'#9#9'AS SupplierCity,'
      'Country.CountryName'#9'AS SupplierCountry,'
      'Supp.VATNo'#9#9'AS SupplierVatNo,'
      'Supp.ClientNo'#9#9'AS SupplierClientNo,'
      'Supp.ClientCode'#9#9'AS SupplierClientCode'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = IH.CustomerNo'
      ''
      #9'inner JOIN dbo.Client Supp'#9#9'ON Supp.ClientNo = IH.SupplierNo'
      ''
      
        #9'inner join dbo.ClientPreference cp on cp.ClientNo = Supp.Client' +
        'No'
      #9'and cp.RoleType = 7'
      ''
      ''
      
        '--'#9'Inner Join dbo.CompanyAddress CA on CA.ClientNo = Supp.Client' +
        'No'
      #9'--'#9#9#9#9'AND CA.AddressType = 1'
      ''
      
        #9'Inner Join dbo.Address Ad on Ad.AddressNo = cp.DefaultBillingAd' +
        'dressNo'
      #9'Inner Join dbo.City on City.CityNo = Ad.CityNo'
      #9'Inner Join dbo.Country on Country.CountryNo = Ad.CountryNo'
      ''
      ''
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      ''
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      '  AND     (IL.ShippingPlanNo      = :ShippingPlanNo     )'
      '  AND     (IL.ShippingPlanNo      <> -1                )'
      ''
      ' '
      '')
    Left = 296
    Top = 328
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
    object sq_GetAddressLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      Required = True
    end
    object sq_GetAddressIntNo: TIntegerField
      FieldName = 'IntNo'
      Origin = 'IntNo'
      Required = True
    end
    object sq_GetAddressBuyerName: TStringField
      FieldName = 'BuyerName'
      Origin = 'BuyerName'
      FixedChar = True
      Size = 80
    end
    object sq_GetAddressBuyerAddressLine1: TStringField
      FieldName = 'BuyerAddressLine1'
      Origin = 'BuyerAddressLine1'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerAddressLine2: TStringField
      FieldName = 'BuyerAddressLine2'
      Origin = 'BuyerAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerAddressLine3: TStringField
      FieldName = 'BuyerAddressLine3'
      Origin = 'BuyerAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerAddressLine4: TStringField
      FieldName = 'BuyerAddressLine4'
      Origin = 'BuyerAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerStateOrProvince: TStringField
      FieldName = 'BuyerStateOrProvince'
      Origin = 'BuyerStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressBuyerPostalCode: TStringField
      FieldName = 'BuyerPostalCode'
      Origin = 'BuyerPostalCode'
      FixedChar = True
    end
    object sq_GetAddressBuyerCity: TStringField
      FieldName = 'BuyerCity'
      Origin = 'BuyerCity'
      Size = 50
    end
    object sq_GetAddressBuyerCountry: TStringField
      FieldName = 'BuyerCountry'
      Origin = 'BuyerCountry'
      Size = 30
    end
    object sq_GetAddressBuyerVATNo: TStringField
      FieldName = 'BuyerVATNo'
      Origin = 'BuyerVATNo'
      FixedChar = True
    end
    object sq_GetAddressBuyerClientNo: TIntegerField
      FieldName = 'BuyerClientNo'
      Origin = 'BuyerClientNo'
      Required = True
    end
    object sq_GetAddressBuyerClientCode: TStringField
      FieldName = 'BuyerClientCode'
      Origin = 'BuyerClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetAddressShipToName: TStringField
      FieldName = 'ShipToName'
      Origin = 'ShipToName'
      FixedChar = True
      Size = 80
    end
    object sq_GetAddressShipToAddressName: TStringField
      FieldName = 'ShipToAddressName'
      Origin = 'ShipToAddressName'
      FixedChar = True
      Size = 80
    end
    object sq_GetAddressShipToAddressLine1: TStringField
      FieldName = 'ShipToAddressLine1'
      Origin = 'ShipToAddressLine1'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToAddressLine2: TStringField
      FieldName = 'ShipToAddressLine2'
      Origin = 'ShipToAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToAddressLine3: TStringField
      FieldName = 'ShipToAddressLine3'
      Origin = 'ShipToAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToAddressLine4: TStringField
      FieldName = 'ShipToAddressLine4'
      Origin = 'ShipToAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToStateOrProvince: TStringField
      FieldName = 'ShipToStateOrProvince'
      Origin = 'ShipToStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressShipToPostalCode: TStringField
      FieldName = 'ShipToPostalCode'
      Origin = 'ShipToPostalCode'
      FixedChar = True
    end
    object sq_GetAddressShipToCity: TStringField
      FieldName = 'ShipToCity'
      Origin = 'ShipToCity'
      FixedChar = True
      Size = 50
    end
    object sq_GetAddressShipToCountry: TStringField
      FieldName = 'ShipToCountry'
      Origin = 'ShipToCountry'
      FixedChar = True
      Size = 30
    end
    object sq_GetAddressSupplierName: TStringField
      FieldName = 'SupplierName'
      Origin = 'SupplierName'
      Size = 80
    end
    object sq_GetAddressSupplierAddressLine1: TStringField
      FieldName = 'SupplierAddressLine1'
      Origin = 'SupplierAddressLine1'
      Size = 40
    end
    object sq_GetAddressSupplierAddressLine2: TStringField
      FieldName = 'SupplierAddressLine2'
      Origin = 'SupplierAddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressSupplierAddressLine3: TStringField
      FieldName = 'SupplierAddressLine3'
      Origin = 'SupplierAddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressSupplierAddressLine4: TStringField
      FieldName = 'SupplierAddressLine4'
      Origin = 'SupplierAddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressSupplierStateOrProvince: TStringField
      FieldName = 'SupplierStateOrProvince'
      Origin = 'SupplierStateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetAddressSupplierPostalCode: TStringField
      FieldName = 'SupplierPostalCode'
      Origin = 'SupplierPostalCode'
      FixedChar = True
    end
    object sq_GetAddressSupplierCity: TStringField
      FieldName = 'SupplierCity'
      Origin = 'SupplierCity'
      Size = 50
    end
    object sq_GetAddressSupplierCountry: TStringField
      FieldName = 'SupplierCountry'
      Origin = 'SupplierCountry'
      Required = True
      Size = 30
    end
    object sq_GetAddressSupplierVatNo: TStringField
      FieldName = 'SupplierVatNo'
      Origin = 'SupplierVatNo'
      FixedChar = True
    end
    object sq_GetAddressSupplierClientNo: TIntegerField
      FieldName = 'SupplierClientNo'
      Origin = 'SupplierClientNo'
      Required = True
    end
    object sq_GetAddressSupplierClientCode: TStringField
      FieldName = 'SupplierClientCode'
      Origin = 'SupplierClientCode'
      FixedChar = True
      Size = 3
    end
  end
  object cds_NameAddress: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.NameAddress'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 296
    Top = 384
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_NameAddressDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_NameAddressPartyType: TStringField
      FieldName = 'PartyType'
      Origin = 'PartyType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cds_NameAddressName1: TStringField
      FieldName = 'Name1'
      Origin = 'Name1'
      Size = 60
    end
    object cds_NameAddressName2: TStringField
      FieldName = 'Name2'
      Origin = 'Name2'
      Size = 60
    end
    object cds_NameAddressName3: TStringField
      FieldName = 'Name3'
      Origin = 'Name3'
      Size = 60
    end
    object cds_NameAddressAddress1: TStringField
      FieldName = 'Address1'
      Origin = 'Address1'
      Size = 60
    end
    object cds_NameAddressAddress2: TStringField
      FieldName = 'Address2'
      Origin = 'Address2'
      Size = 60
    end
    object cds_NameAddressAddress3: TStringField
      FieldName = 'Address3'
      Origin = 'Address3'
      Size = 60
    end
    object cds_NameAddressAddress4: TStringField
      FieldName = 'Address4'
      Origin = 'Address4'
      Size = 60
    end
    object cds_NameAddressCity: TStringField
      FieldName = 'City'
      Origin = 'City'
      Size = 45
    end
    object cds_NameAddressCounty: TStringField
      FieldName = 'County'
      Origin = 'County'
      Size = 45
    end
    object cds_NameAddressStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
    end
    object cds_NameAddressPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      Size = 8
    end
    object cds_NameAddressCountry: TStringField
      FieldName = 'Country'
      Origin = 'Country'
      Size = 72
    end
    object cds_NameAddressISOcountryCode: TStringField
      FieldName = 'ISOcountryCode'
      Origin = 'ISOcountryCode'
      Size = 2
    end
    object cds_NameAddressInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_DMS: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.DeliveryMessageShipment'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 384
    Top = 384
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_DMSDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_DMSShipmentID: TStringField
      FieldName = 'ShipmentID'
      Origin = 'ShipmentID'
      Size = 30
    end
    object cds_DMSShipmentIDType: TStringField
      FieldName = 'ShipmentIDType'
      Origin = 'ShipmentIDType'
    end
    object cds_DMSProductGroupID: TStringField
      FieldName = 'ProductGroupID'
      Origin = 'ProductGroupID'
      Size = 30
    end
    object cds_DMSProductGroupIDType: TStringField
      FieldName = 'ProductGroupIDType'
      Origin = 'ProductGroupIDType'
    end
    object cds_DMSDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_DMSProductIdentifier: TStringField
      FieldName = 'ProductIdentifier'
      Origin = 'ProductIdentifier'
      Size = 50
    end
    object cds_DMSProductIdentifierType: TStringField
      FieldName = 'ProductIdentifierType'
      Origin = 'ProductIdentifierType'
      Size = 50
    end
    object cds_DMSAgency: TStringField
      FieldName = 'Agency'
      Origin = 'Agency'
      Size = 50
    end
    object cds_DMSSpeciesType: TStringField
      FieldName = 'SpeciesType'
      Origin = 'SpeciesType'
      Size = 50
    end
    object cds_DMSGradingRule: TStringField
      FieldName = 'GradingRule'
      Origin = 'GradingRule'
      Size = 50
    end
    object cds_DMSGradeCode: TStringField
      FieldName = 'GradeCode'
      Origin = 'GradeCode'
      Size = 50
    end
    object cds_DMSGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Size = 50
    end
    object cds_DMSWidthValue: TBCDField
      FieldName = 'WidthValue'
      Origin = 'WidthValue'
      Precision = 18
      Size = 1
    end
    object cds_DMSWidthUOM: TStringField
      FieldName = 'WidthUOM'
      Origin = 'WidthUOM'
      Size = 50
    end
    object cds_DMSThicknessValue: TBCDField
      FieldName = 'ThicknessValue'
      Origin = 'ThicknessValue'
      Precision = 18
      Size = 1
    end
    object cds_DMSThicknessUOM: TStringField
      FieldName = 'ThicknessUOM'
      Origin = 'ThicknessUOM'
      Size = 50
    end
    object cds_DMSManufacturingProcessType: TStringField
      FieldName = 'ManufacturingProcessType'
      Origin = 'ManufacturingProcessType'
      Size = 30
    end
    object cds_DMSExlogValue: TIntegerField
      FieldName = 'ExlogValue'
      Origin = 'ExlogValue'
    end
    object cds_DMSExlogUOM: TStringField
      FieldName = 'ExlogUOM'
      Origin = 'ExlogUOM'
      Size = 50
    end
    object cds_DMSProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_DMSInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_DMSProductDescription: TStringField
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      Size = 50
    end
  end
  object sq_GetDSDMR: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      'INV.InvoiceNo '#9#9'AS InvoiceNumber,'
      'IL.OrderNoText '#9#9'AS ContractNumber,'
      'IL.ShippingPlanNo '#9'AS LoadingOrderNumber,'
      'CSD.OrderLineNo'#9#9'AS OrderLineItemNumber,'
      ''
      'IL.Reference     '#9'AS IL_Reference,'
      'IH.InternalInvoiceNo '#9'AS InternalInvoiceNo,'
      'CSD.Reference     '#9'AS CSD_Reference_Detail,'
      'OH.PO_Number'
      ''
      'FROM   dbo.InvoiceHeader IH '
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNos INV'#9'ON'#9'INV.InternalInvoiceNo = I' +
        'H.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      'WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo) '
      ''
      '  AND     (IL.ShippingPlanNo = :LONo )'
      ''
      ' '
      '')
    Left = 464
    Top = 328
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetDSDMRInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
      Origin = 'InvoiceNumber'
    end
    object sq_GetDSDMRContractNumber: TStringField
      FieldName = 'ContractNumber'
      Origin = 'ContractNumber'
      FixedChar = True
    end
    object sq_GetDSDMRLoadingOrderNumber: TIntegerField
      FieldName = 'LoadingOrderNumber'
      Origin = 'LoadingOrderNumber'
      Required = True
    end
    object sq_GetDSDMROrderLineItemNumber: TIntegerField
      FieldName = 'OrderLineItemNumber'
      Origin = 'OrderLineItemNumber'
      Required = True
    end
    object sq_GetDSDMRIL_Reference: TStringField
      FieldName = 'IL_Reference'
      Origin = 'IL_Reference'
      Size = 30
    end
    object sq_GetDSDMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetDSDMRCSD_Reference_Detail: TStringField
      FieldName = 'CSD_Reference_Detail'
      Origin = 'CSD_Reference_Detail'
      Size = 30
    end
    object sq_GetDSDMRPO_Number: TStringField
      FieldName = 'PO_Number'
      Origin = 'PO_Number'
      Size = 30
    end
  end
  object cds_DSDMR: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.DeliveryShipmentDeliveryMessageReference'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 464
    Top = 384
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_DSDMRDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_DSDMRDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_DSDMRDeliveryMessageReference: TStringField
      FieldName = 'DeliveryMessageReference'
      Origin = 'DeliveryMessageReference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 255
    end
    object cds_DSDMRDeliveryMessageReferenceType: TStringField
      FieldName = 'DeliveryMessageReferenceType'
      Origin = 'DeliveryMessageReferenceType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_DSDMRInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetTrp: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      #39' '#39' AS DeliveryMessageNumber,'
      '0 AS DeliveryShipmentLineItemNumber,'
      'CASE WHEN LS.NoOfLengths = 1 THEN '#39'LengthPackage'#39
      'Else'
      ' '#39'TruckPackage'#39
      'End AS PackageType,'
      
        '-- isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.PackageN' +
        'o AS Varchar(10)) AS SPEC_PackageNo,'
      '--isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39')'
      ''
      
        'IsNull((Select Top 1 Cast(PkgFix.ProductionUnitCode AS Varchar(3' +
        '))'
      'FROM dbo.PkgPrefix PkgFix'
      'WHERE PkgFix.PkgPrefix = LD.SupplierCode),'#39'99'#39') +'
      ''
      ''
      'Cast(LD.PackageNo AS Varchar(10)) AS SPEC_PackageNo,'
      ''
      #39'Supplier'#39' AS IdentifierCodeType,'
      #39'Primary'#39' AS IdentifierType,'
      'SUM(PTD.NoOfPieces) AS ItemCountValue,'
      #39'Piece'#39' AS ItemCountUOM,'
      #39'Volume'#39' AS QuantityType,'
      'CASE'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN SUM(PTD.m3Nominal)'
      
        'WHEN PU.TemplateUnitName = '#39'Lopm n'#39' THEN SUM(PTD.LinealMeterNomi' +
        'nalLength)'
      
        'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN SUM(PTD.SQMofActualWidt' +
        'h )'
      
        'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN SUM(PTD.LinealMeterActu' +
        'alLength)'
      'WHEN PU.TemplateUnitName = '#39'Stycketal'#39' THEN SUM(PTD.NoOfPieces)'
      'WHEN PU.TemplateUnitName = '#39'm3 aDxaL'#39' THEN SUM(PTD.m3Actual)'
      
        'WHEN PU.TemplateUnitName = '#39'm3 aDxnL'#39' THEN SUM(PTD.m3ActualSizeN' +
        'omLength)'
      
        'WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39' THEN SUM(PTD.m3NomSizeActu' +
        'alLength )'
      'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN SUM(PTD.MFBMNominal)'
      'END AS QuantityValue,'
      #39'CubicMeter'#39' AS QuantityUOM,'
      ''
      
        'isNull(Cast(LD.SupplierCode AS Varchar(3)),'#39#39') + Cast(LD.Package' +
        'No AS Varchar(10)) AS PaketAprefix,'
      ''
      ''
      #39'Supplier'#39' AS IdentifierCodeType2,'
      #39'Barcode'#39' AS IdentifierType2,'
      #39'Code128C'#39' AS IdentifierFormatType2,'
      ''
      'IsNull((Select Top 1 Cast(PkgFix.ClientID AS Varchar(12))'
      'FROM dbo.PkgPrefix PkgFix'
      'WHERE PkgFix.PkgPrefix = LD.SupplierCode),'#39'99'#39') +'
      ''
      
        'IsNull((Select Top 1 Cast(PkgFix.ProductionUnitCode AS Varchar(3' +
        '))'
      'FROM dbo.PkgPrefix PkgFix'
      'WHERE PkgFix.PkgPrefix = LD.SupplierCode),'#39'99'#39') +'
      ''
      ''
      'Cast(LD.PackageNo AS Varchar(10)) AS Identifier2'
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      ''
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = PN.SupplierNo'
      ''
      ''
      
        #9'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitN' +
        'o'
      ''
      
        #9'Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      #9'AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo'
      #9'AND PTD.LoadNo = ILO.LoadNo'
      #9'AND PTD.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        #9'Inner Join dbo.PackageType  PT ON  PT.PackageTypeNo = LD.Packag' +
        'eTypeNo'
      
        #9'Inner Join dbo.LengthSpec LS on LS.LengthSpecNo = PT.LengthSpec' +
        'No'
      ''
      ''
      'WHERE     (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      #9'AND (PT.ProductNo = :ProductNo)'
      #9'AND     (IL.ShippingPlanNo      = :LONo)'
      ''
      'GROUP BY'
      
        'IL.ShippingPlanNo , LD.PackageNo , PU.TemplateUnitName, C.pktnrl' +
        'evkod, LS.NoOfLengths,'
      'LD.SupplierCode')
    Left = 632
    Top = 328
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetTrpDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object sq_GetTrpDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ReadOnly = True
      Required = True
    end
    object sq_GetTrpPackageType: TStringField
      FieldName = 'PackageType'
      Origin = 'PackageType'
      ReadOnly = True
      Required = True
      Size = 13
    end
    object sq_GetTrpSPEC_PackageNo: TStringField
      FieldName = 'SPEC_PackageNo'
      Origin = 'SPEC_PackageNo'
      ReadOnly = True
      Size = 13
    end
    object sq_GetTrpIdentifierCodeType: TStringField
      FieldName = 'IdentifierCodeType'
      Origin = 'IdentifierCodeType'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object sq_GetTrpIdentifierType: TStringField
      FieldName = 'IdentifierType'
      Origin = 'IdentifierType'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object sq_GetTrpItemCountValue: TIntegerField
      FieldName = 'ItemCountValue'
      Origin = 'ItemCountValue'
      ReadOnly = True
    end
    object sq_GetTrpItemCountUOM: TStringField
      FieldName = 'ItemCountUOM'
      Origin = 'ItemCountUOM'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object sq_GetTrpQuantityType: TStringField
      FieldName = 'QuantityType'
      Origin = 'QuantityType'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object sq_GetTrpQuantityValue: TFMTBCDField
      FieldName = 'QuantityValue'
      Origin = 'QuantityValue'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetTrpQuantityUOM: TStringField
      FieldName = 'QuantityUOM'
      Origin = 'QuantityUOM'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object sq_GetTrpIdentifierCodeType2: TStringField
      FieldName = 'IdentifierCodeType2'
      Origin = 'IdentifierCodeType2'
      ReadOnly = True
      Required = True
      Size = 31
    end
    object sq_GetTrpIdentifierType2: TStringField
      FieldName = 'IdentifierType2'
      Origin = 'IdentifierType2'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object sq_GetTrpIdentifier2: TStringField
      FieldName = 'Identifier2'
      Origin = 'Identifier2'
      ReadOnly = True
      Size = 25
    end
    object sq_GetTrpIdentifierFormatType2: TStringField
      FieldName = 'IdentifierFormatType2'
      Origin = 'IdentifierFormatType2'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object sq_GetTrpPaketAprefix: TStringField
      FieldName = 'PaketAprefix'
      Origin = 'PaketAprefix'
      ReadOnly = True
      Size = 13
    end
  end
  object cds_TrpPkgInfo: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.Transportpackageinformation'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 632
    Top = 384
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_TrpPkgInfoDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_TrpPkgInfoDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_TrpPkgInfoPackageType: TStringField
      FieldName = 'PackageType'
      Origin = 'PackageType'
      Required = True
      Size = 50
    end
    object cds_TrpPkgInfoIdentifier: TStringField
      FieldName = 'Identifier'
      Origin = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object cds_TrpPkgInfoIdentifierCodeType: TStringField
      FieldName = 'IdentifierCodeType'
      Origin = 'IdentifierCodeType'
      Size = 50
    end
    object cds_TrpPkgInfoIdentifierType: TStringField
      FieldName = 'IdentifierType'
      Origin = 'IdentifierType'
      Size = 50
    end
    object cds_TrpPkgInfoItemCountValue: TBCDField
      FieldName = 'ItemCountValue'
      Origin = 'ItemCountValue'
      Precision = 18
      Size = 1
    end
    object cds_TrpPkgInfoItemCountUOM: TStringField
      FieldName = 'ItemCountUOM'
      Origin = 'ItemCountUOM'
      Size = 50
    end
    object cds_TrpPkgInfoQuantityType: TStringField
      FieldName = 'QuantityType'
      Origin = 'QuantityType'
      Size = 50
    end
    object cds_TrpPkgInfoQuantityValue: TBCDField
      FieldName = 'QuantityValue'
      Origin = 'QuantityValue'
      Precision = 18
      Size = 3
    end
    object cds_TrpPkgInfoQuantityUOM: TStringField
      FieldName = 'QuantityUOM'
      Origin = 'QuantityUOM'
      Size = 50
    end
    object cds_TrpPkgInfoIdentifierCodeType2: TStringField
      FieldName = 'IdentifierCodeType2'
      Origin = 'IdentifierCodeType2'
      Size = 50
    end
    object cds_TrpPkgInfoIdentifierType2: TStringField
      FieldName = 'IdentifierType2'
      Origin = 'IdentifierType2'
      Size = 50
    end
    object cds_TrpPkgInfoIdentifier2: TStringField
      FieldName = 'Identifier2'
      Origin = 'Identifier2'
      Size = 60
    end
    object cds_TrpPkgInfoIdentifierFormatType2: TStringField
      FieldName = 'IdentifierFormatType2'
      Origin = 'IdentifierFormatType2'
      Size = 50
    end
    object cds_TrpPkgInfoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetIQ: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      #39' '#39' AS DeliveryMessageNumber,'
      '0 AS DeliveryShipmentLineItemNumber,'
      
        '--isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.PackageNo' +
        ' AS Varchar(10)) AS Identifier,'
      ''
      '--isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39') +'
      ''
      ''
      
        'IsNull((Select Top 1 Cast(PkgFix.ProductionUnitCode AS Varchar(3' +
        '))'
      'FROM dbo.PkgPrefix PkgFix'
      'WHERE PkgFix.PkgPrefix = LD.SupplierCode),'#39'99'#39') +'
      ''
      'Cast(LD.PackageNo AS Varchar(10)) AS Identifier,'
      ''
      'SUM(PTD.m3Nominal) '#9#9#9'AS NM3,'
      'SUM(PTD.LinealMeterNominalLength) '#9'AS NM1,'
      'SUM(PTD.SQMofActualWidth )'#9#9'AS AM2,'
      'SUM(PTD.LinealMeterActualLength)'#9'AS AM1,'
      'SUM(PTD.NoOfPieces)'#9#9#9'AS PIECE,'
      'SUM(PTD.m3Actual)'#9#9#9'AS AM3,'
      'SUM(PTD.MFBMNominal) '#9#9#9'AS MFBM'
      ''
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      ''
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = PN.SupplierNo'
      ''
      
        #9'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitN' +
        'o'
      ''
      
        #9'Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      #9'AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo'
      #9'AND PTD.LoadNo = ILO.LoadNo'
      #9'AND PTD.LoadDetailNo = LD.LoadDetailNo'
      ''
      'WHERE     (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      '  '#9'AND     (IL.ShippingPlanNo = :LONo)'
      
        '-- AND isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.Pack' +
        'ageNo AS Varchar(10)) = :Identifier'
      ''
      
        '-- AND isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39 +
        ')+Cast(LD.PackageNo AS Varchar(10)) = :Identifier'
      
        ' AND LD.SupplierCode + Cast(LD.PackageNo AS Varchar(10)) = :Iden' +
        'tifier'
      ''
      'GROUP BY'
      
        'IL.ShippingPlanNo , LD.PackageNo , PU.TemplateUnitName, LD.Suppl' +
        'ierCode')
    Left = 720
    Top = 328
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IDENTIFIER'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetIQDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object sq_GetIQDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ReadOnly = True
      Required = True
    end
    object sq_GetIQIdentifier: TStringField
      FieldName = 'Identifier'
      Origin = 'Identifier'
      ReadOnly = True
      Size = 13
    end
    object sq_GetIQNM3: TFMTBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetIQNM1: TFMTBCDField
      FieldName = 'NM1'
      Origin = 'NM1'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetIQAM2: TFMTBCDField
      FieldName = 'AM2'
      Origin = 'AM2'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetIQAM1: TFMTBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetIQPIECE: TIntegerField
      FieldName = 'PIECE'
      Origin = 'PIECE'
      ReadOnly = True
    end
    object sq_GetIQAM3: TFMTBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetIQMFBM: TFMTBCDField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
  end
  object cds_InfoQuant: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.InformationalQuantity'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo')
    Left = 720
    Top = 384
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InfoQuantDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_InfoQuantDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InfoQuantIdentifier: TStringField
      FieldName = 'Identifier'
      Origin = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object cds_InfoQuantInformationalQuantityType: TStringField
      FieldName = 'InformationalQuantityType'
      Origin = 'InformationalQuantityType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_InfoQuantInformationalQuantityValue: TBCDField
      FieldName = 'InformationalQuantityValue'
      Origin = 'InformationalQuantityValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_InfoQuantInformationalQuantityUOM: TStringField
      FieldName = 'InformationalQuantityUOM'
      Origin = 'InformationalQuantityUOM'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_InfoQuantInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetLS: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      #39' '#39' AS DeliveryMessageNumber,'
      '0 AS DeliveryShipmentLineItemNumber,'
      ''
      '--isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39') +'
      ''
      
        'IsNull((Select Top 1 Cast(PkgFix.ProductionUnitCode AS Varchar(3' +
        '))'
      'FROM dbo.PkgPrefix PkgFix'
      'WHERE PkgFix.PkgPrefix = LD.SupplierCode),'#39'99'#39') +'
      ''
      'Cast(LD.PackageNo AS Varchar(10)) AS SPEC_PackageNo,'
      ''
      '--isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39')+'
      ''
      
        'IsNull((Select Top 1 Cast(PkgFix.ProductionUnitCode AS Varchar(3' +
        '))'
      'FROM dbo.PkgPrefix PkgFix'
      'WHERE PkgFix.PkgPrefix = LD.SupplierCode),'#39'99'#39') +'
      ''
      'Cast(LD.PackageNo AS Varchar(10)) AS Identifier,'
      
        '--isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.PackageNo' +
        ' AS Varchar(10)) AS Identifier,'
      'Cast(PL.ActualLengthMM AS Varchar(6)) AS LengthCategory,'
      'PTD.NoOfPieces AS TotalNumberOfUnitsValue,'
      #39'Piece'#39' AS TotalNumberOfUnitsUOM,'
      ''
      'CASE '
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN SUM(PTD.m3Nominal)'
      
        'WHEN PU.TemplateUnitName = '#39'Lopm n'#39' THEN SUM(PTD.LinealMeterNomi' +
        'nalLength)'
      
        'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN SUM(PTD.SQMofActualWidt' +
        'h )'
      
        'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN SUM(PTD.LinealMeterActu' +
        'alLength)'
      'WHEN PU.TemplateUnitName = '#39'Stycketal'#39' THEN SUM(PTD.NoOfPieces)'
      'WHEN PU.TemplateUnitName = '#39'm3 aDxaL'#39' THEN SUM(PTD.m3Actual)'
      
        'WHEN PU.TemplateUnitName = '#39'm3 aDxnL'#39' THEN SUM(PTD.m3ActualSizeN' +
        'omLength)'
      
        'WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39' THEN SUM(PTD.m3NomSizeActu' +
        'alLength )'
      'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN SUM(PTD.MFBMNominal) '
      'END AS QuantityValue,'
      #39'CubicMeter'#39' AS QuantityUOM'
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNumber INV'#9'ON'#9'INV.InternalInvoiceNo ' +
        '= IH.InternalInvoiceNo'
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = PN.SupplierNo'
      ''
      
        #9'INNER JOIN dbo.PackUnit PU ON PU.TemplateUnitNo = OL.PriceUnitN' +
        'o'
      ''
      
        #9'Inner Join dbo.PkgType_Invoice  PTD ON  PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      #9'AND PTD.InternalInvoiceNo = IH.InternalInvoiceNo'
      #9'AND PTD.LoadNo = ILO.LoadNo'
      #9'AND PTD.LoadDetailNo = LD.LoadDetailNo'
      ''
      
        #9'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Pro' +
        'ductLengthNo'
      ''
      ''
      'WHERE     (IH.InternalInvoiceNo = :InternalInvoiceNo)'
      '  '#9'AND     (IL.ShippingPlanNo = :LONo)'
      
        '-- AND isNull(Cast(C.pktnrlevkod AS Varchar(3)),'#39#39')+Cast(LD.Pack' +
        'ageNo AS Varchar(10)) = :Identifier'
      
        ' AND LD.SupplierCode + Cast(LD.PackageNo AS Varchar(10)) = :Iden' +
        'tifier'
      ''
      'GROUP BY'
      
        'IL.ShippingPlanNo , LD.PackageNo , PU.TemplateUnitName, PTD.NoOf' +
        'Pieces, PL.ActualLengthMM,'
      'LD.SupplierCode')
    Left = 824
    Top = 336
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IDENTIFIER'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetLSDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object sq_GetLSDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ReadOnly = True
      Required = True
    end
    object sq_GetLSIdentifier: TStringField
      FieldName = 'Identifier'
      Origin = 'Identifier'
      ReadOnly = True
      Size = 13
    end
    object sq_GetLSLengthCategory: TStringField
      FieldName = 'LengthCategory'
      Origin = 'LengthCategory'
      ReadOnly = True
      Size = 6
    end
    object sq_GetLSTotalNumberOfUnitsValue: TIntegerField
      FieldName = 'TotalNumberOfUnitsValue'
      Origin = 'TotalNumberOfUnitsValue'
    end
    object sq_GetLSTotalNumberOfUnitsUOM: TStringField
      FieldName = 'TotalNumberOfUnitsUOM'
      Origin = 'TotalNumberOfUnitsUOM'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object sq_GetLSQuantityValue: TFMTBCDField
      FieldName = 'QuantityValue'
      Origin = 'QuantityValue'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetLSQuantityUOM: TStringField
      FieldName = 'QuantityUOM'
      Origin = 'QuantityUOM'
      ReadOnly = True
      Required = True
      Size = 10
    end
  end
  object cds_LengthSpec: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.LengthSpecification'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 824
    Top = 392
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LengthSpecDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_LengthSpecDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthSpecIdentifier: TStringField
      FieldName = 'Identifier'
      Origin = 'Identifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object cds_LengthSpecLengthCategory: TStringField
      FieldName = 'LengthCategory'
      Origin = 'LengthCategory'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_LengthSpecTotalNumberOfUnitsValue: TBCDField
      FieldName = 'TotalNumberOfUnitsValue'
      Origin = 'TotalNumberOfUnitsValue'
      Precision = 18
      Size = 3
    end
    object cds_LengthSpecTotalNumberOfUnitsUOM: TStringField
      FieldName = 'TotalNumberOfUnitsUOM'
      Origin = 'TotalNumberOfUnitsUOM'
      Size = 50
    end
    object cds_LengthSpecInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetDMS: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      'IL.ShippingPlanNo AS LONo,'
      #39' '#39' AS ShipmentID,'
      #39' '#39' AS ShipmentIDType,'
      #39' '#39' AS ProductGroupID,'
      #39' '#39' AS ProductGroupIDType,'
      '0 AS DeliveryShipmentLineItemNumber,'
      '0 AS ProductIdentifier,'
      #39'PartNumber'#39' AS ProductIdentifierType,'
      #39'Supplier'#39' AS Agency,'
      '-- OL.OrderLineDescription'#9'AS ProductDescription,'
      'CASE'
      'WHEN S.SpeciesNo = 46 Then '#39'WhiteWood'#39
      'WHEN S.SpeciesNo = 47 Then '#39'Redwood'#39
      'WHEN S.SpeciesNo = 52 Then '#39'RedWhitewood'#39
      'Else'
      #39'Other'#39
      'END AS SpeciesType,'
      #39'Other'#39' AS GradingRule,'
      'G.GradeCode,'
      'G.GradeName,'
      'PG.ActualWidthMM AS WidthValue,'
      #39'Millimeter'#39' AS WidthUOM,'
      'PG.ActualThicknessMM AS ThicknessValue,'
      #39'Millimeter'#39' AS ThicknessUOM,'
      #39'Other'#39' AS ManufacturingProcessType,'
      '0 AS ExLogValue,'
      #39'Piece'#39' AS ExlogUOM,'
      'P.ProductNo,'
      'S.SpeciesCode,'
      'SU.SurfacingCode,'
      'PC.ImpCode'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH'
      
        #9'INNER JOIN dbo.InvoiceLO     IL '#9'ON  IH.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      
        #9'Left Outer Join dbo.InvoiceNos INV'#9'ON'#9'INV.InternalInvoiceNo = I' +
        'H.InternalInvoiceNo'
      ''
      
        #9'INNER JOIN dbo.Invoiced_Load'#9'ILo'#9'ON Ilo.InternalInvoiceNo = IL.' +
        'InternalInvoiceNo'
      #9#9#9#9#9'AND Ilo.SHIPPINGPLANNO    = IL.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.Loaddetail    LD '#9'ON  Ilo.LoadNo            = LD' +
        '.LoadNo'
      
        #9'                                  '#9'AND Ilo.SHIPPINGPLANNO    = ' +
        'LD.SHIPPINGPLANNO'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= OL.OrderNo'
      ''
      
        #9'Inner Join dbo.PackageType  PT ON  PT.PackageTypeNo = LD.Packag' +
        'eTypeNo'
      #9'Inner Join dbo.Product P ON  P.ProductNo = PT.ProductNo'
      
        #9'Inner Join dbo.ProductGroup PG ON  PG.ProductGroupNo = P.Produc' +
        'tGroupNo'
      #9'Inner Join dbo.Species S ON  S.SpeciesNo = PG.SpeciesNo'
      #9#9#9#9'AND S.LanguageCode = OH.LanguageCode'
      #9'Inner Join dbo.Surfacing SU ON  SU.SurfacingNo = PG.SurfacingNo'
      #9#9#9#9'AND SU.LanguageCode = OH.LanguageCode'
      #9'Inner Join dbo.Grade G ON  G.GradeNo = P.GradeNo'
      #9#9#9#9'AND G.LanguageCode = OH.LanguageCode'
      
        #9'Inner Join dbo.ProductCategory PC ON  PC.ProductCategoryNo = PG' +
        '.ProductCategoryNo'
      #9#9#9#9'AND PC.LanguageCode = OH.LanguageCode'
      ''
      ''
      
        #9'Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageTypeNo = LD' +
        '.PackageTypeNo'
      ''
      'WHERE     (IH.InternalInvoiceNo   = :InternalInvoiceNo)'
      '  AND     (IL.ShippingPlanNo      = :ShippingPlanNo)'
      '  AND     (IL.ShippingPlanNo      <> -1)'
      ''
      ''
      ' '
      '')
    Left = 384
    Top = 328
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
    object sq_GetDMSLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      Required = True
    end
    object sq_GetDMSShipmentID: TStringField
      FieldName = 'ShipmentID'
      Origin = 'ShipmentID'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object sq_GetDMSShipmentIDType: TStringField
      FieldName = 'ShipmentIDType'
      Origin = 'ShipmentIDType'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object sq_GetDMSProductGroupID: TStringField
      FieldName = 'ProductGroupID'
      Origin = 'ProductGroupID'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object sq_GetDMSProductGroupIDType: TStringField
      FieldName = 'ProductGroupIDType'
      Origin = 'ProductGroupIDType'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object sq_GetDMSDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ReadOnly = True
      Required = True
    end
    object sq_GetDMSProductIdentifier: TIntegerField
      FieldName = 'ProductIdentifier'
      Origin = 'ProductIdentifier'
      ReadOnly = True
      Required = True
    end
    object sq_GetDMSProductIdentifierType: TStringField
      FieldName = 'ProductIdentifierType'
      Origin = 'ProductIdentifierType'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object sq_GetDMSAgency: TStringField
      FieldName = 'Agency'
      Origin = 'Agency'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object sq_GetDMSSpeciesType: TStringField
      FieldName = 'SpeciesType'
      Origin = 'SpeciesType'
      ReadOnly = True
      Required = True
      Size = 12
    end
    object sq_GetDMSGradingRule: TStringField
      FieldName = 'GradingRule'
      Origin = 'GradingRule'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object sq_GetDMSGradeCode: TStringField
      FieldName = 'GradeCode'
      Origin = 'GradeCode'
      Size = 5
    end
    object sq_GetDMSGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sq_GetDMSWidthValue: TFloatField
      FieldName = 'WidthValue'
      Origin = 'WidthValue'
    end
    object sq_GetDMSWidthUOM: TStringField
      FieldName = 'WidthUOM'
      Origin = 'WidthUOM'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object sq_GetDMSThicknessValue: TFloatField
      FieldName = 'ThicknessValue'
      Origin = 'ThicknessValue'
    end
    object sq_GetDMSThicknessUOM: TStringField
      FieldName = 'ThicknessUOM'
      Origin = 'ThicknessUOM'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object sq_GetDMSManufacturingProcessType: TStringField
      FieldName = 'ManufacturingProcessType'
      Origin = 'ManufacturingProcessType'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object sq_GetDMSExLogValue: TIntegerField
      FieldName = 'ExLogValue'
      Origin = 'ExLogValue'
      ReadOnly = True
      Required = True
    end
    object sq_GetDMSExlogUOM: TStringField
      FieldName = 'ExlogUOM'
      Origin = 'ExlogUOM'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object sq_GetDMSProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_GetDMSSpeciesCode: TStringField
      FieldName = 'SpeciesCode'
      Origin = 'SpeciesCode'
      Size = 5
    end
    object sq_GetDMSSurfacingCode: TStringField
      FieldName = 'SurfacingCode'
      Origin = 'SurfacingCode'
      Size = 5
    end
    object sq_GetDMSImpCode: TStringField
      FieldName = 'ImpCode'
      Origin = 'ImpCode'
      Size = 5
    end
  end
  object cds_ProdID: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.ProductIdentifier'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 552
    Top = 384
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdIDDeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cds_ProdIDDeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdIDProductIdentifier: TStringField
      FieldName = 'ProductIdentifier'
      Origin = 'ProductIdentifier'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object cds_ProdIDProductIdentifierType: TStringField
      FieldName = 'ProductIdentifierType'
      Origin = 'ProductIdentifierType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdIDAgency: TStringField
      FieldName = 'Agency'
      Origin = 'Agency'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdIDInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object mtVisKlient: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
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
    Left = 968
    Top = 29
    object mtVisKlientClientNo: TIntegerField
      FieldName = 'ClientNo'
      OnChange = mtVisKlientClientNoChange
    end
    object mtVisKlientLeverantr: TStringField
      FieldKind = fkLookup
      FieldName = 'Leverant'#246'r'
      LookupDataSet = cdsClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
    object mtVisKlientPartyIdentifier: TStringField
      FieldName = 'PartyIdentifier'
      Size = 50
    end
    object mtVisKlientPartyIdentifierType: TStringField
      FieldName = 'PartyIdentifierType'
    end
  end
  object sq_UpdPrefix: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Update dbo.Transportpackageinformation2'
      'Set Prefix = :Prefix'
      'WHERE DeliveryMessageNumber = :DeliveryMessageNumber'
      'AND Identifier = :Identifier')
    Left = 48
    Top = 536
    ParamData = <
      item
        Name = 'PREFIX'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'IDENTIFIER'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object cds_DSDMR2: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      
        'Select distinct * FROM dbo.DeliveryShipmentDeliveryMessageRefere' +
        'nce2'
      'WHERE'
      'DeliveryMessageNumber = :DeliveryMessageNumber')
    Left = 224
    Top = 544
    ParamData = <
      item
        Name = 'DELIVERYMESSAGENUMBER'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_DSDMR2DeliveryMessageNumber: TStringField
      FieldName = 'DeliveryMessageNumber'
      Origin = 'DeliveryMessageNumber'
      Required = True
      Size = 30
    end
    object cds_DSDMR2DeliveryShipmentLineItemNumber: TIntegerField
      FieldName = 'DeliveryShipmentLineItemNumber'
      Origin = 'DeliveryShipmentLineItemNumber'
      Required = True
    end
    object cds_DSDMR2DeliveryMessageReference: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'DeliveryMessageReference'
      Origin = 'DeliveryMessageReference'
      Required = True
      Size = 255
    end
    object cds_DSDMR2DeliveryMessageReferenceType: TStringField
      DisplayLabel = 'Referenstyp'
      FieldName = 'DeliveryMessageReferenceType'
      Origin = 'DeliveryMessageReferenceType'
      Size = 50
    end
  end
  object ds_DSDMR2: TDataSource
    DataSet = cds_DSDMR2
    Left = 224
    Top = 600
  end
  object sp_Ins_InvoicePkgSpecWoodX: TADStoredProc
    Connection = dmsConnector.ADConnection1
    StoredProcName = 'dbo.vis_Ins_InvoicePkgSpecWoodX'
    Left = 824
    Top = 528
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
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
