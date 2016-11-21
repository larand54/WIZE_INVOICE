object dmVidaInvoice: TdmVidaInvoice
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 1232
  Width = 1206
  object dsrcInvoiceHead: TDataSource
    DataSet = cdsInvoiceHead
    Left = 64
    Top = 72
  end
  object dsrcInvoiceLO: TDataSource
    DataSet = cdsInvoiceLO
    Left = 168
    Top = 72
  end
  object dsrcInvoiceDetail: TDataSource
    DataSet = cdsInvoiceDetail
    Left = 280
    Top = 72
  end
  object dsInvoiceShipTo: TDataSource
    DataSet = cdsInvoiceShipTo
    Left = 392
    Top = 72
  end
  object dsInvoiceShipToAddress: TDataSource
    DataSet = cdsInvoiceShipToAddress
    Left = 504
    Top = 72
  end
  object dsrcInvoiceNumber: TDataSource
    DataSet = cdsInvoiceNumber
    Left = 64
    Top = 600
  end
  object dsProformaInvNo: TDataSource
    DataSet = cdsProformaInvNo
    Left = 64
    Top = 696
  end
  object ds_BookingData: TDataSource
    DataSet = cdsBookingData
    Left = 632
    Top = 240
  end
  object ds_Att_Ext_ServicesII: TDataSource
    DataSet = cds_Att_Ext_ServicesII
    Left = 504
    Top = 224
  end
  object ds_PurchaseInvNo: TDataSource
    DataSet = cds_PurchaseInvNo
    Left = 64
    Top = 280
  end
  object dsInvoiceList: TDataSource
    DataSet = cdsInvoiceList
    Left = 920
    Top = 72
  end
  object ds_InvDtl_Att: TDataSource
    DataSet = mt_InvDtl_Att
    Left = 504
    Top = 440
  end
  object mt_InvDtl_Att: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mt_InvDtl_AttIndex1'
    IndexDefs = <
      item
        Name = 'mt_InvDtl_AttIndex1'
        Fields = 'InternalInvoiceNo;ShippingPlanNo;InvoiceDetailNo'
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
    Left = 504
    Top = 392
    object mt_InvDtl_AttInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object mt_InvDtl_AttShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object mt_InvDtl_AttInvoiceDetailNo: TIntegerField
      FieldName = 'InvoiceDetailNo'
    end
    object mt_InvDtl_AttTypeOfRow: TIntegerField
      FieldName = 'TypeOfRow'
    end
    object mt_InvDtl_AttReference: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object mt_InvDtl_AttProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mt_InvDtl_AttLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 255
    end
    object mt_InvDtl_AttPrice: TFloatField
      FieldName = 'Price'
    end
    object mt_InvDtl_AttVolumeUnit: TStringField
      FieldName = 'VolumeUnit'
      Size = 10
    end
    object mt_InvDtl_AttPriceUnit: TStringField
      FieldName = 'PriceUnit'
      Size = 10
    end
    object mt_InvDtl_AttProductValue: TFloatField
      FieldName = 'ProductValue'
      DisplayFormat = '#.00'
    end
    object mt_InvDtl_AttVolume_OrderUnit: TFloatField
      FieldName = 'Volume_OrderUnit'
      DisplayFormat = '#.000'
    end
    object mt_InvDtl_AttActualNetM3: TFloatField
      FieldName = 'ActualNetM3'
      DisplayFormat = '#.000'
    end
    object mt_InvDtl_AttNominalM3: TFloatField
      FieldName = 'NominalM3'
      DisplayFormat = '#.000'
    end
    object mt_InvDtl_AttLinealMeter: TFloatField
      FieldName = 'LinealMeter'
      DisplayFormat = '#.000'
    end
    object mt_InvDtl_AttNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object mt_InvDtl_AttSequensNo: TIntegerField
      FieldName = 'SequensNo'
    end
    object mt_InvDtl_AttChecked: TIntegerField
      FieldName = 'Checked'
    end
  end
  object mt_AttestRow: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mt_AttestRowIndex1'
    IndexDefs = <
      item
        Name = 'mt_AttestRowIndex1'
        Fields = 'InternalInvoiceNo;ShippingPlanNo;SequensNo;InvoiceDetailNo'
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
    Left = 1112
    Top = 440
    object mt_AttestRowInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object mt_AttestRowShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object mt_AttestRowSequensNo: TIntegerField
      FieldName = 'SequensNo'
    end
    object mt_AttestRowInvoiceDetailNo: TIntegerField
      FieldName = 'InvoiceDetailNo'
    end
  end
  object ds_mt_AttestRow: TDataSource
    DataSet = mt_AttestRow
    Left = 1112
    Top = 488
  end
  object dsrcInvoiceHead_II: TDataSource
    DataSet = cdsInvoiceHead_II
    Left = 728
    Top = 192
  end
  object ds_InvoiceGroup: TDataSource
    DataSet = cds_InvoiceGroup
    Left = 168
    Top = 280
  end
  object mtInvoiceType: TkbmMemTable
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
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 1024
    Top = 640
    object mtInvoiceTypeInvoiceTypeNo: TIntegerField
      FieldName = 'InvoiceTypeNo'
    end
    object mtInvoiceTypeInvoiceTypeName: TStringField
      FieldName = 'InvoiceTypeName'
      Size = 40
    end
  end
  object dsInvoiceType: TDataSource
    DataSet = mtInvoiceType
    Left = 1024
    Top = 688
  end
  object ds_NoOfInvoices: TDataSource
    DataSet = cds_NoOfInvoices
    Left = 1112
    Top = 792
  end
  object ds_LoadPackages2: TDataSource
    DataSet = cds_LoadPackages
    Left = 920
    Top = 280
  end
  object ds_IH_SpecLoad: TDataSource
    DataSet = cds_IH_SpecLoad
    Left = 1016
    Top = 72
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 632
    Top = 336
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 632
    Top = 432
  end
  object ds_LoadPackagesII: TDataSource
    DataSet = cds_LoadPackagesII
    Left = 824
    Top = 336
  end
  object ds_LoadPackagesIII: TDataSource
    DataSet = cds_LoadPackagesIII
    Left = 816
    Top = 216
  end
  object QExport3XLS1: TQExport4XLS
    DataSet = cds_ExportTyp1
    ExportedFields.Strings = (
      'PackageNo'
      'NomThick'
      'NomWidth'
      'MAXLENGTH'
      'MINLENGTH'
      'Pcs'
      'Mark'
      'PEFC'
      'KVALITET')
    About = '(About EMS FDvancedExport)'
    _Version = '3.40'
    FileName = 'C:\Projects\VIS\VIS Trusted III\VIS 1211\TestExport.xls'
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '-'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'yyyy/MM/dd'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'yyyy/MM/dd hh:mm:ss'
    Formats.CurrencyFormat = '#,###,##0.00 kr'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    Aggregates = <>
    MergedCells = <>
    DefRowHeight = 12.750000000000000000
    Left = 1112
    Top = 600
  end
  object QExport3ASCII1: TQExport4ASCII
    DataSet = cds_ExportTyp1
    ExportedFields.Strings = (
      'PackageNo'
      'NomThick'
      'NomWidth'
      'MAXLENGTH'
      'MINLENGTH'
      'Pcs'
      'Mark'
      'PEFC'
      'KVALITET')
    About = '(About EMS FDvancedExport)'
    _Version = '3.40'
    OnBeforeExportRow = QExport3ASCII1BeforeExportRow
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '-'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'yyyy/MM/dd'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'yyyy/MM/dd hh:mm:ss'
    Formats.CurrencyFormat = '#,###,##0.00 kr'
    UserFormats.Strings = (
      'NomThick=###.#'
      'NomWidth=###.#'
      'MAXLENGTH=##'
      'MINLENGTH=####'
      'Pcs=####')
    ExportType = etCSV
    CSVComma = ','
    CSVQuoteStrings = False
    Left = 1112
    Top = 648
  end
  object QExport3ASCII2: TQExport4ASCII
    DataSet = cds_ExpSoftSet
    ExportedFields.Strings = (
      'FieldValue')
    OnlyVisibleFields = True
    About = '(About EMS FDvancedExport)'
    _Version = '3.40'
    OnBeforeExportRow = QExport3ASCII2BeforeExportRow
    AllowCaptions = False
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '-'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'yyyy/MM/dd'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'yyyy/MM/dd hh:mm:ss'
    Formats.CurrencyFormat = '#,###,##0.00 kr'
    ExportType = etCSV
    CSVComma = ';'
    CSVQuote = #0
    CSVQuoteStrings = False
    Left = 1016
    Top = 416
  end
  object cdsInvoiceHead: TFDQuery
    AfterInsert = cdsInvoiceHeadAfterInsert
    BeforePost = cdsInvoiceHeadBeforePost
    CachedUpdates = True
    OnUpdateError = cdsInvoiceHeadUpdateError
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'InvoiceHeader'
    SQL.Strings = (
      'Select IH.*, isg.SalesGroupNo, cy.CountryNo'
      'FROM dbo.InvoiceHeader IH'
      
        'Left Outer Join dbo.SalesManGroupRow isg on isg.UserID = IH.Resp' +
        'onsibleSeller'
      
        'Left Outer Join dbo.Country cy on cy.CountryName = IH.CountryNam' +
        'e'
      'WHERE '
      'IH.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 64
    Top = 16
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoiceHeadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceHeadInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
      Origin = 'InvoiceDate'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsInvoiceHeadInvoiceDateChange
    end
    object cdsInvoiceHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsInvoiceHeadSupplierNoChange
    end
    object cdsInvoiceHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadAgentCommission: TFloatField
      FieldName = 'AgentCommission'
      Origin = 'AgentCommission'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
      Origin = 'SendInvoiceToAgent'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadCommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
      Origin = 'CommissionPaidByCustomer'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsInvoiceHeadInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsInvoiceHeadPaymentText: TMemoField
      FieldName = 'PaymentText'
      Origin = 'PaymentText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsInvoiceHeadCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadIncome_Account: TStringField
      FieldName = 'Income_Account'
      Origin = 'Income_Account'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsInvoiceHeadCustomerRecivablesAccount: TStringField
      FieldName = 'CustomerRecivablesAccount'
      Origin = 'CustomerRecivablesAccount'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsInvoiceHeadVAT_OnInvoice: TSmallintField
      FieldName = 'VAT_OnInvoice'
      Origin = 'VAT_OnInvoice'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadClientBillingAddressNo: TIntegerField
      FieldName = 'ClientBillingAddressNo'
      Origin = 'ClientBillingAddressNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHeadAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object cdsInvoiceHeadCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsInvoiceHeadCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsInvoiceHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadAgentName: TStringField
      FieldName = 'AgentName'
      Origin = 'AgentName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHeadCustomerName: TStringField
      FieldName = 'CustomerName'
      Origin = 'CustomerName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHeadDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Origin = 'DeliveryTerm'
      ProviderFlags = [pfInUpdate]
      Size = 21
    end
    object cdsInvoiceHeadPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      Origin = 'PaymentDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object cdsInvoiceHeadLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object cdsInvoiceHeadFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
      Origin = 'FreightInCommission'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadDiscount1: TFloatField
      FieldName = 'Discount1'
      Origin = 'Discount1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object cdsInvoiceHeadST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      Origin = 'ST_AddressName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHeadST_AddressLine1: TStringField
      FieldName = 'ST_AddressLine1'
      Origin = 'ST_AddressLine1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadST_AddressLine2: TStringField
      FieldName = 'ST_AddressLine2'
      Origin = 'ST_AddressLine2'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadST_AddressLine3: TStringField
      FieldName = 'ST_AddressLine3'
      Origin = 'ST_AddressLine3'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadST_AddressLine4: TStringField
      FieldName = 'ST_AddressLine4'
      Origin = 'ST_AddressLine4'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadST_StateOrProvince: TStringField
      FieldName = 'ST_StateOrProvince'
      Origin = 'ST_StateOrProvince'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadST_PostalCode: TStringField
      FieldName = 'ST_PostalCode'
      Origin = 'ST_PostalCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object cdsInvoiceHeadST_CityName: TStringField
      FieldName = 'ST_CityName'
      Origin = 'ST_CityName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object cdsInvoiceHeadST_CountryName: TStringField
      FieldName = 'ST_CountryName'
      Origin = 'ST_CountryName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object cdsInvoiceHeadAGENT_ADDRESS_NAME: TStringField
      FieldName = 'AGENT_ADDRESS_NAME'
      Origin = 'AGENT_ADDRESS_NAME'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE1'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE2'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE2'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE3'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE3'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE4'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE4'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_PROVINCE: TStringField
      FieldName = 'AGENT_SHIPTO_PROVINCE'
      Origin = 'AGENT_SHIPTO_PROVINCE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AGENT_SHIPTO_POSTALCODE'
      Origin = 'AGENT_SHIPTO_POSTALCODE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object cdsInvoiceHeadAGENT_SHIPTO_CITY: TStringField
      FieldName = 'AGENT_SHIPTO_CITY'
      Origin = 'AGENT_SHIPTO_CITY'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object cdsInvoiceHeadAGENT_SHIPTO_COUNTRY: TStringField
      FieldName = 'AGENT_SHIPTO_COUNTRY'
      Origin = 'AGENT_SHIPTO_COUNTRY'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object cdsInvoiceHeadSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHeadTot_Inv_Inc_Freight_Extras: TFloatField
      FieldName = 'Tot_Inv_Inc_Freight_Extras'
      Origin = 'Tot_Inv_Inc_Freight_Extras'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadSUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      Origin = 'SUM_FreigthCost'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadTotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      Origin = 'Total_Product_Value_No_Freight'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadDiscount: TFloatField
      FieldName = 'Discount'
      Origin = 'Discount'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadCommission: TFloatField
      FieldName = 'Commission'
      Origin = 'Commission'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadCommission_and_Discount: TFloatField
      FieldName = 'Commission_and_Discount'
      Origin = 'Commission_and_Discount'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadInv_Value_Deduct_Com_Dis: TFloatField
      FieldName = 'Inv_Value_Deduct_Com_Dis'
      Origin = 'Inv_Value_Deduct_Com_Dis'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadVAT_Value: TFloatField
      FieldName = 'VAT_Value'
      Origin = 'VAT_Value'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadInv_Value_To_Be_Paid: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid'
      Origin = 'Inv_Value_To_Be_Paid'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###,###'
    end
    object cdsInvoiceHeadDebit_Credit: TIntegerField
      FieldName = 'Debit_Credit'
      Origin = 'Debit_Credit'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
      Origin = 'Inv_Value_After_Deduct_DIS_COMM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHeadVAT: TStringField
      FieldName = 'VAT'
      Origin = 'VAT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object cdsInvoiceHeadInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      Origin = 'Inv_Value_To_Be_Paid_2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###,###'
    end
    object cdsInvoiceHeadQuickInvoice: TIntegerField
      FieldName = 'QuickInvoice'
      Origin = 'QuickInvoice'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadStickyNote: TStringField
      FieldName = 'StickyNote'
      Origin = 'StickyNote'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsInvoiceHeadSalesOrgNo: TStringField
      FieldName = 'SalesOrgNo'
      Origin = 'SalesOrgNo'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsInvoiceHeadOCEANFREIGHTSEKAM3: TBCDField
      FieldName = 'OCEANFREIGHTSEKAM3'
      Origin = 'OCEANFREIGHTSEKAM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
      Precision = 18
      Size = 2
    end
    object cdsInvoiceHeadTotalAM3: TBCDField
      FieldName = 'TotalAM3'
      Origin = 'TotalAM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
      Precision = 18
      Size = 3
    end
    object cdsInvoiceHeadTotalVolumeUnit: TBCDField
      FieldName = 'TotalVolumeUnit'
      Origin = 'TotalVolumeUnit'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,###.00'
      Precision = 18
      Size = 3
    end
    object cdsInvoiceHeadTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadResponsibleSeller: TIntegerField
      FieldName = 'ResponsibleSeller'
      Origin = 'ResponsibleSeller'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsInvoiceHeadResponsibleSellerChange
    end
    object cdsInvoiceHeadDestinationText: TStringField
      FieldName = 'DestinationText'
      Origin = 'DestinationText'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsInvoiceHeadIncludeFreightCostInPrice: TIntegerField
      FieldName = 'IncludeFreightCostInPrice'
      Origin = 'IncludeFreightCostInPrice'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadSpecialMoms: TIntegerField
      FieldName = 'SpecialMoms'
      Origin = 'SpecialMoms'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadAccountType: TIntegerField
      FieldName = 'AccountType'
      Origin = 'AccountType'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadInvoiced: TIntegerField
      FieldName = 'Invoiced'
      Origin = 'Invoiced'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SupplierNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cdsInvoiceHeadMoms: TIntegerField
      FieldName = 'Moms'
      Origin = 'Moms'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadResKontraSerie: TStringField
      FieldName = 'ResKontraSerie'
      Origin = 'ResKontraSerie'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsInvoiceHeadKundResKontra: TStringField
      FieldName = 'KundResKontra'
      Origin = 'KundResKontra'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsInvoiceHeadSalesGroupNo: TIntegerField
      FieldName = 'SalesGroupNo'
      Origin = 'SalesGroupNo'
      ProviderFlags = []
    end
    object cdsInvoiceHeadCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
      ProviderFlags = []
    end
    object cdsInvoiceHeadDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
      Origin = 'DueDate'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadBLDueDate: TIntegerField
      FieldName = 'BLDueDate'
      Origin = 'BLDueDate'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadFreeDelMonth: TIntegerField
      FieldName = 'FreeDelMonth'
      Origin = 'FreeDelMonth'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadDelKredit: TIntegerField
      FieldName = 'DelKredit'
      Origin = 'DelKredit'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadIntInvNoToAttestAgainst: TIntegerField
      FieldName = 'IntInvNoToAttestAgainst'
      Origin = 'IntInvNoToAttestAgainst'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadIntraStatCountryNo: TIntegerField
      FieldName = 'IntraStatCountryNo'
      Origin = 'IntraStatCountryNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceHeadMultFactor: TIntegerField
      FieldName = 'MultFactor'
      Origin = 'MultFactor'
    end
    object cdsInvoiceHeadCustomerGLNNo: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerGLNNo'
      LookupDataSet = cds_ClientGLNNo
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'PartyIdentifier1'
      KeyFields = 'CustomerNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object cds_LoadPackagesIII: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'IH_PkgsRem'
    SQL.Strings = (
      'SELECT distinct'
      '           0 AS LoadNo,'
      '           0 AS ShippingPlanNo,'
      '           PR.ProductDisplayName     AS PRODUCT,'
      '           0 AS LoadDetailNo,'
      '           INL.PackageNo'#9#9'            AS PACKAGENO,'
      
        '           1                          AS NoOfPackages'#9'          ' +
        ','
      '           PN.PackageTypeNo'#9'          AS PACKAGETYPENO,'
      '           INL.SupplierCode'#9'          ,'
      '           0 AS PackageOK'#9#9'            ,'
      '           '#39#39' AS ProblemPackageLog'#9'      ,'
      '           PN.CreatedUser,'
      '           PN.ModifiedUser,'
      '           PN.DateCreated,'
      ''
      '           PT.Totalm3Actual           AS  M3_NET,'
      '           PT.TotalNoOfPieces         AS  PCS,'
      '      '#9'   PT.Totalm3Nominal'#9#9'      AS M3_NOM,'
      '           PT.TotalMFBMNominal        AS      MFBM,'
      '      '#9'   PT.TotalSQMofActualWidth'#9'  AS KVM,'
      '      '#9'   PT.TotalLinealMeterActualLength AS LOPM,'
      '           PR.ProductNo,'
      '           0 AS DefaultCustShipObjectNo,'
      '           PTL.PcsPerLength           AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = PN.PackageTypeNo) AS NoOfL' +
        'engths,'
      ''
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = PN.PackageTypeNo) AS Produ' +
        'ctLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      '          WHERE   PTD.PackageTypeNo = PN.PackageTypeNo) AS ALMM,'
      ''
      ''
      '          PG.ActualThicknessMM,'
      '          PG.ActualWidthMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                     AS MainG' +
        'radeNo,'
      '          0 AS OverrideMatch,'
      '          INL.LIPNo,'
      '          0 AS Pkg_State,'
      '          0 AS Pkg_Function,'
      '          0 AS Changed,'
      '          0 AS Defsspno,'
      #9'        0 AS OverrideRL,'
      '          INL.PIPNo,'
      #9'        INL.InternalInvoiceNo'
      ''
      ''
      'FROM dbo.IH_PkgsRem INL'
      'Inner Join dbo.PackageNumber PN on PN.PackageNo = INL.PackageNo'
      
        '                              AND PN.SupplierCode = INL.Supplier' +
        'Code'
      
        ' INNER JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo    = PN' +
        '.PackageTypeNo'
      
        ' INNER JOIN dbo.Product       Pr  ON    Pr.ProductNo        = Pt' +
        '.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo   = Pr' +
        '.ProductGroupNo'
      
        ' INNER JOIN dbo.Grade         G   ON    G.GradeNo           = Pr' +
        '.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      
        ' Inner Join dbo.PackageTypeLengths PTL  ON PTL.PackageTypeNo  = ' +
        'PT.PackageTypeNo'
      ''
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'ORDER BY   INL.PackageNo DESC'
      '')
    Left = 816
    Top = 168
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadPackagesIIILoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIILoadDetailNo: TIntegerField
      DisplayLabel = 'Lastradnr'
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object cds_LoadPackagesIIIPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesIIINoOfPackages: TIntegerField
      DisplayLabel = 'Antal paket'
      FieldName = 'NoOfPackages'
      Origin = 'NoOfPackages'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIISupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object cds_LoadPackagesIIIPackageOK: TIntegerField
      FieldName = 'PackageOK'
      Origin = 'PackageOK'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIProblemPackageLog: TStringField
      DisplayLabel = 'Logg'
      FieldName = 'ProblemPackageLog'
      Origin = 'ProblemPackageLog'
      ProviderFlags = []
      Size = 1
    end
    object cds_LoadPackagesIIICreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIIIPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIIIMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIIIKVM: TFloatField
      DisplayLabel = 'AM2'
      FieldName = 'KVM'
      Origin = 'KVM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIIILOPM: TFloatField
      DisplayLabel = 'AM1'
      FieldName = 'LOPM'
      Origin = 'LOPM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIIIProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object cds_LoadPackagesIIINoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      Origin = 'NoOfLengths'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIISurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIISpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIOverrideMatch: TIntegerField
      DisplayLabel = 'Override'
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIILIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIIPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      Origin = 'Pkg_State'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIPkg_Function: TIntegerField
      FieldName = 'Pkg_Function'
      Origin = 'Pkg_Function'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIChanged: TIntegerField
      FieldName = 'Changed'
      Origin = 'Changed'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIDefsspno: TIntegerField
      FieldName = 'Defsspno'
      Origin = 'Defsspno'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIOverrideRL: TIntegerField
      DisplayLabel = 'Till'#229't alla l'#228'ngder'
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIIPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsInvoiceLO: TFDQuery
    CachedUpdates = True
    OnUpdateError = cdsInvoiceLOUpdateError
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT * FROM dbo.INVOICELO ILO'
      'WHERE '
      'ILO.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 168
    Top = 16
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoiceLOInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceLOShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceLOOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object cdsInvoiceLOReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsInvoiceLOOurReference: TStringField
      FieldName = 'OurReference'
      Origin = 'OurReference'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object cdsInvoiceLOSalesMan: TStringField
      FieldName = 'SalesMan'
      Origin = 'SalesMan'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object cdsInvoiceLOBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLOTotalFreightCost: TFloatField
      FieldName = 'TotalFreightCost'
      Origin = 'TotalFreightCost'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLOFreightCostPerUnit: TFloatField
      FieldName = 'FreightCostPerUnit'
      Origin = 'FreightCostPerUnit'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLOInvoiceAdditionAmount: TFloatField
      FieldName = 'InvoiceAdditionAmount'
      Origin = 'InvoiceAdditionAmount'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLOInvoiceAdditionUnitNo: TIntegerField
      FieldName = 'InvoiceAdditionUnitNo'
      Origin = 'InvoiceAdditionUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLOInvoiceAdditionDescription: TStringField
      FieldName = 'InvoiceAdditionDescription'
      Origin = 'InvoiceAdditionDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceLOCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLOModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLODateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLOShipper: TStringField
      FieldName = 'Shipper'
      Origin = 'Shipper'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceLOCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object cdsInvoiceLOETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLOETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceLOTrpID: TStringField
      FieldName = 'TrpID'
      Origin = 'TrpID'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
  end
  object cdsInvoiceDetail: TFDQuery
    AfterInsert = cdsInvoiceDetailAfterInsert
    CachedUpdates = True
    OnUpdateError = cdsInvoiceDetailUpdateError
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT *'
      'FROM dbo.InvoiceDetail'
      'WHERE '
      'InternalInvoiceNo = :InternalInvoiceNo')
    Left = 280
    Top = 16
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoiceDetailInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceDetailShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceDetailInvoiceDetailNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'InvoiceDetailNo'
      Origin = 'InvoiceDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceDetailTypeOfRow: TIntegerField
      FieldName = 'TypeOfRow'
      Origin = 'TypeOfRow'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsInvoiceDetailOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailReference: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsInvoiceDetailProductDescription: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object cdsInvoiceDetailProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsInvoiceDetailProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailPrice: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsInvoiceDetailVolume_OrderUnitChange
      DisplayFormat = '#,###,###.000'
    end
    object cdsInvoiceDetailVolumeUnit: TStringField
      DisplayLabel = 'Vol.enhet'
      FieldName = 'VolumeUnit'
      Origin = 'VolumeUnit'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cdsInvoiceDetailPriceUnit: TStringField
      DisplayLabel = 'Prisenhet'
      FieldName = 'PriceUnit'
      Origin = 'PriceUnit'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cdsInvoiceDetailProductValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#.00'
    end
    object cdsInvoiceDetailVolume_OrderUnit: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'Volume_OrderUnit'
      Origin = 'Volume_OrderUnit'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsInvoiceDetailVolume_OrderUnitChange
      DisplayFormat = '#,###,###.000'
    end
    object cdsInvoiceDetailActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailNominalThicknessINCH: TFloatField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailNominalWidthINCH: TFloatField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailActualNetM3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ActualNetM3'
      Origin = 'ActualNetM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.000'
    end
    object cdsInvoiceDetailNominalM3: TFloatField
      DisplayLabel = 'NM3(extern)'
      FieldName = 'NominalM3'
      Origin = 'NominalM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.000'
    end
    object cdsInvoiceDetailLinealMeter: TFloatField
      DisplayLabel = 'AM1'
      FieldName = 'LinealMeter'
      Origin = 'LinealMeter'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.000'
    end
    object cdsInvoiceDetailNoOfPieces: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'NoOfPieces'
      Origin = 'NoOfPieces'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##########'
    end
    object cdsInvoiceDetailCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailNoOfPkgs: TIntegerField
      DisplayLabel = 'Paket'
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '########'
    end
    object cdsInvoiceDetailOL_Reference: TStringField
      DisplayLabel = 'KR-referens'
      FieldName = 'OL_Reference'
      Origin = 'OL_Reference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsInvoiceDetailFreightCostCurr: TBCDField
      FieldName = 'FreightCostCurr'
      Origin = 'FreightCostCurr'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInvoiceDetailProductValueWOFreight: TFloatField
      FieldName = 'ProductValueWOFreight'
      Origin = 'ProductValueWOFreight'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#.00'
    end
    object cdsInvoiceDetailVatValue: TFloatField
      DisplayLabel = 'Momsv'#228'rde'
      FieldName = 'VatValue'
      Origin = 'VatValue'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#.00'
    end
    object cdsInvoiceDetailintNM3: TFloatField
      DisplayLabel = 'NM3(intern)'
      FieldName = 'intNM3'
      Origin = 'intNM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.000'
    end
    object cdsInvoiceDetailArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailArticleName: TStringField
      DisplayLabel = 'Artikel'
      FieldKind = fkLookup
      FieldName = 'ArticleName'
      LookupDataSet = dmsSystem.cds_Article
      LookupKeyFields = 'ArticleNo'
      LookupResultField = 'ArticleName'
      KeyFields = 'ArticleNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cdsInvoiceDetailKonto: TStringField
      FieldName = 'Konto'
      Origin = 'Konto'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsInvoiceDetailVatCode: TIntegerField
      DisplayLabel = 'Momskod'
      FieldName = 'VatCode'
      Origin = 'VatCode'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailmoms_konto: TStringField
      DisplayLabel = 'Momskonto'
      FieldName = 'moms_konto'
      Origin = 'moms_konto'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsInvoiceDetailAttSekPerAM3: TBCDField
      FieldName = 'AttSekPerAM3'
      Origin = 'AttSekPerAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsInvoiceDetailNettoSEKPerNM3: TBCDField
      FieldName = 'NettoSEKPerNM3'
      Origin = 'NettoSEKPerNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsInvoiceDetailBruttoSEKPerNM3: TBCDField
      FieldName = 'BruttoSEKPerNM3'
      Origin = 'BruttoSEKPerNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsInvoiceDetailInclInPrice: TIntegerField
      FieldName = 'InclInPrice'
      Origin = 'InclInPrice'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsInvoiceDetailInclInPriceChange
    end
    object cdsInvoiceDetailInclInInvoiceTotal: TIntegerField
      FieldName = 'InclInInvoiceTotal'
      Origin = 'InclInInvoiceTotal'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceDetailTotalInvoice: TAggregateField
      FieldName = 'TotalInvoice'
      DisplayName = ''
      Expression = 'SUM(ProductValue)'
    end
  end
  object cdsInvoiceShipTo: TFDQuery
    CachedUpdates = True
    OnUpdateError = cdsInvoiceShipToUpdateError
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.InvoiceShipToAddress'
      'WHERE '
      'InternalInvoiceNo = :InternalInvoiceNo')
    Left = 392
    Top = 16
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoiceShipToInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceShipToShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceShipToReference: TStringField
      FieldName = 'Reference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cdsInvoiceShipToAddressNo: TIntegerField
      FieldName = 'AddressNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsInvoiceShipToAddress: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsinvShipToAdr_Index01'
        Fields = 'InternalInvoiceNo'
      end>
    IndexName = 'cdsinvShipToAdr_Index01'
    MasterSource = dsrcInvoiceHead
    MasterFields = 'InternalInvoiceNo'
    OnUpdateError = cdsInvoiceShipToAddressUpdateError
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'InvoiceShipToAddress'
    SQL.Strings = (
      'Select'
      'IST.InternalInvoiceNo,'
      'IST.ShippingPlanNo,'
      'IST.Reference,'
      'IST.AddressNo,'
      ''
      'Addr.AddressName,'
      ''
      
        'isNull(RTRIM(Addr.AddressLine1),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.Addre' +
        'ssLine2),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.AddressLine3),'#39#39')+'#39', '#39'+isNul' +
        'l(RTRIM(Addr.AddressLine4),'#39#39')'
      
        '+'#39', '#39'+isNull(RTRIM(AdrCY.CityName),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.Po' +
        'stalCode),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.StateOrProvince),'#39#39')+'#39', '#39'+i' +
        'sNull(RTRIM( AdrCtry.CountryName ),'#39#39') as ADDR,'
      ''
      'Addr.AddressLine1,'
      'Addr.AddressLine2,'
      'Addr.AddressLine3,'
      'Addr.AddressLine4,'
      'Addr.StateOrProvince    AS STATE,'
      'Addr.PostalCode         AS POSTAL_CODE,'
      'AdrCY.CityName'#9'        AS CITY,'
      'AdrCtry.CountryName'#9'AS COUNTRY,'
      'Addr.PartyIdentifier1 AS GLN'
      ''
      'from dbo.InvoiceShipToAddress IST'
      ' Left Outer Join dbo.Address Addr'#9
      ' '#9'INNER JOIN dbo.CITY'#9#9#9'AdrCY'#9'ON'#9'AdrCY.CityNo '#9#9'= Addr.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9#9'AdrCtry'#9'ON'#9'AdrCtry.CountryNo '#9'= Addr.C' +
        'ountryNo'
      '  ON Addr.AddressNo = IST.AddressNo'
      ''
      'WHERE IST.InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 504
    Top = 16
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoiceShipToAddressInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceShipToAddressShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceShipToAddressReference: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cdsInvoiceShipToAddressAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceShipToAddressAddressName: TStringField
      DisplayLabel = 'Adressnamn'
      FieldName = 'AddressName'
      Origin = 'AddressName'
      ProviderFlags = []
      Size = 80
    end
    object cdsInvoiceShipToAddressADDR: TStringField
      DisplayLabel = 'Adressrad 1..4'
      FieldName = 'ADDR'
      Origin = 'ADDR'
      ProviderFlags = []
      Size = 314
    end
    object cdsInvoiceShipToAddressAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      ProviderFlags = []
      Size = 40
    end
    object cdsInvoiceShipToAddressAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceShipToAddressAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceShipToAddressAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceShipToAddressSTATE: TStringField
      DisplayLabel = 'Stat'
      FieldName = 'STATE'
      Origin = 'STATE'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceShipToAddressPOSTAL_CODE: TStringField
      DisplayLabel = 'Postnr'
      FieldName = 'POSTAL_CODE'
      Origin = 'POSTAL_CODE'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsInvoiceShipToAddressCITY: TStringField
      DisplayLabel = 'Ort'
      FieldName = 'CITY'
      Origin = 'CITY'
      ProviderFlags = []
      Size = 50
    end
    object cdsInvoiceShipToAddressCOUNTRY: TStringField
      DisplayLabel = 'Land'
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      ProviderFlags = []
      Size = 30
    end
    object cdsInvoiceShipToAddressGLN: TStringField
      FieldName = 'GLN'
      Origin = 'GLN'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsInvoiceNumber: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsInvoiceNumbersInvNo'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cdsInvoiceNumbersInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT * FROM dbo.InvoiceNumber')
    Left = 64
    Top = 552
    object cdsInvoiceNumberInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceNumberInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      Required = True
    end
    object cdsInvoiceNumberUserCreated: TSmallintField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
    end
    object cdsInvoiceNumberUserModified: TSmallintField
      FieldName = 'UserModified'
      Origin = 'UserModified'
    end
    object cdsInvoiceNumberDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cdsProformaInvNo: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsProformaInvNo'
        Fields = 'ProformaInvoiceNo'
      end>
    IndexName = 'cdsProformaInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'From dbo.ProformaInvoiceNumber'
      '')
    Left = 64
    Top = 648
    object cdsProformaInvNoProformaInvoiceNo: TIntegerField
      FieldName = 'ProformaInvoiceNo'
      Origin = 'ProformaInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProformaInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
    end
    object cdsProformaInvNoUserCreated: TSmallintField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
    end
    object cdsProformaInvNoUserModified: TSmallintField
      FieldName = 'UserModified'
      Origin = 'UserModified'
    end
    object cdsProformaInvNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cdsFWInvNo: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsFWInvNo'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cdsFWInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'From dbo.InvNo_FW'
      '')
    Left = 816
    Top = 16
    object cdsFWInvNoInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFWInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
    end
    object cdsFWInvNoUserCreated: TSmallintField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
    end
    object cdsFWInvNoUserModified: TSmallintField
      FieldName = 'UserModified'
      Origin = 'UserModified'
    end
    object cdsFWInvNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cdsUSAInvNo: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsUSAInvNo'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cdsUSAInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceNo_USA')
    Left = 816
    Top = 72
    object cdsUSAInvNoInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUSAInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
    end
    object cdsUSAInvNoUserCreated: TSmallintField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
    end
    object cdsUSAInvNoUserModified: TSmallintField
      FieldName = 'UserModified'
      Origin = 'UserModified'
    end
    object cdsUSAInvNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cdsInvoiceList: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    SQL.Strings = (
      
        'SELECT Distinct invd.VatCode AS Momskod, invd.Konto AS Varukonto' +
        ', invd.Konto AS Fraktkonto,'
      'ART.ArticleName, invd.moms_konto AS Momskonto,'
      
        'IH.QuickInvoice, IH.InternalInvoiceNo, IH.InvoiceDate AS INV_DAT' +
        'E, '
      'IH.CustomerName AS CUSTOMER, IL.Shipper AS SHIPPER,'
      'inos.InvoiceNo AS INVOICE_NO,'
      'CASE'
      'WHEN IH.InvoiceType = 0 THEN '#39'VIDA (VWK1)'#39
      'WHEN IH.InvoiceType = 1 THEN '#39'PROFORMA, fakturera senare'#39
      'WHEN IH.InvoiceType = 2 THEN '#39'PROFORMA, flytta paket'#39
      'WHEN IH.InvoiceType = 3 THEN '#39'INK'#214'P'#39
      'WHEN IH.InvoiceType = 4 THEN '#39'USA (VWK2)'#39
      'WHEN IH.InvoiceType = 5 THEN '#39'FW (VWK4)'#39
      'END AS INVOICE_TYPE,'
      'CASE'
      'WHEN IH.Debit_Credit = 0 THEN '#39'DEBIT'#39
      'WHEN IH.Debit_Credit = 1 THEN '#39'CREDIT'#39
      'END AS INVOICE_KONTO,'
      ''
      '(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX, Currency C'
      #9'WHERE'
      #9'C.CurrencyName = IH.CurrencyName'
      #9'and EX.CurrencyNo = C.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) AS KURS,'
      ''
      'IH.CurrencyName'#9'AS CURRENCY,'
      ''
      ''
      'IH.AgentName AS AGENT, '
      'isnull(IH.Trading,0) AS TRADING,'
      'IH.SalesOrgNo AS F'#246'rs'#228'ljOrgNr,'
      
        'CASE WHEN [dbo].[IsoWk](IH.InvoiceDate) < 10 THEN '#9'CAST(DATEPART' +
        ' (Year, IH.InvoiceDate) AS CHAR(4)) + '
      #39'-0'#39' + CAST([dbo].[IsoWk] (IH.InvoiceDate) AS CHAR(2))'
      'ELSE CAST(DATEPART (Year, IH.InvoiceDate) AS CHAR(4)) + '
      
        #39'-'#39' + CAST([dbo].[IsoWk] (IH.InvoiceDate) AS CHAR(2)) END AS VEC' +
        'KA,'
      'IH.CountryName AS LAND,'
      'SR.ClientName AS F'#246'rs'#228'ljReg,'
      
        'SalesGroupName AS S'#228'ljGrupp, IH.CustomerNo, IH.InvoiceType, IL.S' +
        'hippingPlanNo AS LO,'
      
        'IH.ST_CityName AS LevORT, IL.Reference AS ErReferens, IL.OrderNo' +
        'Text AS Ordernr, IH.DueDate, IH.AgentNo,'
      
        'IH.StickyNote AS Postit, Inos.Prefix AS PO_prefix, IH.VAT_OnInvo' +
        'ice AS Skatteupplag,'
      ''
      
        'IH.IntraStatCountryNo, ISC.CountryName AS Statistikland, IH.DelK' +
        'redit, IH.IncludeFreightCostInPrice,'
      ''
      'SUM(invd.NoOfPkgs) AS Paket,'
      'SUM(invd.intNM3) AS NM3_Int,'
      'SUM(invd.NominalM3) AS NM3_Ext,'
      'SUM(invd.ActualNetM3) AS AM3,'
      'SUM(invd.Volume_OrderUnit) AS Kvantitet,'
      'SUM(invd.ProductValue) AS Produktvarde,'
      ''
      'SUM(invd.ProductValue)'
      '*'
      '(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX, Currency C'
      #9'WHERE'
      #9'C.CurrencyName = IH.CurrencyName'
      #9'and EX.CurrencyNo = C.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) AS ProduktVardeSEK,'
      ''
      'SUM(invd.ProductValueWOFreight) AS ProduktvardeUtanFrakt,'
      ''
      'SUM(invd.ProductValueWOFreight)'
      '*'
      '(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX, Currency C'
      #9'WHERE'
      #9'C.CurrencyName = IH.CurrencyName'
      #9'and EX.CurrencyNo = C.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) AS ProduktVardeUtanFraktSEK,'
      ''
      
        '  (Select abs(SUM(invd2.FreightCostCurr)) from dbo.InvoiceDetail' +
        ' invd2'
      '  WHERE invd2.InternalInvoiceNo = ih.InternalInvoiceNo'
      '  AND invd2.ShippingPlanNo = IL.ShippingPlanNo'
      '  AND invd2.ArticleNo = invd.ArticleNo) AS FraktValuta,'
      ''
      '(SUM(invd.ProductValue) - SUM(invd.ProductValueWOFreight))'
      '*'
      '(Select top 1 IsNull(EX.ExChangeRate, 0)'
      'FROM ExChangeRate EX, Currency C'
      'WHERE'
      'C.CurrencyName = IH.CurrencyName'
      'and EX.CurrencyNo = C.CurrencyNo'
      'AND EX.ValidFrom <= IH.InvoiceDate'
      
        'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom des' +
        'c ) AS FraktValutaSEK,'
      ''
      'CASE WHEN ih.VAT_OnInvoice = 0 THEN'
      'SUM(invd.VatValue) '
      'END AS momsvarde,'
      'IH.AddressLine1'
      ''
      ''
      'FROM dbo.InvoiceHeader IH'
      
        'Left Outer Join dbo.Country ISC on ISC.CountryNo = IH.IntraStatC' +
        'ountryNo'
      
        'Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.Interna' +
        'lInvoiceNo'
      ''
      
        'Inner join dbo.InvoiceDetail invd on invd.InternalInvoiceNo = IL' +
        '.InternalInvoiceNo'
      'and invd.ShippingPlanNo = IL.ShippingPlanNo'
      'Inner join dbo.FS_Article ART on ART.ArticleNo = invd.ArticleNo'
      ''
      'Inner join dbo.Client SR ON SR.ClientNo = IH.SupplierNo'
      'Left Outer Join dbo.SalesManGroupRow smg'
      
        'Inner Join dbo.SalesManGroup sm on sm.SalesGroupNo = smg.SalesGr' +
        'oupNo'
      'on smg.UserID = IH.ResponsibleSeller'
      
        'Left Outer Join dbo.InvoiceNos inos on inos.InternalInvoiceNo = ' +
        'IH.InternalInvoiceNo'
      'WHERE IH.InternalInvoiceNo = 12345'
      'AND IH.InvoiceDate >= '#39'2010-12-16 13:20:56'#39
      'AND IH.InvoiceDate <= '#39'2010-12-31 13:21:00'#39
      'GROUP BY IH.QuickInvoice, IH.InternalInvoiceNo, IH.InvoiceDate,'
      'IH.CustomerName, IL.Shipper, inos.InvoiceNo, IH.Debit_Credit,'
      
        'IH.InvoiceType, IH.CurrencyName, IL.ShippingPlanNo, IH.AgentName' +
        ','
      'IH.Trading, IH.SalesOrgNo, IH.VAT_OnInvoice,'
      ''
      'IH.CountryName,'
      'SR.ClientName,'
      
        'SalesGroupName, IH.CustomerNo, IH.InvoiceType, IL.ShippingPlanNo' +
        ','
      
        'IH.ST_CityName, IL.Reference, IL.OrderNoText, IH.DueDate, IH.Age' +
        'ntNo,'
      'IH.StickyNote, Inos.Prefix,'
      
        'IH.IntraStatCountryNo, ISC.CountryName, IH.DelKredit, IH.Include' +
        'FreightCostInPrice,'
      
        'invd.VatCode, invd.Konto, ART.ArticleName, invd.moms_konto, invd' +
        '.ArticleNo, IH.AddressLine1'
      'ORDER BY IH.InvoiceDate'
      ''
      '')
    Left = 920
    Top = 24
    object cdsInvoiceListQuickInvoice: TIntegerField
      DisplayLabel = 'Snabbfaktura'
      FieldName = 'QuickInvoice'
      Origin = 'QuickInvoice'
      ProviderFlags = []
    end
    object cdsInvoiceListINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      ProviderFlags = []
    end
    object cdsInvoiceListCUSTOMER: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      ProviderFlags = []
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceListINVOICE_NO: TIntegerField
      DisplayLabel = 'Fakturanr'
      FieldName = 'INVOICE_NO'
      Origin = 'INVOICE_NO'
      ProviderFlags = []
    end
    object cdsInvoiceListINVOICE_TYPE: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'INVOICE_TYPE'
      Origin = 'INVOICE_TYPE'
      ProviderFlags = []
      ReadOnly = True
      Size = 26
    end
    object cdsInvoiceListINVOICE_KONTO: TStringField
      DisplayLabel = 'Konto'
      FieldName = 'INVOICE_KONTO'
      Origin = 'INVOICE_KONTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object cdsInvoiceListKURS: TFloatField
      FieldName = 'KURS'
      Origin = 'KURS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsInvoiceListCURRENCY: TStringField
      DisplayLabel = 'Valuta'
      FieldName = 'CURRENCY'
      Origin = 'CURRENCY'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object cdsInvoiceListAGENT: TStringField
      DisplayLabel = 'Agent'
      FieldName = 'AGENT'
      Origin = 'AGENT'
      ProviderFlags = []
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceListTRADING: TIntegerField
      DisplayLabel = 'Trading'
      FieldName = 'TRADING'
      Origin = 'TRADING'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsInvoiceListFrsljOrgNr: TStringField
      DisplayLabel = 'F'#246'rs'#228'lj.org.nr'
      FieldName = 'F'#246'rs'#228'ljOrgNr'
      Origin = '[F'#246'rs'#228'ljOrgNr]'
      ProviderFlags = []
      Size = 10
    end
    object cdsInvoiceListVECKA: TStringField
      DisplayLabel = 'Vecka'
      FieldName = 'VECKA'
      Origin = 'VECKA'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cdsInvoiceListLAND: TStringField
      DisplayLabel = 'Land(fakturaadress)'
      FieldName = 'LAND'
      Origin = 'LAND'
      ProviderFlags = []
      Size = 30
    end
    object cdsInvoiceListFrsljReg: TStringField
      DisplayLabel = 'F'#246'rs'#228'lj.region'
      FieldName = 'F'#246'rs'#228'ljReg'
      Origin = '[F'#246'rs'#228'ljReg]'
      ProviderFlags = []
      Size = 80
    end
    object cdsInvoiceListSljGrupp: TStringField
      DisplayLabel = 'S'#228'ljgrupp'
      FieldName = 'S'#228'ljGrupp'
      Origin = '[S'#228'ljGrupp]'
      ProviderFlags = []
      Size = 15
    end
    object cdsInvoiceListCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = []
    end
    object cdsInvoiceListInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
      ProviderFlags = []
    end
    object cdsInvoiceListLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      ProviderFlags = []
    end
    object cdsInvoiceListKvantitet: TFloatField
      FieldName = 'Kvantitet'
      Origin = 'Kvantitet'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#######.00'
    end
    object cdsInvoiceListAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#######.000'
    end
    object cdsInvoiceListNM3_Int: TFloatField
      DisplayLabel = 'NM3(int)'
      FieldName = 'NM3_Int'
      Origin = 'NM3_Int'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#######.000'
    end
    object cdsInvoiceListNM3_Ext: TFloatField
      DisplayLabel = 'NM3(ext)'
      FieldName = 'NM3_Ext'
      Origin = 'NM3_Ext'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#######.000'
    end
    object cdsInvoiceListPaket: TIntegerField
      FieldName = 'Paket'
      Origin = 'Paket'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsInvoiceListmomsvarde: TFloatField
      DisplayLabel = 'Moms'
      FieldName = 'momsvarde'
      Origin = 'momsvarde'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#######.00'
    end
    object cdsInvoiceListProduktvarde: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'Produktvarde'
      Origin = 'Produktvarde'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#######.00'
    end
    object cdsInvoiceListProduktVardeSEK: TFloatField
      DisplayLabel = 'V'#228'rde SEK'
      FieldName = 'ProduktVardeSEK'
      Origin = 'ProduktVardeSEK'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '##########.00'
    end
    object cdsInvoiceListProduktvardeUtanFrakt: TFloatField
      DisplayLabel = 'Produktv'#228'rde (no frakt)'
      FieldName = 'ProduktvardeUtanFrakt'
      Origin = 'ProduktvardeUtanFrakt'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#######.00'
    end
    object cdsInvoiceListProduktVardeUtanFraktSEK: TFloatField
      DisplayLabel = 'Produktv'#228'rde SEK (no frakt)'
      FieldName = 'ProduktVardeUtanFraktSEK'
      Origin = 'ProduktVardeUtanFraktSEK'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#######.00'
    end
    object cdsInvoiceListLevORT: TStringField
      DisplayLabel = 'Lev.ort'
      FieldName = 'LevORT'
      Origin = 'LevORT'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsInvoiceListErReferens: TStringField
      DisplayLabel = 'Er referens'
      FieldName = 'ErReferens'
      Origin = 'ErReferens'
      ProviderFlags = []
      Size = 30
    end
    object cdsInvoiceListOrdernr: TStringField
      FieldName = 'Ordernr'
      Origin = 'Ordernr'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsInvoiceListDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
      Origin = 'DueDate'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceListInternalInvoiceNo: TIntegerField
      DisplayLabel = 'Internnr'
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceListAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = []
    end
    object cdsInvoiceListSHIPPER: TStringField
      DisplayLabel = 'Spedit'#246'r'
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      ProviderFlags = []
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceListPostit: TStringField
      FieldName = 'Postit'
      Origin = 'Postit'
      ProviderFlags = []
      Size = 255
    end
    object cdsInvoiceListPO_prefix: TStringField
      DisplayLabel = 'Ink'#246'psprefix'
      FieldName = 'PO_prefix'
      Origin = 'PO_prefix'
      ProviderFlags = []
      Size = 10
    end
    object cdsInvoiceListSkatteupplag: TSmallintField
      FieldName = 'Skatteupplag'
      Origin = 'Skatteupplag'
      ProviderFlags = []
    end
    object cdsInvoiceListVarukonto: TStringField
      FieldName = 'Varukonto'
      Origin = 'Varukonto'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object cdsInvoiceListFraktkonto: TStringField
      FieldName = 'Fraktkonto'
      Origin = 'Fraktkonto'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object cdsInvoiceListMomskonto: TStringField
      FieldName = 'Momskonto'
      Origin = 'Momskonto'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object cdsInvoiceListMomskod: TIntegerField
      FieldName = 'Momskod'
      Origin = 'Momskod'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsInvoiceListIntraStatCountryNo: TIntegerField
      FieldName = 'IntraStatCountryNo'
      Origin = 'IntraStatCountryNo'
      ProviderFlags = []
    end
    object cdsInvoiceListStatistikland: TStringField
      FieldName = 'Statistikland'
      Origin = 'Statistikland'
      ProviderFlags = []
      Size = 30
    end
    object cdsInvoiceListDelKredit: TIntegerField
      DisplayLabel = 'Delkredit'
      FieldName = 'DelKredit'
      Origin = 'DelKredit'
      ProviderFlags = []
    end
    object cdsInvoiceListFraktValutaSEK: TFloatField
      DisplayLabel = 'Frakt, SEK'
      FieldName = 'FraktValutaSEK'
      Origin = 'FraktValutaSEK'
      ReadOnly = True
      DisplayFormat = '#######.00'
    end
    object cdsInvoiceListIncludeFreightCostInPrice: TIntegerField
      FieldName = 'IncludeFreightCostInPrice'
      Origin = 'IncludeFreightCostInPrice'
      ProviderFlags = []
    end
    object cdsInvoiceListArticleName: TStringField
      DisplayLabel = 'Artikel'
      FieldName = 'ArticleName'
      Origin = 'ArticleName'
      Size = 50
    end
    object cdsInvoiceListFraktValuta: TFMTBCDField
      FieldName = 'FraktValuta'
      Origin = 'FraktValuta'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object cdsInvoiceListAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
  end
  object cds_IH_SpecLoad: TFDQuery
    AfterInsert = cds_IH_SpecLoadAfterInsert
    CachedUpdates = True
    OnUpdateError = cds_IH_SpecLoadUpdateError
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.IH_SpecLoad'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    Left = 1016
    Top = 16
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_IH_SpecLoadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_IH_SpecLoadPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      OnChange = cds_IH_SpecLoadPIPNoChange
    end
    object cds_IH_SpecLoadLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_IH_SpecLoadSpecLoadNo: TIntegerField
      FieldName = 'SpecLoadNo'
      Origin = 'SpecLoadNo'
    end
    object cds_IH_SpecLoadPIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPName'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object cds_IH_SpecLoadLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
  end
  object cds_ExportTyp1: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      'CASE WHEN :CET = 0 then'
      
        'isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39') + '#39' '#39 +
        ' + Cast(LD.PackageNo AS Varchar(10))'
      'else'
      
        #39'C'#39' + isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39')' +
        ' + '#39' '#39' + Cast(LD.PackageNo AS Varchar(10))'
      'End AS PackageNo,'
      ''
      ''
      'OL.NominalThicknessMM AS NomThick,'
      'OL.NominalWidthMM AS NomWidth,'
      ''
      
        '(Select Max(ActualLengthMM)/100 FROM dbo.PackageTypeDetail    PT' +
        'D'
      
        'INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo       ' +
        '     = PTD.ProductLengthNo'
      
        'WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo) AS MAXLE' +
        'NGTH,'
      ''
      '(CASE'
      'WHEN LS.NoOfLengths > 1 THEN'
      '(Select MIN(ActualLengthMM) FROM dbo.PackageTypeDetail    PTD'
      
        'INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo       ' +
        '     = PTD.ProductLengthNo'
      'WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo)'
      'ELSE'
      '0'
      'END)'
      'AS MINLENGTH,'
      'PT.TotalNoOfPieces AS Pcs,'
      'OL.Reference AS Mark,'
      ''
      'CASE WHEN IsNull(pin.StressGrade,0) = 1 then'
      #39'PEFC 105-32-7/V037'#39
      'ELSE'
      #39#39
      'END AS PEFC,'
      ''
      'CASE WHEN :KV = 1 THEN'
      'G.GradeName'
      'ELSE'
      #39#39
      'END AS KVALITET'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      
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
      
        #9'INNER JOIN dbo.PackageType    PT '#9'ON  PT.PackageTypeNo         ' +
        '   = LD.PackageTypeNo'
      
        #9'INNER JOIN dbo.LengthSpec    LS '#9'ON  LS.LengthSpecNo           ' +
        ' = PT.LengthSpecNo'
      ''
      '    '#9
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      
        #9'Left Outer Join dbo.Prodinstru pin on pin.ProdInstruNo = OL.Pro' +
        'dInstructNo            '
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      ''
      
        #9'Left join dbo.PkgPrefix PkgFix on PkgFix.PkgPrefix = PN.Supplie' +
        'rCode'
      #9'and PkgFix.ReportStd = 1'
      ''
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = PN.SupplierNo'
      ''
      ' '#9'Inner Join dbo.Product p on p.ProductNo = OL.ProductNo'
      #9'Inner Join dbo.Grade G on G.GradeNo = P.GradeNo'
      #9'and G.LanguageCode = IH.LanguageCode'
      ''
      ' WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      ''
      '  AND     (IL.ShippingPlanNo      <> -1                )'
      ''
      '')
    Left = 1024
    Top = 784
    ParamData = <
      item
        Name = 'CET'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'KV'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ExportTyp1PackageNo: TStringField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ReadOnly = True
      Size = 15
    end
    object cds_ExportTyp1NomThick: TFloatField
      FieldName = 'NomThick'
      Origin = 'NomThick'
    end
    object cds_ExportTyp1NomWidth: TFloatField
      FieldName = 'NomWidth'
      Origin = 'NomWidth'
    end
    object cds_ExportTyp1MAXLENGTH: TFloatField
      FieldName = 'MAXLENGTH'
      Origin = 'MAXLENGTH'
      ReadOnly = True
    end
    object cds_ExportTyp1MINLENGTH: TFloatField
      FieldName = 'MINLENGTH'
      Origin = 'MINLENGTH'
      ReadOnly = True
    end
    object cds_ExportTyp1Pcs: TIntegerField
      FieldName = 'Pcs'
      Origin = 'Pcs'
    end
    object cds_ExportTyp1Mark: TStringField
      FieldName = 'Mark'
      Origin = 'Mark'
      Size = 50
    end
    object cds_ExportTyp1PEFC: TStringField
      FieldName = 'PEFC'
      Origin = 'PEFC'
      ReadOnly = True
      Required = True
      Size = 18
    end
    object cds_ExportTyp1KVALITET: TStringField
      FieldName = 'KVALITET'
      Origin = 'KVALITET'
      ReadOnly = True
      Required = True
      Size = 30
    end
  end
  object sq_GetInvoiceHeadData: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'CSH.ShippingPlanNo,'
      'CSH.CustomerNo,'
      'OH.CustomerNo AS CustomerNoOH,'
      'OH.AgentNo,'
      'C.VATNO AS      VAT,'
      'OH.AgentCommission,'
      'OH.SendInvoiceToAgent,'
      ''
      'OH.PaymentTermsNo AS PaymentTermsNo, '
      'OH.DeliveryTermsNo AS DeliveryTermsNo,'
      'CSH.DestinationNo,'
      'Cy.CityName as Destination,'
      'OH.InvoiceText,'
      'OH.OrderNoText,'
      'PayText.PaymentText,'
      'OH.CurrencyNo,'
      ''
      'OH.ClientBillingAddressNo,'
      'ADR.AddressName'#9#9#9'AS BILL_ADDRESS_NAME,'
      'ADR.AddressLine1,'
      'ADR.AddressLine2,'
      'ADR.AddressLine3,'
      'ADR.AddressLine4,'
      'ADR.StateOrProvince,'
      'ADR.PostalCode,'
      'AdrCY.CityName as AddressCity,'
      'AdrCtry.CountryName as AddressCountry,'
      ''
      ''
      'C.ClientName as CustomerName,'
      'C.SearchName as SearchName,'
      'Ag.ClientName as AgentName,'
      'OH.LanguageCode,'
      ''
      'DT.DeliveryTerm,'
      'PT."Description" as PayDesc,'
      ''
      'DTOH.DeliveryTerm as DeliveryTermOH,'
      'PTOH."Description" as PayDescOH,'
      ''
      'OH.FreightInDiscount,'
      'OH.CommisionInDiscount AS FreightInCommission ,'
      'OH.CommisionPaidByCustomer AS CommissionPaidByCustomer,'
      ''
      'PayT.Discount1,'
      'CU.CurrencyName'#9#9#9#9'AS CURRENCYNAME,'
      ''
      'ST_ADR.AddressName'#9#9#9'AS AVROP_SHIPTO_ADDRESS_NAME,'
      'ST_ADR.AddressLine1'#9#9#9'AS AVROP_SHIPTO_ADDRESSLINE1,'
      'ST_ADR.AddressLine2'#9#9#9'AS AVROP_SHIPTO_ADDRESSLINE2,'
      'ST_ADR.AddressLine3'#9#9#9'AS AVROP_SHIPTO_ADDRESSLINE3,'
      'ST_ADR.AddressLine4'#9#9#9'AS AVROP_SHIPTO_ADDRESSLINE4,'
      'ST_ADR.StateOrProvince'#9#9#9'AS AVROP_SHIPTO_PROVINCE,'
      'ST_ADR.PostalCode'#9#9#9'AS AVROP_SHIPTO_POSTALCODE,'
      'ST_AdrCY.CityName '#9#9#9'AS AVROP_SHIPTO_CITY,'
      'ST_AdrCtry.CountryName '#9#9#9'AS AVROP_SHIPTO_COUNTRY,'
      ''
      'Agent_ADR.AddressName'#9#9#9'AS AGENT_ADDRESS_NAME,'
      'Agent_ADR.AddressLine1'#9#9#9'AS AGENT_SHIPTO_ADDRESSLINE1,'
      'Agent_ADR.AddressLine2'#9#9#9'AS AGENT_SHIPTO_ADDRESSLINE2,'
      'Agent_ADR.AddressLine3'#9#9#9'AS AGENT_SHIPTO_ADDRESSLINE3,'
      'Agent_ADR.AddressLine4'#9#9#9'AS AGENT_SHIPTO_ADDRESSLINE4,'
      'Agent_ADR.StateOrProvince'#9#9'AS AGENT_SHIPTO_PROVINCE,'
      'Agent_ADR.PostalCode'#9#9#9'AS AGENT_SHIPTO_POSTALCODE,'
      'Agent_CY.CityName '#9#9#9'AS AGENT_SHIPTO_CITY,'
      'Agent_Ctry.CountryName '#9#9#9'AS AGENT_SHIPTO_COUNTRY,'
      'OH.SU                       AS VAT_ONINVOICE ,'
      'OH.SalesOrgNo,'
      'OH.OrderNo,'
      'OH.Trading,'
      'OH.ResponsibleSeller,'
      'OH.DestinationText,'
      'OH.SpecialMoms,'
      'PayT.NoOfDaysDiscount2,'
      'PayT.FreightInDiscount AS SetDueDateBlank,'
      'PayT.FreightInCommission AS FreeDelMonth,'
      'ADR.CountryNo AS BillingCountryNo,'
      'isg.SalesGroupNo,'
      'OH.IntraStatCountryNo,'
      'DTOH.FreightIncluded,'
      'OH.OrderType,'
      'OH.SalesRegionNo'
      ''
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      ''
      
        #9'INNER JOIN dbo.LoadShippingPlan'#9#9'LS'#9'ON'#9'LS.ShippingPlanNo'#9'= CSH.' +
        'ShippingPlanNo'
      ''
      #9'INNER JOIN dbo.Loads LO'#9'ON'#9'LO.LoadNo'#9#9'= LS.LoadNo'
      ''
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD '#9'ON CSD.Shipping' +
        'PlanNo'#9#9'= CSH.ShippingPlanNo'
      ''
      #9'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST'
      
        #9'INNER JOIN dbo.Address '#9#9'ST_ADR'#9#9'ON'#9'ST_ADR.AddressNo'#9'= ST.Addre' +
        'ssNo'
      
        #9'INNER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR.City' +
        'No'
      
        #9'INNER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo '#9'= S' +
        'T_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'ST.ShippingPlanNo'#9'= CSD.ShippingPlanNo'
      #9#9#9#9#9#9#9'AND'#9'ST.Reference'#9#9'= CSD.Reference'
      ''
      #9'INNER JOIN dbo.Client '#9#9#9'C'#9'ON '#9'C.ClientNo'#9#9'= CSH.CustomerNo'
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      ''
      
        '  Left Outer Join dbo.SalesManGroupRow isg on isg.UserID = OH.Re' +
        'sponsibleSeller'
      ''
      ''
      #9'LEFT OUTER JOIN dbo.Address '#9#9'ADR'
      #9'INNER JOIN dbo.CITY'#9#9#9'AdrCY'#9'ON'#9'AdrCY.CityNo '#9#9'= ADR.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9#9'AdrCtry'#9'ON'#9'AdrCtry.CountryNo '#9'= ADR.Co' +
        'untryNo'
      #9#9#9#9#9#9#9'ON'#9'ADR.AddressNo'#9#9'= CSH.ClientBillingAddressNo'
      ''
      
        '        LEFT OUTER Join dbo.PaymentTextII PayText               ' +
        '  ON      PayText.CurrencyNo = OH.CurrencyNo'
      
        '                                                        AND     ' +
        'PayText.LanguageCode = OH.LanguageCode'
      
        '                                                        AND     ' +
        'PayText.CountryNo = ADR.CountryNo'
      ''
      #9'LEFT OUTER JOIN dbo.Address '#9#9'Agent_ADR'
      
        #9'INNER JOIN dbo.CITY'#9#9#9'Agent_CY ON Agent_CY.CityNo '#9#9'= Agent_ADR' +
        '.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9#9'Agent_Ctry ON Agent_Ctry.CountryNo '#9'= ' +
        'Agent_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'Agent_ADR.AddressNo'#9'= OH.AgentBillingAddressNo'
      ''
      
        #9'INNER JOIN dbo.Users'#9' '#9#9'US'#9'ON'#9'US.UserID '#9#9'= OH.ResponsibleSelle' +
        'r'
      ''
      
        #9'LEFT  OUTER JOIN dbo.City'#9#9'Cy '#9'ON  '#9'CSH.DestinationNo       = C' +
        'y.CityNo'
      
        #9'LEFT  OUTER JOIN dbo.Client'#9#9'AG'#9'ON  '#9'OH.AgentNo'#9'       '#9'= AG.Cl' +
        'ientNo'
      ''
      
        '        LEFT OUTER JOIN dbo.ClientPreference    cp      ON      ' +
        'cp.clientNo             = CSH.CustomerNo'
      
        '                                                        AND     ' +
        'cp.RoleType             = 1'
      
        #9'LEFT OUTER JOIN dbo.Currency'#9#9#9'CU'#9'ON'#9'CU.CurrencyNo'#9#9'= OH.Curren' +
        'cyNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.DeliveryTerm'#9#9'DT'#9'ON'#9'DT.DeliveryTerm_No'#9'= OH' +
        '.DeliveryTermsNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.PaymentTerms'#9#9'PayT'#9'ON'#9'PayT.PaymentTermsNo'#9'=' +
        ' OH.PaymentTermsNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.PaymentTermDesc'#9#9'PT'#9'ON'#9'PT.PaymentTermsNo'#9'= ' +
        'OH.PaymentTermsNo'
      #9#9#9#9#9#9#9#9'AND '#9'PT.LanguageCode'#9#9'= OH.LanguageCode'
      ''
      
        #9'LEFT OUTER JOIN dbo.DeliveryTerm'#9#9'DTOH'#9'ON'#9'DTOH.DeliveryTerm_No'#9 +
        '= OH.DeliveryTermsNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.PaymentTerms'#9#9'PayTOH'#9'ON'#9'PayTOH.PaymentTerms' +
        'No'#9'= OH.PaymentTermsNo'
      ''
      
        #9'LEFT OUTER JOIN dbo.PaymentTermDesc'#9#9'PTOH'#9'ON'#9'PTOH.PaymentTermsN' +
        'o'#9'= OH.PaymentTermsNo'
      #9#9#9#9#9#9#9#9'AND '#9'PTOH.LanguageCode'#9#9'= OH.LanguageCode'
      ''
      
        '        LEFT OUTER JOIN dbo.Invoiced_Load IL'#9'ON IL.LoadNo = LS.L' +
        'oadNo'
      #9#9#9#9'AND IL.ShippingPlanNo = LS.ShippingPlanNo'
      'WHERE'
      ' CSH.ShippingPlanNo = :ShippingPlanNo'
      'AND '#9'LO.CustomerNo = :CustomerNo'
      'AND LO.SenderLoadStatus = 2'
      'AND IL.InternalInvoiceNo IS NULL')
    Left = 64
    Top = 120
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
      end>
    object sq_GetInvoiceHeadDataShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetInvoiceHeadDataCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object sq_GetInvoiceHeadDataCustomerNoOH: TIntegerField
      FieldName = 'CustomerNoOH'
      Origin = 'CustomerNoOH'
    end
    object sq_GetInvoiceHeadDataAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object sq_GetInvoiceHeadDataVAT: TStringField
      FieldName = 'VAT'
      Origin = 'VAT'
      FixedChar = True
    end
    object sq_GetInvoiceHeadDataAgentCommission: TFloatField
      FieldName = 'AgentCommission'
      Origin = 'AgentCommission'
    end
    object sq_GetInvoiceHeadDataSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
      Origin = 'SendInvoiceToAgent'
    end
    object sq_GetInvoiceHeadDataPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
    end
    object sq_GetInvoiceHeadDataDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
    end
    object sq_GetInvoiceHeadDataDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
    end
    object sq_GetInvoiceHeadDataDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      Size = 50
    end
    object sq_GetInvoiceHeadDataInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      BlobType = ftMemo
    end
    object sq_GetInvoiceHeadDataOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      Required = True
    end
    object sq_GetInvoiceHeadDataPaymentText: TMemoField
      FieldName = 'PaymentText'
      Origin = 'PaymentText'
      BlobType = ftMemo
    end
    object sq_GetInvoiceHeadDataCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object sq_GetInvoiceHeadDataClientBillingAddressNo: TIntegerField
      FieldName = 'ClientBillingAddressNo'
      Origin = 'ClientBillingAddressNo'
    end
    object sq_GetInvoiceHeadDataBILL_ADDRESS_NAME: TStringField
      FieldName = 'BILL_ADDRESS_NAME'
      Origin = 'BILL_ADDRESS_NAME'
      Size = 80
    end
    object sq_GetInvoiceHeadDataAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object sq_GetInvoiceHeadDataAddressCity: TStringField
      FieldName = 'AddressCity'
      Origin = 'AddressCity'
      Size = 50
    end
    object sq_GetInvoiceHeadDataAddressCountry: TStringField
      FieldName = 'AddressCountry'
      Origin = 'AddressCountry'
      Size = 30
    end
    object sq_GetInvoiceHeadDataCustomerName: TStringField
      FieldName = 'CustomerName'
      Origin = 'CustomerName'
      Size = 80
    end
    object sq_GetInvoiceHeadDataSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object sq_GetInvoiceHeadDataAgentName: TStringField
      FieldName = 'AgentName'
      Origin = 'AgentName'
      Size = 80
    end
    object sq_GetInvoiceHeadDataLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object sq_GetInvoiceHeadDataDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Origin = 'DeliveryTerm'
      Size = 21
    end
    object sq_GetInvoiceHeadDataPayDesc: TStringField
      FieldName = 'PayDesc'
      Origin = 'PayDesc'
      Size = 100
    end
    object sq_GetInvoiceHeadDataDeliveryTermOH: TStringField
      FieldName = 'DeliveryTermOH'
      Origin = 'DeliveryTermOH'
      Size = 21
    end
    object sq_GetInvoiceHeadDataPayDescOH: TStringField
      FieldName = 'PayDescOH'
      Origin = 'PayDescOH'
      Size = 100
    end
    object sq_GetInvoiceHeadDataFreightInDiscount: TSmallintField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
    object sq_GetInvoiceHeadDataFreightInCommission: TSmallintField
      FieldName = 'FreightInCommission'
      Origin = 'FreightInCommission'
    end
    object sq_GetInvoiceHeadDataCommissionPaidByCustomer: TSmallintField
      FieldName = 'CommissionPaidByCustomer'
      Origin = 'CommissionPaidByCustomer'
    end
    object sq_GetInvoiceHeadDataDiscount1: TFloatField
      FieldName = 'Discount1'
      Origin = 'Discount1'
    end
    object sq_GetInvoiceHeadDataCURRENCYNAME: TStringField
      FieldName = 'CURRENCYNAME'
      Origin = 'CURRENCYNAME'
      Size = 5
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESS_NAME: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESS_NAME'
      Origin = 'AVROP_SHIPTO_ADDRESS_NAME'
      Size = 80
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESSLINE1'
      Origin = 'AVROP_SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESSLINE2'
      Origin = 'AVROP_SHIPTO_ADDRESSLINE2'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESSLINE3'
      Origin = 'AVROP_SHIPTO_ADDRESSLINE3'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AVROP_SHIPTO_ADDRESSLINE4'
      Origin = 'AVROP_SHIPTO_ADDRESSLINE4'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_PROVINCE: TStringField
      FieldName = 'AVROP_SHIPTO_PROVINCE'
      Origin = 'AVROP_SHIPTO_PROVINCE'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AVROP_SHIPTO_POSTALCODE'
      Origin = 'AVROP_SHIPTO_POSTALCODE'
      FixedChar = True
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_CITY: TStringField
      FieldName = 'AVROP_SHIPTO_CITY'
      Origin = 'AVROP_SHIPTO_CITY'
      Size = 50
    end
    object sq_GetInvoiceHeadDataAVROP_SHIPTO_COUNTRY: TStringField
      FieldName = 'AVROP_SHIPTO_COUNTRY'
      Origin = 'AVROP_SHIPTO_COUNTRY'
      Size = 30
    end
    object sq_GetInvoiceHeadDataAGENT_ADDRESS_NAME: TStringField
      FieldName = 'AGENT_ADDRESS_NAME'
      Origin = 'AGENT_ADDRESS_NAME'
      Size = 80
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE1'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE2'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE2'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE3'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE3'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE4'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE4'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_PROVINCE: TStringField
      FieldName = 'AGENT_SHIPTO_PROVINCE'
      Origin = 'AGENT_SHIPTO_PROVINCE'
      FixedChar = True
      Size = 40
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AGENT_SHIPTO_POSTALCODE'
      Origin = 'AGENT_SHIPTO_POSTALCODE'
      FixedChar = True
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_CITY: TStringField
      FieldName = 'AGENT_SHIPTO_CITY'
      Origin = 'AGENT_SHIPTO_CITY'
      Size = 50
    end
    object sq_GetInvoiceHeadDataAGENT_SHIPTO_COUNTRY: TStringField
      FieldName = 'AGENT_SHIPTO_COUNTRY'
      Origin = 'AGENT_SHIPTO_COUNTRY'
      Size = 30
    end
    object sq_GetInvoiceHeadDataVAT_ONINVOICE: TIntegerField
      FieldName = 'VAT_ONINVOICE'
      Origin = 'VAT_ONINVOICE'
    end
    object sq_GetInvoiceHeadDataSalesOrgNo: TStringField
      FieldName = 'SalesOrgNo'
      Origin = 'SalesOrgNo'
      Size = 10
    end
    object sq_GetInvoiceHeadDataOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      Required = True
    end
    object sq_GetInvoiceHeadDataTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
    end
    object sq_GetInvoiceHeadDataResponsibleSeller: TIntegerField
      FieldName = 'ResponsibleSeller'
      Origin = 'ResponsibleSeller'
    end
    object sq_GetInvoiceHeadDataDestinationText: TStringField
      FieldName = 'DestinationText'
      Origin = 'DestinationText'
      Size = 255
    end
    object sq_GetInvoiceHeadDataSpecialMoms: TIntegerField
      FieldName = 'SpecialMoms'
      Origin = 'SpecialMoms'
    end
    object sq_GetInvoiceHeadDataNoOfDaysDiscount2: TIntegerField
      FieldName = 'NoOfDaysDiscount2'
      Origin = 'NoOfDaysDiscount2'
    end
    object sq_GetInvoiceHeadDataSetDueDateBlank: TSmallintField
      FieldName = 'SetDueDateBlank'
      Origin = 'SetDueDateBlank'
    end
    object sq_GetInvoiceHeadDataFreeDelMonth: TSmallintField
      FieldName = 'FreeDelMonth'
      Origin = 'FreeDelMonth'
    end
    object sq_GetInvoiceHeadDataBillingCountryNo: TIntegerField
      FieldName = 'BillingCountryNo'
      Origin = 'BillingCountryNo'
    end
    object sq_GetInvoiceHeadDataSalesGroupNo: TIntegerField
      FieldName = 'SalesGroupNo'
      Origin = 'SalesGroupNo'
    end
    object sq_GetInvoiceHeadDataIntraStatCountryNo: TIntegerField
      FieldName = 'IntraStatCountryNo'
      Origin = 'IntraStatCountryNo'
    end
    object sq_GetInvoiceHeadDataFreightIncluded: TIntegerField
      FieldName = 'FreightIncluded'
      Origin = 'FreightIncluded'
    end
    object sq_GetInvoiceHeadDataOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
    end
    object sq_GetInvoiceHeadDataSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
  end
  object sq_GetLOData: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'CSH.ShippingPlanStatus'#9#9#9#9'AS STATUS, '#9#9'-- Integer '
      'CSH.ShippingPlanNo '#9#9#9#9'AS LO, '#9#9#9'-- Integer '
      'OH.OrderNoText'#9#9#9#9#9'AS ORDERNUMBER,'#9#9'-- CHAR 20 '
      'isNull(CSH.Reference,'#39'Non'#39')'#9#9#9'AS REFERENCE,'#9#9'-- VARCHAR 30'
      'isNull(CSH.OurReference,'#39'Non'#39')'#9#9#9'AS OURREFERENCE,'#9'-- VARCHAR 30'
      'RTRIM(US.FirstName)+'#39' '#39'+RTRIM(US.LastName)     AS SALESMAN,'
      'Bk.BookingNo'#9#9#9#9#9'AS BOOKINGNO,'
      'CSH.InvoiceAdditionAmount'#9#9#9'AS ADDITION_AMOUNT,'
      'CSH.InvoiceAdditionUnitNo'#9#9#9'AS ADDITION_UNITNO,'
      'CSH.InvoiceAdditionDescription'#9#9#9'AS ADDITION_DESC,'
      'SC.ClientName                                   AS SHIPPER,'
      'ISNULL(Cr.CarrierName,'#39'Non'#39')                    AS CARRIERNAME,'
      'isNull(Vg.ETD,000000)                           AS ETD,'
      'isNull(Vg.ETA,000000)                           AS ETA,'
      'Bk.SupplierReference                            AS TrpID,'
      
        'PU.TemplateUnitName                             AS ADDITION_PRIC' +
        'EUNIT,'
      'OH.OrderNo'
      ''
      ''
      ''
      ''
      'FROM dbo.LoadShippingPlan'#9#9'LS'
      
        #9'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON'#9'LS.ShippingPla' +
        'nNo'#9'= CSH.ShippingPlanNo'
      #9'INNER JOIN dbo.Loads'#9#9#9'LO'#9'ON '#9'LO.LoadNo'#9#9'= LS.LoadNo'
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      
        #9'INNER JOIN dbo.Users'#9' '#9#9'US'#9'ON'#9'US.UserID '#9#9'= OH.ResponsibleSelle' +
        'r'
      
        '        Left Outer Join PackUnit                PU      ON      ' +
        'PU.TemplateUnitNo       = CSH.InvoiceAdditionUnitNo'
      ''
      '       '#9'LEFT OUTER JOIN dbo.BookingInvoice'#9#9'Bk'
      ''
      ''
      
        #9'LEFT OUTER JOIN dbo.VoyageInvoice'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.V' +
        'oyageNo'
      '  AND Bk.InternalInvoiceNo = Bk.InternalInvoiceNo'
      
        #9'LEFT OUTER JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo'
      
        #9'LEFT OUTER JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      #9#9#9#9#9#9#9'ON  '#9'Bk.ShippingPlanNo '#9'= CSH.ShippingPlanNo'
      '              AND Bk.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'WHERE LS.ShippingPlanNo = :ShippingPlanNo'
      'AND LO.CustomerNo = :CustomerNo'
      'AND LO.SenderLoadStatus = 2'
      ''
      ''
      'and LO.LoadNo not in'
      '(Select LoadNo'
      'From'
      'dbo.Invoiced_Load'
      'where ShippingPlanNo = LS.ShippingPlanNo )')
    Left = 168
    Top = 120
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
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLODataSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object sq_GetLODataLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object sq_GetLODataORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
      Origin = 'ORDERNUMBER'
      Required = True
    end
    object sq_GetLODataREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object sq_GetLODataOURREFERENCE: TStringField
      FieldName = 'OURREFERENCE'
      Origin = 'OURREFERENCE'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 30
    end
    object sq_GetLODataSALESMAN: TStringField
      FieldName = 'SALESMAN'
      Origin = 'SALESMAN'
      ReadOnly = True
      Size = 31
    end
    object sq_GetLODataBOOKINGNO: TIntegerField
      FieldName = 'BOOKINGNO'
      Origin = 'BOOKINGNO'
    end
    object sq_GetLODataADDITION_AMOUNT: TFloatField
      FieldName = 'ADDITION_AMOUNT'
      Origin = 'ADDITION_AMOUNT'
    end
    object sq_GetLODataADDITION_UNITNO: TIntegerField
      FieldName = 'ADDITION_UNITNO'
      Origin = 'ADDITION_UNITNO'
    end
    object sq_GetLODataADDITION_DESC: TStringField
      FieldName = 'ADDITION_DESC'
      Origin = 'ADDITION_DESC'
      FixedChar = True
      Size = 40
    end
    object sq_GetLODataSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      Size = 80
    end
    object sq_GetLODataCARRIERNAME: TStringField
      FieldName = 'CARRIERNAME'
      Origin = 'CARRIERNAME'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 50
    end
    object sq_GetLODataETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ReadOnly = True
      Required = True
    end
    object sq_GetLODataETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ReadOnly = True
      Required = True
    end
    object sq_GetLODataTrpID: TStringField
      FieldName = 'TrpID'
      Origin = 'TrpID'
      Size = 50
    end
    object sq_GetLODataADDITION_PRICEUNIT: TStringField
      FieldName = 'ADDITION_PRICEUNIT'
      Origin = 'ADDITION_PRICEUNIT'
    end
    object sq_GetLODataOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      Required = True
    end
  end
  object sq_GetInvoiceDetailData: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'CSD.CustShipPlanDetailObjectNo,'
      'OL.OrderLineNo'#9#9#9'            AS'#9'ORDERLINENO,'
      'CSD.Reference'#9#9#9'              AS'#9'REFERENCE,'
      ''
      'OL.OrderLineDescription'#9#9'      AS'#9'PRODUCTDESCRIPTION,'
      'CSD.ProductNo'#9#9#9'              AS'#9'PRODUCTNO,'
      'CSD.LengthDescription'#9#9'        AS'#9'LENGTHDESCRIPTION,'
      'CSD.ProductLengthNo'#9#9'          AS'#9'PRODUCTLENGTHNO,'
      'OL.Price'#9#9#9'                  AS'#9'PRICE,'
      'VU.VolumeUnitName'#9#9'            AS'#9'VOLUMEUNIT,'
      'PU.TemplateUnitName'#9#9'          AS'#9'PRICEUNIT,'
      ''
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'PG.NominalThicknessMM           AS      NominalThicknessMM_PG,'
      'PG.NominalWidthMM               AS      NominalWidthMM_PG,'
      'PL.NominalLengthMM              AS      NominalLengthMM_PL,'
      'PL.ActualLengthMM               AS      ActualLengthMM_PL,'
      ''
      'OL.NominalThicknessMM,'
      'OL.NominalWidthMM,'
      'OL.NominalLengthMM,'
      ''
      'PG.NominalThicknessINCH,'
      'PG.NominalWidthINCH,'
      'LSP.ShippingPlanNo'#9#9'AS'#9'LO,'
      ''
      'M3_NOM.VOLUME_ORDERUNIT,'
      ''
      '-- M3_NOM.PRODUCTVALUE,'
      'M3_NOM.M3ACTUAL,'
      ''
      'M3_NOM.M3NOMINAL,'
      ''
      'M3_NOM.ACTUAL_LINEALMETER,'
      ''
      'M3_NOM.NOOFPIECES,'
      'M3_NOM.NOOFPKGS,'
      'OL.Reference AS OL_Reference,'
      'intNM3_NOM.intNM3,'
      'FSAL.ArticleNo,'
      'CSD.OrderNo,'
      'OL.InternalPrice'
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        '-- INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.PackageTypeNo =' +
        ' LD.PackageTypeNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON '#9'CSH.ShippingPl' +
        'anNo = CSD.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.OrderLine OL'#9#9#9'ON '#9'OL.OrderLineNo = CSD.OrderLine' +
        'No'
      #9#9#9#9#9#9'AND '#9'OL.OrderNo = CSD.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL '#9#9'ON '#9'PL.ProductLengthNo = CSD.P' +
        'roductLengthNo'
      
        'INNER JOIN dbo.UnitName VU'#9#9#9'ON '#9'VU.VolumeUnit_No = OL.VolumeUni' +
        'tNo'
      ''
      ''
      
        'INNER JOIN dbo.PackUnit PU'#9#9#9'ON '#9'PU.TemplateUnitNo = OL.PriceUni' +
        'tNo'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9#9'ON '#9'PG.ProductGroupNo = OL.Prod' +
        'uctGroupNo'
      ''
      
        'Inner Join dbo.VIS_LoadVolume M3_NOM ON M3_NOM.CustomerNo = LO.C' +
        'ustomerNo'
      'AND M3_NOM.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'AND M3_NOM.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailOb' +
        'jectNo'
      'AND M3_NOM.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      ''
      
        'Inner Join dbo.VIS_LoadIntNM3 intNM3_NOM ON intNM3_NOM.CustomerN' +
        'o = LO.CustomerNo'
      'AND intNM3_NOM.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'AND intNM3_NOM.CustShipPlanDetailObjectNo = CSD.CustShipPlanDeta' +
        'ilObjectNo'
      ''
      
        '--Left Outer Join dbo.FS_Article FSA on FSA.ArticleGroupNo = PG.' +
        'SequenceNo'
      
        'Left Outer Join dbo.FS_ArticleLink FSAL on FSAL.ProductArtNo = P' +
        'G.SequenceNo'
      ''
      ''
      'WHERE'
      'LO.CustomerNo = :CustomerNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      'AND LO.SenderLoadStatus = 2'
      ''
      ''
      ''
      'and LO.LoadNo not in'
      '(Select LoadNo'
      'From'
      'dbo.Invoiced_Load'
      'where ShippingPlanNo = LSP.ShippingPlanNo)')
    Left = 280
    Top = 120
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
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
    object sq_GetInvoiceDetailDataCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      Required = True
    end
    object sq_GetInvoiceDetailDataORDERLINENO: TIntegerField
      FieldName = 'ORDERLINENO'
      Origin = 'ORDERLINENO'
      Required = True
    end
    object sq_GetInvoiceDetailDataREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object sq_GetInvoiceDetailDataPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Origin = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object sq_GetInvoiceDetailDataPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
      Required = True
    end
    object sq_GetInvoiceDetailDataLENGTHDESCRIPTION: TStringField
      FieldName = 'LENGTHDESCRIPTION'
      Origin = 'LENGTHDESCRIPTION'
      FixedChar = True
      Size = 100
    end
    object sq_GetInvoiceDetailDataPRODUCTLENGTHNO: TIntegerField
      FieldName = 'PRODUCTLENGTHNO'
      Origin = 'PRODUCTLENGTHNO'
      Required = True
    end
    object sq_GetInvoiceDetailDataPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object sq_GetInvoiceDetailDataVOLUMEUNIT: TStringField
      FieldName = 'VOLUMEUNIT'
      Origin = 'VOLUMEUNIT'
      Required = True
      Size = 10
    end
    object sq_GetInvoiceDetailDataPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
      Origin = 'PRICEUNIT'
      Required = True
    end
    object sq_GetInvoiceDetailDataActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object sq_GetInvoiceDetailDataActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object sq_GetInvoiceDetailDataNominalThicknessMM_PG: TFloatField
      FieldName = 'NominalThicknessMM_PG'
      Origin = 'NominalThicknessMM_PG'
    end
    object sq_GetInvoiceDetailDataNominalWidthMM_PG: TFloatField
      FieldName = 'NominalWidthMM_PG'
      Origin = 'NominalWidthMM_PG'
    end
    object sq_GetInvoiceDetailDataNominalLengthMM_PL: TFloatField
      FieldName = 'NominalLengthMM_PL'
      Origin = 'NominalLengthMM_PL'
      Required = True
    end
    object sq_GetInvoiceDetailDataActualLengthMM_PL: TFloatField
      FieldName = 'ActualLengthMM_PL'
      Origin = 'ActualLengthMM_PL'
      Required = True
    end
    object sq_GetInvoiceDetailDataNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object sq_GetInvoiceDetailDataNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object sq_GetInvoiceDetailDataNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
    end
    object sq_GetInvoiceDetailDataNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object sq_GetInvoiceDetailDataNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
    object sq_GetInvoiceDetailDataLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object sq_GetInvoiceDetailDataVOLUME_ORDERUNIT: TFMTBCDField
      FieldName = 'VOLUME_ORDERUNIT'
      Origin = 'VOLUME_ORDERUNIT'
      Precision = 38
      Size = 3
    end
    object sq_GetInvoiceDetailDataM3ACTUAL: TFMTBCDField
      FieldName = 'M3ACTUAL'
      Origin = 'M3ACTUAL'
      Precision = 38
      Size = 3
    end
    object sq_GetInvoiceDetailDataM3NOMINAL: TFMTBCDField
      FieldName = 'M3NOMINAL'
      Origin = 'M3NOMINAL'
      Precision = 38
      Size = 3
    end
    object sq_GetInvoiceDetailDataACTUAL_LINEALMETER: TFMTBCDField
      FieldName = 'ACTUAL_LINEALMETER'
      Origin = 'ACTUAL_LINEALMETER'
      Precision = 38
      Size = 3
    end
    object sq_GetInvoiceDetailDataNOOFPIECES: TIntegerField
      FieldName = 'NOOFPIECES'
      Origin = 'NOOFPIECES'
    end
    object sq_GetInvoiceDetailDataNOOFPKGS: TIntegerField
      FieldName = 'NOOFPKGS'
      Origin = 'NOOFPKGS'
    end
    object sq_GetInvoiceDetailDataOL_Reference: TStringField
      FieldName = 'OL_Reference'
      Origin = 'OL_Reference'
      Size = 50
    end
    object sq_GetInvoiceDetailDataintNM3: TFloatField
      FieldName = 'intNM3'
      Origin = 'intNM3'
    end
    object sq_GetInvoiceDetailDataArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
    end
    object sq_GetInvoiceDetailDataOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      Required = True
    end
    object sq_GetInvoiceDetailDataInternalPrice: TFloatField
      FieldName = 'InternalPrice'
      Origin = 'InternalPrice'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_GetShipToAddress: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select ShippingPlanNo, AddressNo, Reference'
      'FROM'
      'ShippingPlan_ShippingAddress'
      'WHERE'
      'ShippingPlanNo = :ShippingPlanNo')
    Left = 504
    Top = 120
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetShipToAddressShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object sq_GetShipToAddressAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      Required = True
    end
    object sq_GetShipToAddressReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Required = True
      FixedChar = True
      Size = 50
    end
  end
  object sq_GetNextInvoiceNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT MAX(InvoiceNo) + 1 AS NEXT_INVNO FROM dbo.InvoiceNumber')
    Left = 96
    Top = 208
    object sq_GetNextInvoiceNoNEXT_INVNO: TIntegerField
      FieldName = 'NEXT_INVNO'
      Origin = 'NEXT_INVNO'
      ReadOnly = True
    end
  end
  object sq_GetProFormInvNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT ProformaInvoiceNo'
      'FROM dbo.ProformaInvoiceNumber'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    Left = 280
    Top = 280
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetProFormInvNoProformaInvoiceNo: TIntegerField
      FieldName = 'ProformaInvoiceNo'
      Origin = 'ProformaInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_PurchaseInvNo: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_PurchaseInvoiceInvNo'
        Fields = 'PO_InvoiceNo'
      end>
    IndexName = 'cds_PurchaseInvoiceInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceNumber_PO')
    Left = 64
    Top = 232
    object cds_PurchaseInvNoPO_InvoiceNo: TIntegerField
      FieldName = 'PO_InvoiceNo'
      Origin = 'PO_InvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PurchaseInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PurchaseInvNoUserCreated: TSmallintField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PurchaseInvNoUserModified: TSmallintField
      FieldName = 'UserModified'
      Origin = 'UserModified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PurchaseInvNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PurchaseInvNoPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object cds_InvoiceGroup: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceGroup')
    Left = 168
    Top = 232
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
      'FROM dbo.InvoiceInGroup'
      'WHERE '
      'InvoiceGroupNo = :InvoiceGroupNo')
    Left = 280
    Top = 232
    ParamData = <
      item
        Name = 'INVOICEGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvoiceInGroupInvoiceGroupNo: TIntegerField
      FieldName = 'InvoiceGroupNo'
      Origin = 'InvoiceGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvoiceInGroupInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsBookingData: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'Bk.ShippingCompanyBookingID AS BOOKING_ID,'
      'Bk.SupplierReference AS SUPP_REFERENCE,'
      ''
      'SC.ClientName'#9#9#9#9#9'AS SHIPPER,'#9#9
      'isNull(Bk.PreliminaryRequestedPeriod,'#39'Non'#39')'#9'AS READYDATE,'#9#9
      'isNull(Cr.CarrierName,'#39'Non'#39')'#9#9#9'AS VESSEL,'#9#9
      'isNull(Vg.ETD,000000)'#9#9#9#9'AS ETD,'#9#9#9
      'isNull(Vg.ETA,000000)'#9#9#9#9'AS ETA,'
      'BK.FreightCost'#9#9#9#9#9'AS FREIGHTCOST,'
      'UNBo.VolumeUnitName'#9#9#9#9'AS FREIGHT_UNIT,'
      'CUBo.CurrencyName'#9#9#9#9'AS FREIGHT_CURRENCY'
      'From'
      '       '#9'dbo.BookingInvoice'#9#9'Bk'
      
        '       '#9'LEFT OUTER JOIN dbo.UnitName'#9#9#9'UNBo'#9'ON'#9'UNBo.VolumeUnit_N' +
        'o'#9'= BK.FreightCostVolUnit'
      
        '       '#9'LEFT OUTER JOIN dbo.Currency'#9#9#9'CUBo'#9'ON'#9'CUBo.CurrencyNo'#9#9 +
        '= BK.FreightCostCurrency'
      ''
      
        '       '#9'LEFT OUTER JOIN dbo.VoyageDestination'#9'VD '#9#9'ON'#9'Bk.Booking' +
        'No'#9#9'= VD.BookingNo'
      
        '       '#9'LEFT OUTER JOIN dbo.VoyageInvoice'#9#9#9'Vg '#9'ON  '#9'Vg.VoyageNo' +
        #9#9'= Bk.BookingNo'
      '        and Vg.InternalInvoiceNo = Bk.InternalInvoiceNo'
      
        '       '#9'LEFT OUTER JOIN dbo.Client'#9#9#9'SC '#9'ON  '#9'Bk.ShippingCompany' +
        'No '#9'= SC.ClientNo'
      
        #9'LEFT OUTER JOIN dbo.Carrier            '#9'Cr '#9#9'ON  '#9'Vg.CarrierNo ' +
        '   '#9'= Cr.CarrierNo'
      ''
      'WHERE'
      'Bk.ShippingPlanNo = :ShippingPlanNo'
      'And Bk.InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 632
    Top = 192
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
    object cdsBookingDataBOOKING_ID: TStringField
      FieldName = 'BOOKING_ID'
      Origin = 'BOOKING_ID'
    end
    object cdsBookingDataSUPP_REFERENCE: TStringField
      FieldName = 'SUPP_REFERENCE'
      Origin = 'SUPP_REFERENCE'
      Size = 50
    end
    object cdsBookingDataSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      Size = 80
    end
    object cdsBookingDataREADYDATE: TStringField
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsBookingDataVESSEL: TStringField
      FieldName = 'VESSEL'
      Origin = 'VESSEL'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsBookingDataETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ReadOnly = True
      Required = True
    end
    object cdsBookingDataETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ReadOnly = True
      Required = True
    end
    object cdsBookingDataFREIGHTCOST: TFloatField
      FieldName = 'FREIGHTCOST'
      Origin = 'FREIGHTCOST'
    end
    object cdsBookingDataFREIGHT_UNIT: TStringField
      FieldName = 'FREIGHT_UNIT'
      Origin = 'FREIGHT_UNIT'
      Size = 10
    end
    object cdsBookingDataFREIGHT_CURRENCY: TStringField
      FieldName = 'FREIGHT_CURRENCY'
      Origin = 'FREIGHT_CURRENCY'
      Size = 5
    end
  end
  object cds_InvDtl_Att: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT *'
      'FROM dbo.InvoiceDetail IND'
      'WHERE  IND.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 504
    Top = 280
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_InvDtl_AttInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvDtl_AttShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvDtl_AttInvoiceDetailNo: TIntegerField
      FieldName = 'InvoiceDetailNo'
      Origin = 'InvoiceDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvDtl_AttTypeOfRow: TIntegerField
      FieldName = 'TypeOfRow'
      Origin = 'TypeOfRow'
    end
    object cds_InvDtl_AttReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 30
    end
    object cds_InvDtl_AttProductDescription: TStringField
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      FixedChar = True
      Size = 100
    end
    object cds_InvDtl_AttLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      Size = 255
    end
    object cds_InvDtl_AttPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
    object cds_InvDtl_AttVolumeUnit: TStringField
      FieldName = 'VolumeUnit'
      Origin = 'VolumeUnit'
      FixedChar = True
      Size = 10
    end
    object cds_InvDtl_AttPriceUnit: TStringField
      FieldName = 'PriceUnit'
      Origin = 'PriceUnit'
      FixedChar = True
      Size = 10
    end
    object cds_InvDtl_AttProductValue: TFloatField
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
    end
    object cds_InvDtl_AttVolume_OrderUnit: TFloatField
      FieldName = 'Volume_OrderUnit'
      Origin = 'Volume_OrderUnit'
    end
    object cds_InvDtl_AttActualNetM3: TFloatField
      FieldName = 'ActualNetM3'
      Origin = 'ActualNetM3'
    end
    object cds_InvDtl_AttNominalM3: TFloatField
      FieldName = 'NominalM3'
      Origin = 'NominalM3'
    end
    object cds_InvDtl_AttLinealMeter: TFloatField
      FieldName = 'LinealMeter'
      Origin = 'LinealMeter'
    end
    object cds_InvDtl_AttNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
      Origin = 'NoOfPieces'
    end
    object cds_InvDtl_AttLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
    end
    object cds_InvDtl_AttLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
    object cds_InvDtl_AttOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
    end
    object cds_InvDtl_AttProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_InvDtl_AttProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object cds_InvDtl_AttActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_InvDtl_AttActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_InvDtl_AttNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_InvDtl_AttNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_InvDtl_AttNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
    end
    object cds_InvDtl_AttNominalThicknessINCH: TFloatField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_InvDtl_AttNominalWidthINCH: TFloatField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
    object cds_InvDtl_AttCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_InvDtl_AttModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_InvDtl_AttDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_InvDtl_AttCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
    end
    object cds_InvDtl_AttNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
    end
    object cds_InvDtl_AttOL_Reference: TStringField
      FieldName = 'OL_Reference'
      Origin = 'OL_Reference'
      Size = 50
    end
    object cds_InvDtl_AttFreightCostCurr: TBCDField
      FieldName = 'FreightCostCurr'
      Origin = 'FreightCostCurr'
      Precision = 18
      Size = 2
    end
    object cds_InvDtl_AttProductValueWOFreight: TFloatField
      FieldName = 'ProductValueWOFreight'
      Origin = 'ProductValueWOFreight'
    end
    object cds_InvDtl_AttVatValue: TFloatField
      FieldName = 'VatValue'
      Origin = 'VatValue'
    end
    object cds_InvDtl_AttintNM3: TFloatField
      FieldName = 'intNM3'
      Origin = 'intNM3'
    end
    object cds_InvDtl_AttArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
    end
    object cds_InvDtl_AttAttSekPerAM3: TBCDField
      FieldName = 'AttSekPerAM3'
      Origin = 'AttSekPerAM3'
      Precision = 18
      Size = 2
    end
  end
  object cds_Att_Ext_ServicesII: TFDQuery
    AfterInsert = cds_Att_Ext_ServicesIIAfterInsert
    BeforeDelete = cds_Att_Ext_ServicesIIBeforeDelete
    AfterScroll = cds_Att_Ext_ServicesIIAfterScroll
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'Att_Ext_Services'
    SQL.Strings = (
      'Select AES.InternalInvoiceNo,'
      'AES.ShippingPlanNo,'
      'AES.SequensNo,'
      'AES.Description,'
      'AES.Supplier_InvoiceNo,'
      'AES.Supplier_InvoiceDate,'
      'AES.Amount AS AmountAttested,'
      'AES.CurrencyNo,'
      'AES.SupplierNo,'
      'AES.Note,'
      'AES.CreatedDate,'
      'AES.CreatedUser,'
      'AES.ModifiedDate,'
      'AES.ModifiedUser,'
      'AES.Quick_InvoiceNo,'
      'AES.Amount,'
      'AES.[Active]'
      'FROM dbo.Att_Ext_Services AES'
      
        '--Left Outer Join dbo.Att_Ext_LO AEL on AEL.InternalInvoiceNo = ' +
        'AES.InternalInvoiceNo'
      '--AND AES.SequensNo = AEL.SequensNo'
      'WHERE AES.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      '')
    Left = 504
    Top = 176
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
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
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Att_Ext_ServicesIISequensNo: TIntegerField
      FieldName = 'SequensNo'
      Origin = 'SequensNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Att_Ext_ServicesIIDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_Att_Ext_ServicesIISupplier_InvoiceNo: TStringField
      FieldName = 'Supplier_InvoiceNo'
      Origin = 'Supplier_InvoiceNo'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_Att_Ext_ServicesIISupplier_InvoiceDate: TSQLTimeStampField
      FieldName = 'Supplier_InvoiceDate'
      Origin = 'Supplier_InvoiceDate'
      ProviderFlags = [pfInUpdate]
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
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_Att_Ext_ServicesIICreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIModifiedDate: TSQLTimeStampField
      FieldName = 'ModifiedDate'
      Origin = 'ModifiedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIQuick_InvoiceNo: TIntegerField
      FieldName = 'Quick_InvoiceNo'
      Origin = 'Quick_InvoiceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Att_Ext_ServicesIIAmountAttested: TFloatField
      FieldName = 'AmountAttested'
      Origin = 'AmountAttested'
      ProviderFlags = []
      DisplayFormat = '#,###,###.00'
    end
    object cds_Att_Ext_ServicesIIAmount: TFloatField
      FieldName = 'Amount'
      Origin = 'Amount'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.00'
    end
    object cds_Att_Ext_ServicesIIActive: TIntegerField
      FieldName = 'Active'
      Origin = 'Active'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsInvoiceHead_II: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsInvoiceHead_II_Index01'
        Fields = 'InternalInvoiceNo'
      end>
    IndexName = 'cdsInvoiceHead_II_Index01'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM InvoiceHeader IH'
      'WHERE'
      'IH.InvoiceType = :InvoiceType'
      'AND IH.InvoiceDate >= '#39'01/01/2005'#39
      'AND '
      ''
      
        '((IH.InvoiceType = 0) OR (IH.InvoiceType = 1) OR (IH.InvoiceType' +
        ' = 2) OR (IH.InvoiceType = 3)  OR (IH.InvoiceType = 4)'
      '  OR (IH.InvoiceType = 5))'
      'AND IH.Debit_Credit = 0'
      '-- AND ((IH.QuickInvoice <> 1) OR (IH.QuickInvoice is null))'
      'AND ( '
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM Invoice' +
        'Number))'
      'OR '
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM Invoice' +
        'Number_PO))'
      ''
      'OR '
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM Proform' +
        'aInvoiceNumber))'
      ''
      'OR'
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM Invoice' +
        'No_USA))'
      'OR'
      
        '(IH.InternalInvoiceNo'#9'IN (Select InternalInvoiceNo'#9' FROM InvNo_F' +
        'W)) )'
      ' '
      '')
    Left = 728
    Top = 144
    ParamData = <
      item
        Name = 'INVOICETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoiceHead_IIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoiceHead_IIInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
    end
    object cdsInvoiceHead_IIInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
      Origin = 'InvoiceDate'
    end
    object cdsInvoiceHead_IISupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cdsInvoiceHead_IICustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cdsInvoiceHead_IIAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object cdsInvoiceHead_IIAgentCommission: TFloatField
      FieldName = 'AgentCommission'
      Origin = 'AgentCommission'
      DisplayFormat = '#,###.00'
    end
    object cdsInvoiceHead_IISendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
      Origin = 'SendInvoiceToAgent'
    end
    object cdsInvoiceHead_IIPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
    end
    object cdsInvoiceHead_IICommissionPaidByCustomer: TIntegerField
      FieldName = 'CommissionPaidByCustomer'
      Origin = 'CommissionPaidByCustomer'
    end
    object cdsInvoiceHead_IIDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
    end
    object cdsInvoiceHead_IIDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
    end
    object cdsInvoiceHead_IIStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cdsInvoiceHead_IINote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cdsInvoiceHead_IIInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      BlobType = ftMemo
    end
    object cdsInvoiceHead_IIPaymentText: TMemoField
      FieldName = 'PaymentText'
      Origin = 'PaymentText'
      BlobType = ftMemo
    end
    object cdsInvoiceHead_IICurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object cdsInvoiceHead_IIIncome_Account: TStringField
      FieldName = 'Income_Account'
      Origin = 'Income_Account'
      Size = 6
    end
    object cdsInvoiceHead_IICustomerRecivablesAccount: TStringField
      FieldName = 'CustomerRecivablesAccount'
      Origin = 'CustomerRecivablesAccount'
      Size = 6
    end
    object cdsInvoiceHead_IIVAT_OnInvoice: TSmallintField
      FieldName = 'VAT_OnInvoice'
      Origin = 'VAT_OnInvoice'
    end
    object cdsInvoiceHead_IIClientBillingAddressNo: TIntegerField
      FieldName = 'ClientBillingAddressNo'
      Origin = 'ClientBillingAddressNo'
    end
    object cdsInvoiceHead_IIAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHead_IIAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object cdsInvoiceHead_IICityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
    object cdsInvoiceHead_IICountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      Size = 30
    end
    object cdsInvoiceHead_IICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsInvoiceHead_IIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsInvoiceHead_IIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsInvoiceHead_IIAgentName: TStringField
      FieldName = 'AgentName'
      Origin = 'AgentName'
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHead_IICustomerName: TStringField
      FieldName = 'CustomerName'
      Origin = 'CustomerName'
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHead_IIDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Origin = 'DeliveryTerm'
      Size = 21
    end
    object cdsInvoiceHead_IIPaymentDescription: TStringField
      FieldName = 'PaymentDescription'
      Origin = 'PaymentDescription'
      FixedChar = True
      Size = 100
    end
    object cdsInvoiceHead_IILanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object cdsInvoiceHead_IIDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      FixedChar = True
      Size = 50
    end
    object cdsInvoiceHead_IIFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
    object cdsInvoiceHead_IIFreightInCommission: TIntegerField
      FieldName = 'FreightInCommission'
      Origin = 'FreightInCommission'
    end
    object cdsInvoiceHead_IIDiscount1: TFloatField
      FieldName = 'Discount1'
      Origin = 'Discount1'
      DisplayFormat = '#,###.00'
    end
    object cdsInvoiceHead_IICurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      FixedChar = True
      Size = 5
    end
    object cdsInvoiceHead_IIST_AddressName: TStringField
      FieldName = 'ST_AddressName'
      Origin = 'ST_AddressName'
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHead_IIST_AddressLine1: TStringField
      FieldName = 'ST_AddressLine1'
      Origin = 'ST_AddressLine1'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIST_AddressLine2: TStringField
      FieldName = 'ST_AddressLine2'
      Origin = 'ST_AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIST_AddressLine3: TStringField
      FieldName = 'ST_AddressLine3'
      Origin = 'ST_AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIST_AddressLine4: TStringField
      FieldName = 'ST_AddressLine4'
      Origin = 'ST_AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIST_StateOrProvince: TStringField
      FieldName = 'ST_StateOrProvince'
      Origin = 'ST_StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIST_PostalCode: TStringField
      FieldName = 'ST_PostalCode'
      Origin = 'ST_PostalCode'
      FixedChar = True
    end
    object cdsInvoiceHead_IIST_CityName: TStringField
      FieldName = 'ST_CityName'
      Origin = 'ST_CityName'
      FixedChar = True
      Size = 50
    end
    object cdsInvoiceHead_IIST_CountryName: TStringField
      FieldName = 'ST_CountryName'
      Origin = 'ST_CountryName'
      FixedChar = True
      Size = 30
    end
    object cdsInvoiceHead_IIAGENT_ADDRESS_NAME: TStringField
      FieldName = 'AGENT_ADDRESS_NAME'
      Origin = 'AGENT_ADDRESS_NAME'
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE1'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE1'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE2'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE2'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE3'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE3'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'AGENT_SHIPTO_ADDRESSLINE4'
      Origin = 'AGENT_SHIPTO_ADDRESSLINE4'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_PROVINCE: TStringField
      FieldName = 'AGENT_SHIPTO_PROVINCE'
      Origin = 'AGENT_SHIPTO_PROVINCE'
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_POSTALCODE: TStringField
      FieldName = 'AGENT_SHIPTO_POSTALCODE'
      Origin = 'AGENT_SHIPTO_POSTALCODE'
      FixedChar = True
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_CITY: TStringField
      FieldName = 'AGENT_SHIPTO_CITY'
      Origin = 'AGENT_SHIPTO_CITY'
      FixedChar = True
      Size = 50
    end
    object cdsInvoiceHead_IIAGENT_SHIPTO_COUNTRY: TStringField
      FieldName = 'AGENT_SHIPTO_COUNTRY'
      Origin = 'AGENT_SHIPTO_COUNTRY'
      FixedChar = True
      Size = 30
    end
    object cdsInvoiceHead_IISearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceHead_IITot_Inv_Inc_Freight_Extras: TFloatField
      FieldName = 'Tot_Inv_Inc_Freight_Extras'
      Origin = 'Tot_Inv_Inc_Freight_Extras'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IISUM_FreigthCost: TFloatField
      FieldName = 'SUM_FreigthCost'
      Origin = 'SUM_FreigthCost'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IITotal_Product_Value_No_Freight: TFloatField
      FieldName = 'Total_Product_Value_No_Freight'
      Origin = 'Total_Product_Value_No_Freight'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IIDiscount: TFloatField
      FieldName = 'Discount'
      Origin = 'Discount'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IICommission: TFloatField
      FieldName = 'Commission'
      Origin = 'Commission'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IICommission_and_Discount: TFloatField
      FieldName = 'Commission_and_Discount'
      Origin = 'Commission_and_Discount'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IIInv_Value_Deduct_Com_Dis: TFloatField
      FieldName = 'Inv_Value_Deduct_Com_Dis'
      Origin = 'Inv_Value_Deduct_Com_Dis'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IIVAT_Value: TFloatField
      FieldName = 'VAT_Value'
      Origin = 'VAT_Value'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IIInv_Value_To_Be_Paid: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid'
      Origin = 'Inv_Value_To_Be_Paid'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IIDebit_Credit: TIntegerField
      FieldName = 'Debit_Credit'
      Origin = 'Debit_Credit'
    end
    object cdsInvoiceHead_IIInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
      Origin = 'Inv_Value_After_Deduct_DIS_COMM'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IIVAT: TStringField
      FieldName = 'VAT'
      Origin = 'VAT'
      FixedChar = True
    end
    object cdsInvoiceHead_IIInv_Value_To_Be_Paid_2: TFloatField
      FieldName = 'Inv_Value_To_Be_Paid_2'
      Origin = 'Inv_Value_To_Be_Paid_2'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceHead_IIQuickInvoice: TIntegerField
      FieldName = 'QuickInvoice'
      Origin = 'QuickInvoice'
    end
    object cdsInvoiceHead_IIStickyNote: TStringField
      FieldName = 'StickyNote'
      Origin = 'StickyNote'
      Size = 255
    end
    object cdsInvoiceHead_IISalesOrgNo: TStringField
      FieldName = 'SalesOrgNo'
      Origin = 'SalesOrgNo'
      Size = 10
    end
    object cdsInvoiceHead_IIOCEANFREIGHTSEKAM3: TBCDField
      FieldName = 'OCEANFREIGHTSEKAM3'
      Origin = 'OCEANFREIGHTSEKAM3'
      DisplayFormat = '#,###,###,###.00'
      Precision = 18
      Size = 2
    end
    object cdsInvoiceHead_IITotalAM3: TBCDField
      FieldName = 'TotalAM3'
      Origin = 'TotalAM3'
      DisplayFormat = '#,###,###,###.00'
      Precision = 18
      Size = 3
    end
    object cdsInvoiceHead_IITotalVolumeUnit: TBCDField
      FieldName = 'TotalVolumeUnit'
      Origin = 'TotalVolumeUnit'
      DisplayFormat = '#,###,###,###.00'
      Precision = 18
      Size = 3
    end
    object cdsInvoiceHead_IITrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
    end
    object cdsInvoiceHead_IIResponsibleSeller: TIntegerField
      FieldName = 'ResponsibleSeller'
      Origin = 'ResponsibleSeller'
    end
    object cdsInvoiceHead_IIDestinationText: TStringField
      FieldName = 'DestinationText'
      Origin = 'DestinationText'
      Size = 255
    end
    object cdsInvoiceHead_IIIncludeFreightCostInPrice: TIntegerField
      FieldName = 'IncludeFreightCostInPrice'
      Origin = 'IncludeFreightCostInPrice'
    end
    object cdsInvoiceHead_IISpecialMoms: TIntegerField
      FieldName = 'SpecialMoms'
      Origin = 'SpecialMoms'
    end
    object cdsInvoiceHead_IIAccountType: TIntegerField
      FieldName = 'AccountType'
      Origin = 'AccountType'
    end
    object cdsInvoiceHead_IIInvoiced: TIntegerField
      FieldName = 'Invoiced'
      Origin = 'Invoiced'
    end
  end
  object cds_PIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS PIPNAME'
      'FROM'
      'dbo.PHYSICALINVENTORYPOINT PH'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND PH.SequenceNo = 1'
      'Order By CY.CITYNAME')
    Left = 632
    Top = 288
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PIPPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
    object cds_PIPPIPNAME: TStringField
      FieldName = 'PIPNAME'
      Origin = 'PIPNAME'
      Size = 50
    end
  end
  object cds_LoadPackagesII: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_LoadPackagesIndex1'
        Fields = 'PACKAGENO;SupplierCode'
      end
      item
        Active = True
        Name = 'cds_LoadPackagesIndex2'
        Fields = 'LoadNo;LoadDetailNo'
      end>
    IndexName = 'cds_LoadPackagesIndex1'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'LoadDetail'
    SQL.Strings = (
      'SELECT distinct'
      '           LD.LoadNo, '
      '           LD.ShippingPlanNo,'
      '           PR.ProductDisplayName     AS PRODUCT,'
      '           LD.LoadDetailNo,'
      '           LD.PackageNo'#9#9'            AS PACKAGENO,'
      
        '           1                          AS NoOfPackages'#9'          ' +
        ','
      '           LD.PackageTypeNo'#9'          AS PACKAGETYPENO,'
      '           LD.SupplierCode'#9'          ,'
      '           LD.PackageOK'#9#9'            ,'
      '           LD.ProblemPackageLog'#9'      ,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      ''
      '           PT.Totalm3Actual           AS  M3_NET,'
      '           PT.TotalNoOfPieces         AS  PCS,'
      '      '#9'   PT.Totalm3Nominal'#9#9'      AS M3_NOM,'
      '           PT.TotalMFBMNominal        AS      MFBM,'
      '      '#9'   PT.TotalSQMofActualWidth'#9'  AS KVM,'
      '      '#9'   PT.TotalLinealMeterActualLength AS LOPM,'
      '           PR.ProductNo,'
      '           LD.DefaultCustShipObjectNo,'
      '           PTL.PcsPerLength           AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS NoOfL' +
        'engths,'
      ''
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS Produ' +
        'ctLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS ALMM,'
      ''
      ''
      '          PG.ActualThicknessMM,'
      '          PG.ActualWidthMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                     AS MainG' +
        'radeNo,'
      '          LD.OverrideMatch,'
      '          LD.LIPNo,'
      '          0 AS Pkg_State,'
      '          0 AS Pkg_Function,'
      '          0 AS Changed,'
      '          LD.Defsspno,'
      #9'LD.OverrideRL'
      ''
      ''
      'FROM dbo.IH_SpecLoad INL'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = INL.SpecLoadNo'
      
        ' INNER JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo    = LD' +
        '.PackageTypeNo'
      
        ' INNER JOIN dbo.Product       Pr  ON    Pr.ProductNo        = Pt' +
        '.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo   = Pr' +
        '.ProductGroupNo'
      
        ' INNER JOIN dbo.Grade         G   ON    G.GradeNo           = Pr' +
        '.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      
        ' Inner Join dbo.PackageTypeLengths PTL  ON PTL.PackageTypeNo  = ' +
        'PT.PackageTypeNo'
      ''
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'ORDER BY   LD.LoadDetailNo DESC'
      '')
    Left = 816
    Top = 264
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadPackagesIILoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIILoadDetailNo: TIntegerField
      DisplayLabel = 'Lastradnr'
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object cds_LoadPackagesIIPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesIINoOfPackages: TIntegerField
      DisplayLabel = 'Antal paket'
      FieldName = 'NoOfPackages'
      Origin = 'NoOfPackages'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
      ProviderFlags = []
    end
    object cds_LoadPackagesIISupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object cds_LoadPackagesIIPackageOK: TIntegerField
      FieldName = 'PackageOK'
      Origin = 'PackageOK'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      Origin = 'ProblemPackageLog'
      ProviderFlags = []
      Size = 50
    end
    object cds_LoadPackagesIICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIIPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = []
      DisplayFormat = 'Styck'
    end
    object cds_LoadPackagesIIM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIIMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIIKVM: TFloatField
      DisplayLabel = 'AM2'
      FieldName = 'KVM'
      Origin = 'KVM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIILOPM: TFloatField
      DisplayLabel = 'AM1'
      FieldName = 'LOPM'
      Origin = 'LOPM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesIIProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object cds_LoadPackagesIINoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      Origin = 'NoOfLengths'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesIISurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIISpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
      ProviderFlags = []
    end
    object cds_LoadPackagesIILIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesIIPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      Origin = 'Pkg_State'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIPkg_Function: TIntegerField
      FieldName = 'Pkg_Function'
      Origin = 'Pkg_Function'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIChanged: TIntegerField
      FieldName = 'Changed'
      Origin = 'Changed'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIDefsspno: TIntegerField
      FieldName = 'Defsspno'
      Origin = 'Defsspno'
      ProviderFlags = []
    end
    object cds_LoadPackagesIIOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_GetPkgType_Invoice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      '-- DROP TABLE #Vols'
      ''
      'CREATE TABLE #Vols ('
      #9'[NoOfPieces] [int] NULL,'
      #9'[m3Actual] [decimal](18, 3) NULL,'
      #9'[m3Nominal] [decimal](18, 3) NULL,'
      #9'[MFBMNominal] [decimal](18, 3) NULL,'
      #9'[SQMofActualWidth] [decimal](18, 3) NULL,'
      #9'[SQMofCoveringWidth] [decimal](18, 3) NULL,'
      #9'[LinealMeterActualLength] [decimal](18, 3) NULL,'
      #9'[m3ActualSizeNomLength] [decimal](18, 3) NULL,'
      #9'[m3NomSizeActualLength] [decimal](18, 3) NULL,'
      #9'[LinealMeterNominalLength] [decimal](18, 3) NULL,'
      #9'[OrderVolume] [decimal](18, 3) NULL,'
      #9'[PriceVolume] [decimal](18, 3) NULL)'
      ''
      ''
      'Insert into #Vols'
      ''
      'SELECT'
      'PTD.NoOfPieces ,'
      ''
      '-- m3 actual'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) '
      '-- Round Stolp'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces'
      
        '-- SET @m3Act = PI() * SQUARE (@ActThick/100/2) * @ActWidth / 10' +
        '0 * @NoOfPieces'
      'As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      ''
      'END AS M3Actual,'
      
        '-- PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.ActualWidthM' +
        'M/100) * PTD.NoOfPieces,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE WHEN PG.SequenceNo = 0 THEN '
      'CASE'
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END'
      'WHEN PG.SequenceNo = 1 THEN '
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      'END AS M3NOMINAL,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) '
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
      '--PTD.CreatedUser,'
      '--PTD.ModifiedUser,'
      '--PTD.DateCreated,'
      ''
      '--**********************************'
      '--**********************************'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'CASE '
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
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
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
      'CASE '
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
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
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
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
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
      ''
      ''
      'END AS OrderVolume,'
      ''
      ''
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN '
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END--'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      '-- M3NOMINAL *****************************************'
      ''
      'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN '
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      ''
      'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN '
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
      'CASE WHEN PG.SequenceNo = 0 THEN '
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
      'CASE '
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
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      
        'WHEN PG.SequenceNo = 1 THEN ROUND(CAST((PG.ActualWidthMM / 100 *' +
        ' PTD.NoOfPieces)   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      'END-- NM1'
      ''
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN '
      
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
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
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
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ' '
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
      'LO.SupplierNo = :SupplierNo '
      'AND LO.SenderLoadStatus = 2'
      'AND LO.CustomerNo = :CustomerNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      ''
      'AND NOT EXISTS'
      '   (SELECT *'
      '   FROM dbo.Invoiced_Load'
      '   WHERE LoadNo = LSP.LoadNo'
      'AND ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      ''
      'Select'
      #9'Sum([NoOfPieces]) AS Pcs,'
      #9'Sum([m3Actual]) AS AM3,'
      #9'Sum([m3Nominal]) AS NM3,'
      #9'Sum([MFBMNominal]) AS MFBM,'
      #9'Sum([SQMofActualWidth]) AS AM2AW,'
      #9'Sum([SQMofCoveringWidth]) AS AM2CW,'
      #9'Sum([LinealMeterActualLength]) AS AM1,'
      #9'Sum([m3ActualSizeNomLength]) AS AdNl,'
      #9'Sum([m3NomSizeActualLength]) AS NdAl,'
      #9'Sum([LinealMeterNominalLength]) AS NM1,'
      #9'Sum([OrderVolume]) AS OrderVol,'
      #9'Sum([PriceVolume]) AS PriceVol'
      'From #Vols'
      ''
      'DROP TABLE #Vols')
    Left = 912
    Top = 568
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
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgType_InvoicePcs: TIntegerField
      FieldName = 'Pcs'
      Origin = 'Pcs'
      ReadOnly = True
    end
    object sq_GetPkgType_InvoiceAM3: TFMTBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoiceNM3: TFMTBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoiceMFBM: TFMTBCDField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoiceAM2AW: TFMTBCDField
      FieldName = 'AM2AW'
      Origin = 'AM2AW'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoiceAM2CW: TFMTBCDField
      FieldName = 'AM2CW'
      Origin = 'AM2CW'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoiceAM1: TFMTBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoiceAdNl: TFMTBCDField
      FieldName = 'AdNl'
      Origin = 'AdNl'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoiceNdAl: TFMTBCDField
      FieldName = 'NdAl'
      Origin = 'NdAl'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoiceNM1: TFMTBCDField
      FieldName = 'NM1'
      Origin = 'NM1'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoiceOrderVol: TFMTBCDField
      FieldName = 'OrderVol'
      Origin = 'OrderVol'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object sq_GetPkgType_InvoicePriceVol: TFMTBCDField
      FieldName = 'PriceVol'
      Origin = 'PriceVol'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
  end
  object sq_PkgType_Invoice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
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
      ' As decimal(10,3)),3) '
      '-- Round Stolp'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces'
      
        '-- SET @m3Act = PI() * SQUARE (@ActThick/100/2) * @ActWidth / 10' +
        '0 * @NoOfPieces'
      'As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      ''
      'END AS M3Actual,'
      
        '-- PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.ActualWidthM' +
        'M/100) * PTD.NoOfPieces,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE WHEN PG.SequenceNo = 0 THEN '
      'CASE'
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END'
      'WHEN PG.SequenceNo = 1 THEN '
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      'END AS M3NOMINAL,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) '
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
      'CASE '
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
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
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
      'CASE '
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
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
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
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
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
      ''
      'END AS OrderVolume,'
      ''
      ''
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN '
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END--'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      '-- M3NOMINAL *****************************************'
      ''
      'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN '
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      ''
      'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN '
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
      'CASE WHEN PG.SequenceNo = 0 THEN '
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
      'CASE '
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
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      
        'WHEN PG.SequenceNo = 1 THEN ROUND(CAST((PG.ActualWidthMM / 100 *' +
        ' PTD.NoOfPieces)   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      'END-- NM1'
      ''
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN '
      
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
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
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
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ' '
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
      
        'LO.SupplierNo = :SupplierNo AND LO.SenderLoadStatus = 2 AND LO.C' +
        'ustomerNo = :CustomerNo AND LSP.ShippingPlanNo = :ShippingPlanNo'
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
    Left = 912
    Top = 624
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
  object cdsInvoice_Load: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT * FROM DBO.Invoiced_Load')
    Left = 168
    Top = 328
    object cdsInvoice_LoadInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoice_LoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoice_LoadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoice_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsInvoice_LoadCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsInvoice_LoadModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
  end
  object sq_LONoInInvoice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct LD.ShippingPlanNo'
      'FROM dbo.Invoiced_Load INL'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = INL.LoadNo'
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo'
      'ORDER BY   LD.ShippingPlanNo')
    Left = 64
    Top = 384
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LONoInInvoiceShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsInvoice_Credited: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.Invoice_Credited'
      'Where InternalInvoiceNo = :InternalInvoiceNo')
    Left = 64
    Top = 328
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoice_CreditedInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoice_CreditedNewInternalInvoiceNo: TIntegerField
      FieldName = 'NewInternalInvoiceNo'
      Origin = 'NewInternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoice_CreditedDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoice_CreditedCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoice_CreditedModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_LIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT  Distinct LIP.LogicalInventoryPointNo AS LIPNo, LIP.Logic' +
        'alInventoryName AS LIPName,'
      'LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM dbo.LOGICALINVENTORYPOINT LIP'
      'WHERE SequenceNo = 1'
      'Order By LIP.LogicalInventoryName')
    Left = 632
    Top = 384
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIPLIPName: TStringField
      FieldName = 'LIPName'
      Origin = 'LIPName'
      Size = 50
    end
    object cds_LIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object cds_CopyLSP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT LSP.*'
      'FROM dbo.LoadShippingPlan LSP'
      'WHERE'
      'LSP.LoadNo = :LoadNo')
    Left = 144
    Top = 576
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CopyLSPLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CopyLSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CopyLSPConfirmedByReciever: TIntegerField
      FieldName = 'ConfirmedByReciever'
      Origin = 'ConfirmedByReciever'
    end
    object cds_CopyLSPConfirmedBySupplier: TIntegerField
      FieldName = 'ConfirmedBySupplier'
      Origin = 'ConfirmedBySupplier'
    end
    object cds_CopyLSPCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_CopyLSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_CopyLSPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CopyLSPInvoiced: TIntegerField
      FieldName = 'Invoiced'
      Origin = 'Invoiced'
    end
    object cds_CopyLSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_CopyLSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
  end
  object cds_CopyLD: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT LD.*'
      ''
      'FROM dbo.LoadDetail LD'
      'WHERE      LD.LoadNo = :LoadNo')
    Left = 144
    Top = 624
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CopyLDLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CopyLDLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CopyLDShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cds_CopyLDPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      Required = True
    end
    object cds_CopyLDNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      Origin = 'NoOfPackages'
    end
    object cds_CopyLDPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_CopyLDSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_CopyLDPackageOK: TIntegerField
      FieldName = 'PackageOK'
      Origin = 'PackageOK'
    end
    object cds_CopyLDProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      Origin = 'ProblemPackageLog'
      Size = 50
    end
    object cds_CopyLDCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_CopyLDModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_CopyLDDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CopyLDDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
    end
    object cds_CopyLDOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
    end
    object cds_CopyLDLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_CopyLDDefsspno: TIntegerField
      FieldName = 'Defsspno'
      Origin = 'Defsspno'
    end
    object cds_CopyLDOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
    end
    object cds_CopyLDOldPackageTypeNo: TIntegerField
      FieldName = 'OldPackageTypeNo'
      Origin = 'OldPackageTypeNo'
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
    Left = 920
    Top = 336
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object cds_LoadPackages: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_LoadPackagesPackageNoIndex'
        Fields = 'PACKAGENO'
      end>
    IndexName = 'cds_LoadPackagesPackageNoIndex'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'LoadDetail'
    SQL.Strings = (
      'SELECT distinct'
      '           LD.LoadNo, '
      '           LD.ShippingPlanNo,'
      '           PR.ProductDisplayName     AS PRODUCT,'
      '           LD.LoadDetailNo,'
      '           LD.PackageNo'#9#9'            AS PACKAGENO,'
      '           LD.NoOfPackages'#9'          ,'
      '           LD.PackageTypeNo'#9'          AS PACKAGETYPENO,'
      '           LD.SupplierCode'#9'          ,'
      '           LD.PackageOK'#9#9'            ,'
      '           LD.ProblemPackageLog'#9'      ,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      ''
      '           PT.Totalm3Actual           AS  M3_NET,'
      '           PT.TotalNoOfPieces         AS  PCS,'
      '      '#9'   PT.Totalm3Nominal'#9#9'      AS M3_NOM,'
      '           PT.TotalMFBMNominal        AS      MFBM,'
      '      '#9'   PT.TotalSQMofActualWidth'#9'  AS KVM,'
      '      '#9'   PT.TotalLinealMeterActualLength AS LOPM,'
      '           PR.ProductNo,'
      '           LD.DefaultCustShipObjectNo,'
      '           PTL.PcsPerLength           AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS NoOfL' +
        'engths,'
      ''
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS Produ' +
        'ctLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS ALMM,'
      ''
      ''
      '          PG.ActualThicknessMM,'
      '          PG.ActualWidthMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                     AS MainG' +
        'radeNo,'
      '          LD.OverrideMatch,'
      '          LD.LIPNo,'
      '          0 AS Pkg_State,'
      '          0 AS Pkg_Function,'
      '          0 AS Changed,'
      '          LD.Defsspno,'
      #9'LD.OverrideRL'
      ''
      ''
      'FROM dbo.Invoiced_Load INL'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = INL.LoadNo'
      
        ' INNER JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo    = LD' +
        '.PackageTypeNo'
      
        ' INNER JOIN dbo.Product       Pr  ON    Pr.ProductNo        = Pt' +
        '.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo   = Pr' +
        '.ProductGroupNo'
      
        ' INNER JOIN dbo.Grade         G   ON    G.GradeNo           = Pr' +
        '.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      
        ' Inner Join dbo.PackageTypeLengths PTL  ON PTL.PackageTypeNo  = ' +
        'PT.PackageTypeNo'
      ''
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo '
      ''
      'ORDER BY   LD.LoadDetailNo DESC'
      '')
    Left = 920
    Top = 232
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadPackagesLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesLoadDetailNo: TIntegerField
      DisplayLabel = 'Lastradnr'
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadPackagesShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      ProviderFlags = []
      Size = 100
    end
    object cds_LoadPackagesPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesNoOfPackages: TIntegerField
      DisplayLabel = 'Antal paket'
      FieldName = 'NoOfPackages'
      Origin = 'NoOfPackages'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cds_LoadPackagesPackageOK: TIntegerField
      FieldName = 'PackageOK'
      Origin = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesProblemPackageLog: TStringField
      DisplayLabel = 'Logg'
      FieldName = 'ProblemPackageLog'
      Origin = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LoadPackagesCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = []
    end
    object cds_LoadPackagesM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesKVM: TFloatField
      DisplayLabel = 'AM2'
      FieldName = 'KVM'
      Origin = 'KVM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesLOPM: TFloatField
      DisplayLabel = 'AM1'
      FieldName = 'LOPM'
      Origin = 'LOPM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      ProviderFlags = []
      Size = 255
    end
    object cds_LoadPackagesNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      Origin = 'NoOfLengths'
      ProviderFlags = []
    end
    object cds_LoadPackagesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesOverrideMatch: TIntegerField
      DisplayLabel = 'Override'
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesPkg_State: TIntegerField
      FieldName = 'Pkg_State'
      Origin = 'Pkg_State'
      ProviderFlags = []
    end
    object cds_LoadPackagesPkg_Function: TIntegerField
      FieldName = 'Pkg_Function'
      Origin = 'Pkg_Function'
      ProviderFlags = []
    end
    object cds_LoadPackagesChanged: TIntegerField
      FieldName = 'Changed'
      Origin = 'Changed'
      ProviderFlags = []
    end
    object cds_LoadPackagesDefsspno: TIntegerField
      FieldName = 'Defsspno'
      Origin = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesOverrideRL: TIntegerField
      DisplayLabel = 'Till'#229't alla l'#228'ngder'
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_NoOfInvoices: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT distinct INO.InvoiceNo AS Fakturnr, IL.ShippingPlanNo AS ' +
        'LO, IH.InvoiceDate AS Fakturadatum, IL.InternalInvoiceNo'
      'FROM'
      'dbo.InvoiceLO IL'
      
        'Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.Int' +
        'ernalInvoiceNo'
      
        'Inner Join dbo.InvoiceNumber INo ON INo.InternalInvoiceNo = IH.I' +
        'nternalInvoiceNo'
      'WHERE IL.ShippingPlanNo = 54549')
    Left = 1112
    Top = 744
    object cds_NoOfInvoicesFakturnr: TIntegerField
      FieldName = 'Fakturnr'
      Origin = 'Fakturnr'
      Required = True
    end
    object cds_NoOfInvoicesLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object cds_NoOfInvoicesFakturadatum: TSQLTimeStampField
      FieldName = 'Fakturadatum'
      Origin = 'Fakturadatum'
    end
    object cds_NoOfInvoicesInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_PkgType_Inv: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
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
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE'
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      'AS M3NOMINAL,'
      ''
      
        'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) AS M' +
        'FBMNominal,'
      
        'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)' +
        ' AS SQMofActualWidth,'
      'PTD.SQMofCoveringWidth,'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3) AS LinealMeterActualLength,'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
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
        '00)) As decimal(10,3)),3) '
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END AS m3ActualSizeNomLength,'
      ''
      
        '-- m3NomSizeActualLength ***************************************' +
        '******'
      'ROUND(CAST('
      '(PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) AS m3NomSizeActualLength,'
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE '
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
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END AS NM1,'
      ''
      '-- OrderVolume *************************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN VU.VolumeUnitName = '#39'm3 nDxnL'#39' THEN'
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
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      ''
      ''
      
        'WHEN VU.VolumeUnitName = '#39'kvm aB'#39' THEN ROUND(CAST((       PTD.SQ' +
        'MofActualWidth )   As decimal(10,3)),3)'
      
        'WHEN VU.VolumeUnitName = '#39'Lopm a'#39' THEN ROUND(CAST((       PTD.Li' +
        'nealMeterActualLength )   As decimal(10,3)),3)'
      'WHEN VU.VolumeUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      'WHEN VU.VolumeUnitName = '#39'm3 aDxaL'#39' THEN ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      ' PL.ActualLengthMM) / (1000 * 1000 * 1000) As decimal(10,3)),3)'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN VU.VolumeUnitName = '#39'Lopm n'#39' THEN'
      'CASE '
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
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END-- NM1'
      ''
      
        'WHEN VU.VolumeUnitName = '#39'MFBM Nom'#39' THEN ROUND(CAST((       PTD.' +
        'MFBMNominal )   As decimal(10,3)),3)'
      'WHEN VU.VolumeUnitName = '#39'Packages'#39' THEN 1 '
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN VU.VolumeUnitName = '#39'm3 aDxnL'#39' THEN'
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
        '00)) As decimal(10,3)),3) '
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
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END --AS m3ActualSizeNomLength,'
      ''
      'WHEN VU.VolumeUnitName = '#39'm3 nDxaL'#39' THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      ''
      'END AS OrderVolume,'
      ''
      '--PriceVolume ********************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN'
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      ''
      ''
      
        'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN ROUND(CAST((       PTD.' +
        'SQMofActualWidth )   As decimal(10,3)),3)'
      
        'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN ROUND(CAST((       PTD.' +
        'LinealMeterActualLength )   As decimal(10,3)),3)'
      'WHEN PU.TemplateUnitName = '#39'Stycketal'#39' THEN PTD.NoOfPieces'
      'WHEN PU.TemplateUnitName = '#39'm3 aDxaL'#39' THEN ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'WHEN PU.TemplateUnitName = '#39'Lopm n'#39' THEN'
      'CASE '
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
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END-- NM1'
      ''
      ''
      
        'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN ROUND(CAST((       PT' +
        'D.MFBMNominal )   As decimal(10,3)),3)'
      'WHEN PU.TemplateUnitName = '#39'Packages'#39' THEN 1'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'WHEN PU.TemplateUnitName = '#39'm3 aDxnL'#39' THEN'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
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
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END --AS m3ActualSizeNomLength,'
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'm3 nDxaL'#39' THEN'
      
        'ROUND(CAST((PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalW' +
        'idthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) -- AS m3NomSizeActualLength,'
      'END AS PriceVolume'
      ''
      ''
      'FROM dbo.Invoiced_Load INL'
      'INNER JOIN dbo.Loads LO ON LO.LoadNo = INL.LoadNo'
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
      'WHERE'
      'INL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
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
      'Group By ptd.PackageTypeNo, ptd.LoadNo, ptd.LoadDetailNo')
    Left = 912
    Top = 728
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_LoadToInvoice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT LO.LoadNo'
      ''
      'FROM dbo.Invoiced_Load INL'
      'INNER JOIN dbo.Loads LO ON LO.LoadNo = INL.LoadNo'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      ''
      'WHERE'
      'INL.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 920
    Top = 168
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LoadToInvoiceLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_ExpSoftSet: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select FieldValue from dbo.SoftSet where FieldValue > '#39#39
      
        'and UserID = :UserID and LoadNo = :LoadNo and RecordType = :Reco' +
        'rdType'
      'order by sortingorder')
    Left = 1016
    Top = 368
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'RECORDTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ExpSoftSetFieldValue: TStringField
      FieldName = 'FieldValue'
      Origin = 'FieldValue'
      Size = 200
    end
  end
  object sq_GetInvNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT InvoiceNo FROM dbo.InvoiceNumber'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'UNION'
      ''
      
        'SELECT ProformaInvoiceNo AS InvoiceNo FROM dbo.ProformaInvoiceNu' +
        'mber'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'UNION'
      ''
      'SELECT InvoiceNo FROM dbo.InvoiceNo_USA'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'UNION'
      ''
      'SELECT InvoiceNo FROM dbo.InvNo_FW'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'UNION'
      ''
      'SELECT PO_InvoiceNo  AS InvoiceNo FROM dbo.InvoiceNumber_PO'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'UNION'
      ''
      'SELECT InvoiceNo  AS InvoiceNo FROM dbo.InvoiceNumber_AGENT'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    Left = 792
    Top = 568
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
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
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetInvNoInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
  end
  object sq_GetLODataII: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      
        'CSH.ShippingPlanStatus'#9#9#9#9'                AS STATUS, '#9#9'-- Intege' +
        'r'
      'CSH.ShippingPlanNo '#9#9#9#9'                    AS LO, '#9#9#9'-- Integer'
      
        'OH.OrderNoText'#9#9#9#9#9'                      AS ORDERNUMBER,'#9#9'-- CHA' +
        'R 20'
      
        'isNull(CSH.Reference,'#39'Non'#39')'#9#9#9'              AS REFERENCE,'#9#9'-- VA' +
        'RCHAR 30'
      
        'isNull(CSH.OurReference,'#39'Non'#39')'#9#9#9'          AS OURREFERENCE,'#9'-- V' +
        'ARCHAR 30'
      'RTRIM(US.FirstName)+'#39' '#39'+RTRIM(US.LastName)    AS SALESMAN,'
      'Bk.BookingNo'#9#9#9#9#9'                        AS BOOKINGNO,'
      'CSH.InvoiceAdditionAmount'#9#9#9'                AS ADDITION_AMOUNT,'
      'CSH.InvoiceAdditionUnitNo'#9#9#9'                AS ADDITION_UNITNO,'
      'CSH.InvoiceAdditionDescription'#9#9#9'          AS ADDITION_DESC,'
      'SC.ClientName                                 AS SHIPPER,'
      'ISNULL(Cr.CarrierName,'#39'Non'#39')                  AS CARRIERNAME,'
      'isNull(Vg.ETD,000000)                         AS ETD,'
      'isNull(Vg.ETA,000000)                         AS ETA,'
      'Bk.SupplierReference                          AS TrpID,'
      
        'PU.TemplateUnitName                           AS ADDITION_PRICEU' +
        'NIT'
      ''
      'FROM dbo.Invoiced_Load INL'
      #9'INNER JOIN dbo.LoadShippingPlan'#9#9'LS ON LS.LoadNo = INL.LoadNo'
      '  AND LS.ShippingPlanNo'#9'= INL.ShippingPlanNo'
      
        #9'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON'#9'LS.ShippingPla' +
        'nNo'#9'= CSH.ShippingPlanNo'
      #9'INNER JOIN dbo.Loads'#9#9#9'LO'#9'ON '#9'LO.LoadNo'#9#9'= LS.LoadNo'
      #9'INNER JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      
        #9'INNER JOIN dbo.Users'#9' '#9#9'US'#9'ON'#9'US.UserID '#9#9'= OH.ResponsibleSelle' +
        'r'
      
        '  Left Outer Join PackUnit                PU      ON      PU.Tem' +
        'plateUnitNo       = CSH.InvoiceAdditionUnitNo'
      ''
      '  LEFT OUTER JOIN dbo.Booking'#9#9'Bk'
      #9'LEFT OUTER JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'LEFT OUTER JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo'
      
        #9'LEFT OUTER JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      #9#9#9#9#9#9#9'ON  '#9'Bk.ShippingPlanNo '#9'= CSH.ShippingPlanNo'
      ''
      'WHERE INL.InternalInvoiceNo = :InternalInvoiceNo'
      'AND INL.ShippingPlanNo = :ShippingPlanNo'
      'AND LO.CustomerNo = :CustomerNo')
    Left = 1112
    Top = 544
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
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLODataIISTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object sq_GetLODataIILO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object sq_GetLODataIIORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
      Origin = 'ORDERNUMBER'
      Required = True
    end
    object sq_GetLODataIIREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object sq_GetLODataIIOURREFERENCE: TStringField
      FieldName = 'OURREFERENCE'
      Origin = 'OURREFERENCE'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 30
    end
    object sq_GetLODataIISALESMAN: TStringField
      FieldName = 'SALESMAN'
      Origin = 'SALESMAN'
      ReadOnly = True
      Size = 31
    end
    object sq_GetLODataIIBOOKINGNO: TIntegerField
      FieldName = 'BOOKINGNO'
      Origin = 'BOOKINGNO'
    end
    object sq_GetLODataIIADDITION_AMOUNT: TFloatField
      FieldName = 'ADDITION_AMOUNT'
      Origin = 'ADDITION_AMOUNT'
    end
    object sq_GetLODataIIADDITION_UNITNO: TIntegerField
      FieldName = 'ADDITION_UNITNO'
      Origin = 'ADDITION_UNITNO'
    end
    object sq_GetLODataIIADDITION_DESC: TStringField
      FieldName = 'ADDITION_DESC'
      Origin = 'ADDITION_DESC'
      FixedChar = True
      Size = 40
    end
    object sq_GetLODataIISHIPPER: TStringField
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      Size = 80
    end
    object sq_GetLODataIICARRIERNAME: TStringField
      FieldName = 'CARRIERNAME'
      Origin = 'CARRIERNAME'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 50
    end
    object sq_GetLODataIIETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ReadOnly = True
      Required = True
    end
    object sq_GetLODataIIETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ReadOnly = True
      Required = True
    end
    object sq_GetLODataIITrpID: TStringField
      FieldName = 'TrpID'
      Origin = 'TrpID'
      Size = 50
    end
    object sq_GetLODataIIADDITION_PRICEUNIT: TStringField
      FieldName = 'ADDITION_PRICEUNIT'
      Origin = 'ADDITION_PRICEUNIT'
    end
  end
  object sq_GetInvoiceDetailDataII: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'CSD.CustShipPlanDetailObjectNo,'
      'OL.OrderLineNo'#9#9#9'            AS'#9'ORDERLINENO,'
      'CSD.Reference'#9#9#9'              AS'#9'REFERENCE,'
      ''
      'OL.OrderLineDescription'#9#9'      AS'#9'PRODUCTDESCRIPTION,'
      'CSD.ProductNo'#9#9#9'              AS'#9'PRODUCTNO,'
      'CSD.LengthDescription'#9#9'        AS'#9'LENGTHDESCRIPTION,'
      'CSD.ProductLengthNo'#9#9'          AS'#9'PRODUCTLENGTHNO,'
      'OL.Price'#9#9#9'                  AS'#9'PRICE,'
      'VU.VolumeUnitName'#9#9'            AS'#9'VOLUMEUNIT,'
      'PU.TemplateUnitName'#9#9'          AS'#9'PRICEUNIT,'
      ''
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'PG.NominalThicknessMM           AS      NominalThicknessMM_PG,'
      'PG.NominalWidthMM               AS      NominalWidthMM_PG,'
      'PL.NominalLengthMM              AS      NominalLengthMM_PL,'
      'PL.ActualLengthMM               AS      ActualLengthMM_PL,'
      ''
      'OL.NominalThicknessMM,'
      'OL.NominalWidthMM,'
      'OL.NominalLengthMM,'
      ''
      'PG.NominalThicknessINCH,'
      'PG.NominalWidthINCH,'
      'LSP.ShippingPlanNo'#9#9'AS'#9'LO,'
      ''
      'M3_NOM.VOLUME_ORDERUNIT,'
      ''
      '-- M3_NOM.PRODUCTVALUE,'
      'M3_NOM.M3ACTUAL,'
      ''
      'M3_NOM.M3NOMINAL,'
      ''
      'M3_NOM.ACTUAL_LINEALMETER,'
      ''
      'M3_NOM.NOOFPIECES,'
      'M3_NOM.NOOFPKGS,'
      'OL.Reference AS OL_Reference,'
      'intNM3_NOM.intNM3,'
      'FSAL.ArticleNo,'
      'CSD.OrderNo,'
      'OL.InternalPrice,'
      'CSD.OrderNo,'
      'OL.InternalPrice'
      ''
      ''
      'FROM dbo.Invoiced_Load INL'
      'INNER JOIN dbo.Loads LO ON LO.LoadNo = INL.LoadNo'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = INL.LoadNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.PackageTypeNo = LD' +
        '.PackageTypeNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON '#9'CSH.ShippingPl' +
        'anNo = CSD.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.OrderLine OL'#9#9#9'ON '#9'OL.OrderLineNo = CSD.OrderLine' +
        'No'
      #9#9#9#9#9#9'AND '#9'OL.OrderNo = CSD.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL '#9#9'ON '#9'PL.ProductLengthNo = CSD.P' +
        'roductLengthNo'
      
        'INNER JOIN dbo.UnitName VU'#9#9#9'ON '#9'VU.VolumeUnit_No = OL.VolumeUni' +
        'tNo'
      ''
      ''
      
        'INNER JOIN dbo.PackUnit PU'#9#9#9'ON '#9'PU.TemplateUnitNo = OL.PriceUni' +
        'tNo'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9#9'ON '#9'PG.ProductGroupNo = OL.Prod' +
        'uctGroupNo'
      ''
      
        'Inner Join dbo.VIS_LoadVolume_TEMP M3_NOM ON M3_NOM.CustomerNo =' +
        ' LO.CustomerNo'
      'AND M3_NOM.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'AND M3_NOM.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailOb' +
        'jectNo'
      'AND M3_NOM.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      
        'Inner Join dbo.VIS_LoadIntNM3_II intNM3_NOM ON intNM3_NOM.Custom' +
        'erNo = LO.CustomerNo'
      'AND intNM3_NOM.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'AND intNM3_NOM.DefaultCustShipObjectNo = CSD.CustShipPlanDetailO' +
        'bjectNo'
      'AND intNM3_NOM.InternalInvoiceNo = INL.InternalInvoiceNo'
      ''
      
        '--Left Outer Join dbo.FS_Article FSA on FSA.ArticleGroupNo = PG.' +
        'SequenceNo'
      
        'Left Outer Join dbo.FS_ArticleLink FSAL on FSAL.ProductArtNo = P' +
        'G.SequenceNo'
      ''
      'WHERE'
      'INL.InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 280
    Top = 168
    ParamData = <
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
    object sq_GetInvoiceDetailDataIICustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      Required = True
    end
    object sq_GetInvoiceDetailDataIIORDERLINENO: TIntegerField
      FieldName = 'ORDERLINENO'
      Origin = 'ORDERLINENO'
      Required = True
    end
    object sq_GetInvoiceDetailDataIIREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object sq_GetInvoiceDetailDataIIPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Origin = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object sq_GetInvoiceDetailDataIIPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
      Required = True
    end
    object sq_GetInvoiceDetailDataIILENGTHDESCRIPTION: TStringField
      FieldName = 'LENGTHDESCRIPTION'
      Origin = 'LENGTHDESCRIPTION'
      FixedChar = True
      Size = 100
    end
    object sq_GetInvoiceDetailDataIIPRODUCTLENGTHNO: TIntegerField
      FieldName = 'PRODUCTLENGTHNO'
      Origin = 'PRODUCTLENGTHNO'
      Required = True
    end
    object sq_GetInvoiceDetailDataIIPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object sq_GetInvoiceDetailDataIIVOLUMEUNIT: TStringField
      FieldName = 'VOLUMEUNIT'
      Origin = 'VOLUMEUNIT'
      Required = True
      Size = 10
    end
    object sq_GetInvoiceDetailDataIIPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
      Origin = 'PRICEUNIT'
      Required = True
    end
    object sq_GetInvoiceDetailDataIIActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object sq_GetInvoiceDetailDataIIActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object sq_GetInvoiceDetailDataIINominalThicknessMM_PG: TFloatField
      FieldName = 'NominalThicknessMM_PG'
      Origin = 'NominalThicknessMM_PG'
    end
    object sq_GetInvoiceDetailDataIINominalWidthMM_PG: TFloatField
      FieldName = 'NominalWidthMM_PG'
      Origin = 'NominalWidthMM_PG'
    end
    object sq_GetInvoiceDetailDataIINominalLengthMM_PL: TFloatField
      FieldName = 'NominalLengthMM_PL'
      Origin = 'NominalLengthMM_PL'
      Required = True
    end
    object sq_GetInvoiceDetailDataIIActualLengthMM_PL: TFloatField
      FieldName = 'ActualLengthMM_PL'
      Origin = 'ActualLengthMM_PL'
      Required = True
    end
    object sq_GetInvoiceDetailDataIINominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object sq_GetInvoiceDetailDataIINominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object sq_GetInvoiceDetailDataIINominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
    end
    object sq_GetInvoiceDetailDataIINominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object sq_GetInvoiceDetailDataIINominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
    object sq_GetInvoiceDetailDataIILO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object sq_GetInvoiceDetailDataIIVOLUME_ORDERUNIT: TFMTBCDField
      FieldName = 'VOLUME_ORDERUNIT'
      Origin = 'VOLUME_ORDERUNIT'
      Precision = 38
      Size = 3
    end
    object sq_GetInvoiceDetailDataIIM3ACTUAL: TFMTBCDField
      FieldName = 'M3ACTUAL'
      Origin = 'M3ACTUAL'
      Precision = 38
      Size = 3
    end
    object sq_GetInvoiceDetailDataIIM3NOMINAL: TFMTBCDField
      FieldName = 'M3NOMINAL'
      Origin = 'M3NOMINAL'
      Precision = 38
      Size = 3
    end
    object sq_GetInvoiceDetailDataIIACTUAL_LINEALMETER: TFMTBCDField
      FieldName = 'ACTUAL_LINEALMETER'
      Origin = 'ACTUAL_LINEALMETER'
      Precision = 38
      Size = 3
    end
    object sq_GetInvoiceDetailDataIINOOFPIECES: TIntegerField
      FieldName = 'NOOFPIECES'
      Origin = 'NOOFPIECES'
    end
    object sq_GetInvoiceDetailDataIINOOFPKGS: TIntegerField
      FieldName = 'NOOFPKGS'
      Origin = 'NOOFPKGS'
    end
    object sq_GetInvoiceDetailDataIIOL_Reference: TStringField
      FieldName = 'OL_Reference'
      Origin = 'OL_Reference'
      Size = 50
    end
    object sq_GetInvoiceDetailDataIIintNM3: TFloatField
      FieldName = 'intNM3'
      Origin = 'intNM3'
    end
    object sq_GetInvoiceDetailDataIIArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
    end
    object sq_GetInvoiceDetailDataIIOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      Required = True
    end
    object sq_GetInvoiceDetailDataIIInternalPrice: TFloatField
      FieldName = 'InternalPrice'
      Origin = 'InternalPrice'
    end
  end
  object cds_AttestRow: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM'
      'dbo.AttestRow'
      'WHERE SequensNo = :SequensNo')
    Left = 504
    Top = 336
    ParamData = <
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AttestRowInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AttestRowShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AttestRowSequensNo: TIntegerField
      FieldName = 'SequensNo'
      Origin = 'SequensNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AttestRowinvoicedetailno: TIntegerField
      FieldName = 'invoicedetailno'
      Origin = 'invoicedetailno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetPaymentText: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select PaymentText FROM dbo.PaymentTextII PayText, dbo.Address '#9 +
        #9'Adr'
      'WHERE'
      'Adr.AddressNo = :AddressNo'
      'AND PayText.CurrencyNo = :CurrencyNo'
      'AND     PayText.LanguageCode = :LanguageCode'
      'AND     PayText.CountryNo = Adr.CountryNo')
    Left = 144
    Top = 672
    ParamData = <
      item
        Name = 'ADDRESSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPaymentTextPaymentText: TMemoField
      FieldName = 'PaymentText'
      Origin = 'PaymentText'
      BlobType = ftMemo
    end
  end
  object sq_Del_AttestRow: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete FROM dbo.Attestrow'
      'WHERE '
      'internalinvoiceno = :internalinvoiceno')
    Left = 408
    Top = 496
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_updInvPkgDtl: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Insert into dbo.invPkgDtl'
      '('
      'InternalInvoiceNo,'
      'ShippingPlanNo,'
      'InvoiceDetailNo,'
      'ProductValue,'
      'Volume_OrderUnit,'
      'ActualNetM3,'
      'NominalM3,'
      'LinealMeter,'
      'MFBM,'
      'NoOfPieces,'
      'PcsPerPkg,'
      'NoOfPkgs'
      ')'
      'select distinct'
      'Inde.InternalInvoiceNo,'
      'Inde.ShippingPlanNo,'
      'Inde.InvoiceDetailNo,'
      
        'ROUND(CAST(( M3_NOM.PRODUCTVALUE ) As decimal(18,2)), 2) AS PROD' +
        'UCTVALUE,'
      
        'ROUND(CAST(( M3_NOM.VOLUME_ORDERUNIT ) As decimal(18,3)), 3) AS ' +
        'VOLUME_ORDERUNIT,'
      'M3_NOM.M3ACTUAL,'
      'M3_NOM.M3NOMINAL,'
      'M3_NOM.ACTUAL_LINEALMETER,'
      'M3_NOM.MFBM,'
      'M3_NOM.NOOFPIECES,'
      'M3_NOM.PCSPERPKG,'
      'M3_NOM.NOOFPKGS'
      ''
      'FROM '
      'dbo.InvoiceHeader IH '
      
        'INNER JOIN dbo.Invoiced_Load INVD ON INVD.InternalInvoiceNo = IH' +
        '.InternalInvoiceNo'
      ''
      'INNER JOIN dbo.Loads LO ON INVD.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'INNER JOIN dbo.LoadDetailPkgLength LDP'#9#9'ON '#9'LDP.LoadDetailNo = L' +
        'D.LoadDetailNo'
      #9#9#9#9#9#9'AND '#9'LDP.LoadNo = LD.LoadNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD'#9#9'ON '#9'PTD.ProductLengthNo = ' +
        'LDP.ProductLengthNo'
      #9#9#9#9#9#9'AND '#9'PTD.PackageTypeNo = LD.PackageTypeNo'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LDP.CustShipPlanDetailObjectNo'
      ''
      
        'Inner join dbo.InvoiceDetail Inde on Inde.InternalInvoiceNo = IN' +
        'VD.InternalInvoiceNo'
      'and Inde.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'and  inde.CustShipPlanDetailObjectNo = csd.CustShipPlanDetailObj' +
        'ectNo'
      ''
      ''
      
        'Inner Join dbo.VIS_LoadVolume_Pkg M3_NOM ON M3_NOM.CustomerNo = ' +
        'LO.CustomerNo'
      'AND M3_NOM.ShippingPlanNo = LSP.ShippingPlanNo'
      
        'AND M3_NOM.CustShipPlanDetailObjectNo = csd.CustShipPlanDetailOb' +
        'jectNo'
      'AND M3_NOM.InternalInvoiceNo = INVD.InternalInvoiceNo'
      ''
      ''
      'WHERE'
      'IH.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 144
    Top = 744
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        ParamType = ptInput
      end>
  end
  object sq_GetLoadIDII: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT LO.LoadNo, LO.LoadID'
      ''
      'FROM dbo.Invoiced_Load INL'
      'INNER JOIN dbo.Loads LO ON LO.LoadNo = INL.LoadNo'
      ''
      'WHERE'
      'INL.InternalInvoiceNo = :InternalInvoiceNo'
      'AND LO.SupplierNo = :SupplierNo'
      'AND LO.CustomerNo = :CustomerNo'
      'AND INL.ShippingPlanNo = :ShippingPlanNo')
    Left = 256
    Top = 576
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
    object sq_GetLoadIDIILoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetLoadIDIILoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
  end
  object sq_VolUnit: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.UnitName')
    Left = 256
    Top = 624
    object sq_VolUnitVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
      Origin = 'VolumeUnit_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_VolUnitVolumeUnitName: TStringField
      FieldName = 'VolumeUnitName'
      Origin = 'VolumeUnitName'
      Required = True
      Size = 10
    end
  end
  object sq_PriceUnit: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.PackUnit')
    Left = 256
    Top = 672
    object sq_PriceUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
      Origin = 'TemplateUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PriceUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
      Origin = 'TemplateUnitName'
      Required = True
    end
  end
  object sq_DelIH: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.InvoiceHeader'
      'WHERE'
      'InternalInvoiceNo = :InternalInvoiceNo')
    Left = 256
    Top = 720
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelIHEmptyLoads: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.Loads'
      'FROM dbo.Loads'
      
        'Inner Join dbo.Invoiced_Load on Invoiced_Load.LoadNo = Loads.Loa' +
        'dNo'
      ''
      'WHERE'
      'Invoiced_Load.InternalInvoiceNo = :InternalInvoiceNo'
      'AND Loads.LoadNo not in (Select LoadDetail.LoadNo'
      'FROM dbo.LoadDetail '
      'WHERE Loads.LoadNo = LoadDetail.LoadNo)')
    Left = 256
    Top = 768
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SearchLoadNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'select ih.InvoiceType, ih.InternalInvoiceNo FROM Invoiced_Load i' +
        'l'
      
        'Inner  join invoiceheader ih on ih.InternalInvoiceNo = il.Intern' +
        'alInvoiceNo'
      'WHERE LoadNo = :LoadNo')
    Left = 352
    Top = 576
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SearchLoadNoInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
    end
    object sq_SearchLoadNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetAttestRow: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT *'
      'FROM dbo.Attestrow A '
      'WHERE  A.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 352
    Top = 624
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetAttestRowInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetAttestRowShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetAttestRowSequensNo: TIntegerField
      FieldName = 'SequensNo'
      Origin = 'SequensNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetAttestRowinvoicedetailno: TIntegerField
      FieldName = 'invoicedetailno'
      Origin = 'invoicedetailno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_DeleteInvoice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.InvoiceHeader'
      'where'
      'InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Delete dbo.PkgType_Invoice'
      'WHERE '
      'InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 352
    Top = 672
    ParamData = <
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
  object sq_InvAttested: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SequensNo'
      'FROM dbo.Att_Ext_Services'
      'WHERE Quick_InvoiceNo = :Quick_InvoiceNo')
    Left = 352
    Top = 728
    ParamData = <
      item
        Name = 'QUICK_INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_InvAttestedSequensNo: TIntegerField
      FieldName = 'SequensNo'
      Origin = 'SequensNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetInvoiceType: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Top 1 InvoiceType from dbo.InvoiceHeader IH'
      
        'Inner Join dbo.InvoiceLO IL on IL.InternalInvoiceNo = IH.Interna' +
        'lInvoiceNo'
      'WHERE IL.ShippingPlanNo = :LONo')
    Left = 352
    Top = 776
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetInvoiceTypeInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
    end
  end
  object sq_Invoiced_Load: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'INSERT INTO dbo.Invoiced_Load'
      '(InternalInvoiceNo,'
      'LoadNo,'
      'ShippingPlanNo,'
      'DateCreated,'
      'CreatedUser,'
      'ModifiedUser)'
      ''
      'SELECT DISTINCT'
      ':InternalInvoiceNo, LO.LoadNo,LSP.ShippingPlanNo, GetDate(), 8,8'
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'INNER JOIN dbo.OrderLine OL'#9#9#9'ON '#9'OL.OrderLineNo = CSD.OrderLine' +
        'No'
      #9#9#9#9#9#9'AND '#9'OL.OrderNo = CSD.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL '#9#9'ON '#9'PL.ProductLengthNo = OL.Pr' +
        'oductLengthNo'
      
        'INNER JOIN dbo.UnitName UN'#9#9#9'ON '#9'UN.VolumeUnit_No = OL.VolumeUni' +
        'tNo'
      ''
      
        'INNER JOIN dbo.PackUnit PU'#9#9#9'ON '#9'PU.TemplateUnitNo = OL.PriceUni' +
        'tNo'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9#9'ON '#9'PG.ProductGroupNo = OL.Prod' +
        'uctGroupNo'
      ''
      'WHERE'
      'LO.SupplierNo = :SupplierNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      'AND LO.CustomerNo = :CustomerNo'
      'AND LO.SenderLoadStatus = 2'
      'AND LO.LoadNo not in'
      '(Select LoadNo'
      'From'
      'dbo.Invoiced_Load'
      'WHERE ShippingPlanNo = LSP.ShippingPlanNo)'
      '')
    Left = 480
    Top = 624
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
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CUSTOMERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetIntInvNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Top 1 invno.InternalInvoiceNo, ih.InvoiceType'
      'from dbo.InvoiceNumber invno'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = invno.' +
        'InternalInvoiceNo'
      'WHERE invno.InvoiceNo = :InvoiceNo'
      ''
      'UNION'
      ''
      'Select Top 1 invno.InternalInvoiceNo, ih.InvoiceType'
      'from dbo.InvoiceNo_USA invno'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = invno.' +
        'InternalInvoiceNo'
      'WHERE invno.InvoiceNo = :InvoiceNo'
      ''
      'UNION'
      ''
      'Select Top 1 invno.InternalInvoiceNo, ih.InvoiceType'
      'from dbo.InvNo_FW invno'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = invno.' +
        'InternalInvoiceNo'
      'WHERE invno.InvoiceNo = :InvoiceNo'
      ''
      'UNION'
      ''
      'Select Top 1 invno.InternalInvoiceNo, ih.InvoiceType'
      'from dbo.ProformaInvoiceNumber invno'
      
        'Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = invno.' +
        'InternalInvoiceNo'
      'WHERE invno.proformaInvoiceNo = :InvoiceNo'
      ''
      '')
    Left = 480
    Top = 672
    ParamData = <
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetIntInvNoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ReadOnly = True
    end
    object sq_GetIntInvNoInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
      ReadOnly = True
    end
  end
  object sq_CghInv_PkgNos: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.PackageNumber'
      'Set Status = :Status,'
      'LogicalInventoryPointNo = LD.LIPNo'
      'FROM    dbo.InvoiceHeader IH'
      
        '          INNER JOIN dbo.Invoiced_Load ILoad '#9'ON  ILoad.Internal' +
        'InvoiceNo = IH.InternalInvoiceNo'
      
        '          INNER JOIN dbo.Loaddetail    LD '#9'ON  LD.LoadNo        ' +
        '    = ILoad.LoadNo'
      '       '#9#9#9#9#9#9'AND LD.SHIPPINGPLANNO    = ILoad.SHIPPINGPLANNO'
      
        '          INNER JOIN dbo.PackageNumber on dbo.PackageNumber.Pack' +
        'ageNo = LD.PackageNo'
      #9#9#9#9#9#9#9'AND dbo.PackageNumber.SupplierCode = LD.SupplierCode'
      ''
      'WHERE     IH.InternalInvoiceNo   =:InternalInvoiceNo'
      '')
    Left = 480
    Top = 720
    ParamData = <
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_Delete_Confirmed_Load: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.Confirmed_Load'
      'From dbo.Invoiced_Load  IL'
      
        'Inner Join dbo.Confirmed_Load on Confirmed_Load.Confirmed_LoadNo' +
        ' = IL.LoadNo'
      
        #9#9#9#9#9#9'AND dbo.Confirmed_Load.Confirmed_ShippingPlanNo = IL.Shipp' +
        'ingPlanNo'
      'Where'
      'IL.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 480
    Top = 768
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_CopyLSPByLoNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT LSP.*'
      ''
      ''
      'FROM dbo.LoadShippingPlan LSP'
      ''
      'WHERE'
      'LSP.LoadNo = :LoadNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo')
    Left = 1112
    Top = 696
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CopyLSPByLoNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CopyLSPByLoNoShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CopyLSPByLoNoConfirmedByReciever: TIntegerField
      FieldName = 'ConfirmedByReciever'
      Origin = 'ConfirmedByReciever'
    end
    object sq_CopyLSPByLoNoConfirmedBySupplier: TIntegerField
      FieldName = 'ConfirmedBySupplier'
      Origin = 'ConfirmedBySupplier'
    end
    object sq_CopyLSPByLoNoCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_CopyLSPByLoNoModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_CopyLSPByLoNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_CopyLSPByLoNoInvoiced: TIntegerField
      FieldName = 'Invoiced'
      Origin = 'Invoiced'
    end
    object sq_CopyLSPByLoNoLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object sq_CopyLSPByLoNoShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
  end
  object sq_GetNextLDNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT MAX(LD.LoadDetailNo) + 1 AS NextLDNo'
      ''
      'FROM dbo.LoadDetail LD'
      'WHERE      LD.LoadNo = :LoadNo')
    Left = 600
    Top = 576
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetNextLDNoNextLDNo: TIntegerField
      FieldName = 'NextLDNo'
      Origin = 'NextLDNo'
      ReadOnly = True
    end
  end
  object sq_SearchLONo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT IL.InternalInvoiceNo'
      'FROM'
      ' dbo.InvoiceLO IL'
      
        'Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.Int' +
        'ernalInvoiceNo'
      'WHERE'
      'IH.InvoiceType = :InvoiceType'
      'AND IL.ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 600
    Top = 632
    ParamData = <
      item
        Name = 'INVOICETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SearchLONoInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetInvoicedLods: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select IL.LoadNo, IL.ShippingPlanNo'
      'From dbo.Invoiced_Load  IL'
      ''
      'Where'
      'IL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'and not exists ('
      'Select * from dbo.Confirmed_Load CL'#9
      'where CL.Confirmed_LoadNo = IL.LoadNo)')
    Left = 600
    Top = 680
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetInvoicedLodsLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetInvoicedLodsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetLoadID: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT LO.LoadNo, LO.LoadID'
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      '--INNER JOIN dbo.Loads L'#9#9'ON'#9'L.LoadNo = LSP.LoadNo'
      ''
      'WHERE'
      'LO.SupplierNo = :SupplierNo'
      'AND LO.SenderLoadStatus = 2'
      'AND LO.CustomerNo = :CustomerNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      ''
      ''
      'AND NOT EXISTS'
      '   (SELECT *'
      '   FROM dbo.Invoiced_Load'
      '   WHERE LoadNo = LSP.LoadNo'
      'AND ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      ''
      '')
    Left = 600
    Top = 728
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
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLoadIDLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetLoadIDLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
  end
  object sq_Ins_AttestRow: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Insert  INTO dbo.Attestrow'
      'Select :internalinvoiceno,'
      ':ShippingPlanNo,'
      ':sequensno, :invoicedetailno'
      
        'WHERE :internalinvoiceno not in (Select ar.InternalInvoiceNo FRO' +
        'M'
      'dbo.Attestrow ar'
      'WHERE'
      'ar.ShippingPlanNo = :ShippingPlanNo'
      'and ar.SequensNo = :sequensno'
      'and ar.InvoiceDetailNo = :invoicedetailno)')
    Left = 408
    Top = 296
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
        Name = 'INVOICEDETAILNO'
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
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOICEDETAILNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_CheckLoadNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select LoadNo'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo'
      '')
    Left = 688
    Top = 576
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CheckLoadNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_CreditInv: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select InternalInvoiceNo, CustomerNo from dbo.InvoiceHeader'
      'where Debit_Credit = 1'
      'and InvoiceDate > '#39'2007-12-31'#39
      'and InvoiceType = 0'
      '')
    Left = 688
    Top = 624
    object sq_CreditInvInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_CreditInvCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
  end
  object sq_GetInvTexts: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DT.DocText FROM'
      'dbo.DocumentText DT '
      'Inner Join dbo.DocTypeOrder DTO on DTO.OrderNo = DT.OrderNo'
      'AND DTO.DocTextNo =DT.DocTextNo'
      ''
      'WHERE '
      ' DT.OrderNo in :OrderNos'
      'AND DTO.DocType = 2 -- Faktura'
      'AND DTO.PrintOut = 1'
      'Order by DT.SortNo'
      '')
    Left = 688
    Top = 680
    ParamData = <
      item
        Name = 'ORDERNOS'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetInvTextsDocText: TMemoField
      FieldName = 'DocText'
      Origin = 'DocText'
      BlobType = ftMemo
    end
  end
  object sq_GetClientInvTexts: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DT.DocText FROM'
      'dbo.DocumentTextClient DT '
      
        'Inner Join dbo.DocTypeOrderClient DTO on DTO.ClientNo = DT.Clien' +
        'tNo'
      'AND DTO.DocTextNo =DT.DocTextNo'
      ''
      'WHERE '
      ' DT.ClientNo = :ClientNo'
      'AND DTO.DocType = 2 -- Faktura'
      'AND DTO.PrintOut = 1'
      'Order by DT.SortNo'
      '')
    Left = 688
    Top = 736
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetClientInvTextsDocText: TMemoField
      FieldName = 'DocText'
      Origin = 'DocText'
      BlobType = ftMemo
    end
  end
  object sq_DeletePkgTypeLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.PkgType_Load'
      'FROM dbo.PkgType_Load '
      
        'Inner Join dbo.PkgType_Invoice ptd on ptd.LoadNo = PkgType_Load.' +
        'LoadNo'
      'WHERE Ptd.InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 792
    Top = 616
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_RemoveFrom_InvLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete from dbo.Invoiced_Load '
      'Where'
      'InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 792
    Top = 664
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelPkgTypeByIntInv: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 792
    Top = 712
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_KortSkeppFS: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      '           LD.LoadNo, '
      '           LD.ShippingPlanNo,'
      '           PR.ProductDisplayName     AS PRODUCT,'
      '           LD.LoadDetailNo,'
      '           LD.PackageNo'#9#9'            AS PACKAGENO,'
      '           LD.NoOfPackages'#9'          ,'
      '           LD.PackageTypeNo'#9'          AS PACKAGETYPENO,'
      '           LD.SupplierCode'#9'          ,'
      '           LD.PackageOK'#9#9'            ,'
      '           LD.ProblemPackageLog'#9'      ,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      ''
      '           PT.Totalm3Actual           AS  M3_NET,'
      '           PT.TotalNoOfPieces         AS  PCS,'
      '      '#9'   PT.Totalm3Nominal'#9#9'      AS M3_NOM,'
      '           PT.TotalMFBMNominal        AS      MFBM,'
      '      '#9'   PT.TotalSQMofActualWidth'#9'  AS KVM,'
      '      '#9'   PT.TotalLinealMeterActualLength AS LOPM,'
      '           PR.ProductNo,'
      '           LD.DefaultCustShipObjectNo,'
      '           PTL.PcsPerLength           AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS NoOfL' +
        'engths,'
      ''
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS Produ' +
        'ctLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo) AS ALMM,'
      ''
      ''
      '          PG.ActualThicknessMM,'
      '          PG.ActualWidthMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                     AS MainG' +
        'radeNo,'
      '          LD.OverrideMatch,'
      '          LD.LIPNo,'
      '          0 AS Pkg_State,'
      '          0 AS Pkg_Function,'
      '          0 AS Changed,'
      '          LD.Defsspno,'
      #9'LD.OverrideRL'
      ''
      ''
      'FROM dbo.IH_SpecLoad INL'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = INL.SpecLoadNo'
      
        ' INNER JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo    = LD' +
        '.PackageTypeNo'
      
        ' INNER JOIN dbo.Product       Pr  ON    Pr.ProductNo        = Pt' +
        '.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo   = Pr' +
        '.ProductGroupNo'
      
        ' INNER JOIN dbo.Grade         G   ON    G.GradeNo           = Pr' +
        '.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      
        ' Inner Join dbo.PackageTypeLengths PTL  ON PTL.PackageTypeNo  = ' +
        'PT.PackageTypeNo'
      ''
      'WHERE      INL.InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'ORDER BY   LD.LoadDetailNo DESC'
      '')
    Left = 824
    Top = 384
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_AnyLoadsToInvoice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT LO.LoadNo'
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      ''
      'WHERE'
      'LO.SupplierNo = :SupplierNo'
      'AND LO.SenderLoadStatus = 2'
      'AND LO.CustomerNo = :CustomerNo'
      'AND LSP.ShippingPlanNo = :ShippingPlanNo'
      ''
      ''
      'AND NOT EXISTS'
      '   (SELECT *'
      '   FROM dbo.Invoiced_Load'
      '   WHERE LoadNo = LSP.LoadNo'
      'AND ShippingPlanNo = LSP.ShippingPlanNo)'
      ''
      ''
      '')
    Left = 64
    Top = 496
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
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetFreightCost: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'Bk.ShippingPlanNo,'
      'Bk.BookingNo,'
      'Bk.FreightCost,'
      'Bk.FreightCostVolUnit,'
      'Bk.FreightCostCurrency,'
      'PU.TemplateUnitName'
      ''
      'FROM dbo.Booking Bk, PackUnit PU'
      'WHERE Bk.ShippingPlanNo = :ShippingPlanNo'
      'and PU.TemplateUnitNo = Bk.FreightCostVolUnit'
      '')
    Left = 792
    Top = 760
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetFreightCostShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object sq_GetFreightCostBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetFreightCostFreightCost: TFloatField
      FieldName = 'FreightCost'
      Origin = 'FreightCost'
    end
    object sq_GetFreightCostFreightCostVolUnit: TIntegerField
      FieldName = 'FreightCostVolUnit'
      Origin = 'FreightCostVolUnit'
    end
    object sq_GetFreightCostFreightCostCurrency: TIntegerField
      FieldName = 'FreightCostCurrency'
      Origin = 'FreightCostCurrency'
    end
    object sq_GetFreightCostTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
      Origin = 'TemplateUnitName'
      Required = True
    end
  end
  object sp_RemPkgFromLoad: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_remLoadPkg'
    Left = 480
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
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@CreatedUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@Operation'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_vida_Populate_SamFaktura: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_Populate_SamFaktura'
    Left = 64
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@InvGroupNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GenSoftSet700790: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_GenSoftSet700790'
    Left = 1016
    Top = 536
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GenSoftSet449: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_GenSoftSet449'
    Left = 1016
    Top = 320
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Purpose'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
  object sp_GetNextProformaInvNo: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_GetMaxProformaNo'
    Left = 392
    Top = 136
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
      end
      item
        Position = 3
        Name = '@InternalInvoiceNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 720
    Top = 304
  end
  object cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 720
    Top = 256
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_PropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsMarknad: TStringField
      FieldKind = fkLookup
      FieldName = 'Marknad'
      LookupDataSet = dmsContact.cds_Market
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cds_PropsKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesRegionNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSaljgrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'Saljgrupp'
      LookupDataSet = dmsContact.cds_SalesGrp
      LookupKeyFields = 'SalesGroupNo'
      LookupResultField = 'SalesGroupName'
      KeyFields = 'SalesPersonNo'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
  end
  object cds_KontoLogik: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.KontoLogik'
      'WHERE SalesmangroupNo = :SalesmangroupNo'
      'AND SalesregionNo = :SalesregionNo'
      'AND CustomerCountryNo = :CustomerCountryNo'
      'AND Trading = :Trading'
      'AND PO_CountryNo = :PO_CountryNo'
      'AND VarugruppNo = :VarugruppNo'
      'AND Moms = :Moms')
    Left = 256
    Top = 416
    ParamData = <
      item
        Name = 'SALESMANGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CUSTOMERCOUNTRYNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TRADING'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PO_COUNTRYNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VARUGRUPPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'MOMS'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
  end
  object ds_KontoLogik: TDataSource
    DataSet = cds_KontoLogik
    Left = 256
    Top = 464
  end
  object FD_GetSalesManGroupNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SalesGroupNo from dbo.SalesManGroupRow smg'
      'WHERE smg.UserID = :ResponsibleSeller')
    Left = 256
    Top = 520
    ParamData = <
      item
        Name = 'RESPONSIBLESELLER'
        ParamType = ptInput
      end>
  end
  object amt_Credit: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 1024
    Top = 736
    object amt_CreditLONo: TIntegerField
      FieldName = 'LONo'
    end
    object amt_CreditIntInvNo: TIntegerField
      FieldName = 'IntInvNo'
    end
  end
  object sq_RemInvLoadII: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete from dbo.Invoiced_Load '
      'FROM '
      'dbo.Invoice_Credited ic '
      
        'Inner Join dbo.Invoiced_Load on dbo.Invoiced_Load.InternalInvoic' +
        'eNo = ic.InternalInvoiceNo'
      'Where'
      'ic.NewInternalInvoiceNo = :NewInternalInvoiceNo')
    Left = 912
    Top = 680
    ParamData = <
      item
        Name = 'NEWINTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object mtImport: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'RecordType'
        DataType = ftInteger
      end
      item
        Name = 'Prefix'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Paketnr'
        DataType = ftInteger
      end
      item
        Name = 'Styck'
        DataType = ftInteger
      end
      item
        Name = 'Mottaget'
        DataType = ftDateTime
      end
      item
        Name = 'KlarTillProduktion'
        DataType = ftDateTime
      end
      item
        Name = 'ProduktionsDatum'
        DataType = ftDateTime
      end
      item
        Name = 'KlarForLeverans'
        DataType = ftDateTime
      end
      item
        Name = 'Utlevererat'
        DataType = ftDateTime
      end
      item
        Name = 'UtlevereringsJournal'
        DataType = ftInteger
      end>
    IndexDefs = <>
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
    Left = 1112
    Top = 64
    object mtImportRecordType: TIntegerField
      FieldName = 'RecordType'
    end
    object mtImportPaketnr: TIntegerField
      FieldName = 'Paketnr'
    end
    object mtImportPrefix: TStringField
      FieldName = 'Prefix'
      Size = 3
    end
    object mtImportStyck: TIntegerField
      FieldName = 'Styck'
    end
    object mtImportMottaget: TStringField
      FieldName = 'Mottaget'
      Size = 10
    end
    object mtImportKlarTillProduktion: TStringField
      DisplayLabel = 'Klart f'#246'r produktion'
      FieldName = 'KlarTillProduktion'
      Size = 10
    end
    object mtImportProduktionsDatum: TStringField
      DisplayLabel = 'Producerat'
      FieldName = 'ProduktionsDatum'
      Size = 10
    end
    object mtImportKlarForLeverans: TStringField
      DisplayLabel = 'Klar f'#246'r leverans'
      FieldName = 'KlarForLeverans'
      Size = 10
    end
    object mtImportUtlevererat: TStringField
      FieldName = 'Utlevererat'
      Size = 10
    end
    object mtImportUtlevereringsJournal: TStringField
      DisplayLabel = 'Utlev.journal'
      FieldName = 'UtlevereringsJournal'
      Size = 10
    end
    object mtImportProduktKod: TStringField
      FieldName = 'ProduktKod'
      Size = 30
    end
    object mtImportPEFC: TIntegerField
      FieldName = 'PEFC'
    end
    object mtImportALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object QImport2ASCII2: TQImport3ASCII
    DataSet = mtImport
    Map.Strings = (
      'RecordType=1'
      'Prefix=2'
      'Paketnr=3'
      'Styck=4'
      'Mottaget=5'
      'KlarTillProduktion=6'
      'ProduktionsDatum=7'
      'KlarForLeverans=8'
      'Utlevererat=9'
      'UtlevereringsJournal=10')
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '-'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'yyyyMMdd'
    Formats.LongDateFormat = #39'den '#39'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    OnBeforePost = QImport2ASCII2BeforePost
    FileName = 'C:\VIS\TEMP\5_090817_132800.csv'
    Comma = ';'
    Quote = '"'
    Left = 1112
    Top = 16
  end
  object sq_StoreTransferFile: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.TransferFile(FileName, TransferType, DateCreated' +
        ', CreatedUser, Complete, HTF_FS, LONo, LoadNo, InOut)'
      
        'Select :FileName, :TransferType, GetDate(), :CreatedUser, :Compl' +
        'ete, :HTF_FS, :LONo, :LoadNo, :InOut'
      'WHERE :FileName not in (Select FileName FROM dbo.TransferFile)')
    Left = 1016
    Top = 216
    ParamData = <
      item
        Name = 'FILENAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'TRANSFERTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CREATEDUSER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COMPLETE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'HTF_FS'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INOUT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FILENAME'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sq_TransferFiles: TFDQuery
    Indexes = <
      item
        Active = True
        Name = 'sq_TransferFilesIndex01'
        Fields = 'FileName;TransferType'
      end>
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.TransferFile'
      'WHERE ((TransferType = :TransferType) or (-1 = :TransferType)) '
      'AND Complete = :Complete'
      'AND InOut = :InOut')
    Left = 1112
    Top = 224
    ParamData = <
      item
        Name = 'TRANSFERTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TRANSFERTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COMPLETE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INOUT'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_TransferFilesFileName: TStringField
      FieldName = 'FileName'
      Origin = 'FileName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 255
    end
    object sq_TransferFilesTransferType: TIntegerField
      FieldName = 'TransferType'
      Origin = 'TransferType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_TransferFilesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_TransferFilesCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_TransferFilesComplete: TIntegerField
      FieldName = 'Complete'
      Origin = 'Complete'
      ProviderFlags = [pfInUpdate]
    end
    object sq_TransferFilesSendDate: TSQLTimeStampField
      FieldName = 'SendDate'
      Origin = 'SendDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_TransferFilesLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_TransferFilesHTF_FS: TStringField
      FieldName = 'HTF_FS'
      Origin = 'HTF_FS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object sq_TransferFilesLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_PackageStatusHTF: TFDQuery
    BeforePost = sq_PackageStatusHTFBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.PackageStatusHTF'
      'WHERE Paketnr = :Paketnr'
      'AND Prefix = :Prefix'
      'AND RecordType = :RecordType'
      'AND ((FileName = :FileName) OR ('#39'ALLA'#39' = :FileName))')
    Left = 624
    Top = 8
    ParamData = <
      item
        Name = 'PAKETNR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PREFIX'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'RECORDTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FILENAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'FILENAME'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_PackageStatusHTFRecordType: TIntegerField
      FieldName = 'RecordType'
      Origin = 'RecordType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PackageStatusHTFPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_PackageStatusHTFPaketnr: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PackageStatusHTFStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFStatusDatum: TSQLTimeStampField
      FieldName = 'StatusDatum'
      Origin = 'StatusDatum'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFOriginalStyck: TIntegerField
      FieldName = 'OriginalStyck'
      Origin = 'OriginalStyck'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFComplete: TIntegerField
      FieldName = 'Complete'
      Origin = 'Complete'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFFileName: TStringField
      FieldName = 'FileName'
      Origin = 'FileName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object sq_PackageStatusHTFLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFHTF_FS: TStringField
      FieldName = 'HTF_FS'
      Origin = 'HTF_FS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object sq_PackageStatusHTFPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFProductCode: TStringField
      FieldName = 'ProductCode'
      Origin = 'ProductCode'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_PackageStatusHTFALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFPEFC: TIntegerField
      FieldName = 'PEFC'
      Origin = 'PEFC'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sq_PackageStatusHTFDateAndTime: TStringField
      FieldName = 'DateAndTime'
      Origin = 'DateAndTime'
    end
  end
  object sq_PackageStatusHTFByFileName: TFDQuery
    BeforePost = sq_PackageStatusHTFBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.PackageStatusHTF'
      'WHERE LoadNo = :LoadNo')
    Left = 624
    Top = 64
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PackageStatusHTFByFileNameRecordType: TIntegerField
      FieldName = 'RecordType'
      Origin = 'RecordType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PackageStatusHTFByFileNamePrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_PackageStatusHTFByFileNamePaketnr: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PackageStatusHTFByFileNameStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFByFileNameStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFByFileNameStatusDatum: TSQLTimeStampField
      FieldName = 'StatusDatum'
      Origin = 'StatusDatum'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFByFileNameOriginalStyck: TIntegerField
      FieldName = 'OriginalStyck'
      Origin = 'OriginalStyck'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFByFileNameCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFByFileNameDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFByFileNameComplete: TIntegerField
      FieldName = 'Complete'
      Origin = 'Complete'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFByFileNameFileName: TStringField
      FieldName = 'FileName'
      Origin = 'FileName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object sq_PackageStatusHTFByFileNameLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFByFileNameHTF_FS: TStringField
      FieldName = 'HTF_FS'
      Origin = 'HTF_FS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object sq_PackageStatusHTFByFileNamePackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PackageStatusHTFByFileNameLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_HTFPkgStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select htf.*, pt.TotalNoOfPieces, pt.BarCodeID, pt.Gradestamp, p' +
        '.ProductNo, pg.SurfacingNo,'
      'pg.NominalThicknessMM'
      'FROM dbo.PackageStatusHTF htf'
      
        'Left Outer Join dbo.PackageNumber pn on pn.PackageNo = htf.Paket' +
        'nr'
      'and pn.SupplierCode = htf.Prefix'
      
        'Left Outer Join dbo.PackageType pt on pt.PackagetypeNo = pn.Pack' +
        'agetypeNo'
      'Left Outer Join dbo.Product p on p.productno = pt.productno'
      
        'Left Outer Join dbo.ProductGroup pg on pg.ProductGroupNo = p.Pro' +
        'ductGroupNo'
      'WHERE htf.Complete = :Complete'
      
        'Order By htf.FileName, htf.Paketnr, htf.Prefix, htf.RecordType D' +
        'ESC')
    Left = 632
    Top = 128
    ParamData = <
      item
        Name = 'COMPLETE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_HTFPkgStatusRecordType: TIntegerField
      FieldName = 'RecordType'
      Origin = 'RecordType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_HTFPkgStatusPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_HTFPkgStatusPaketnr: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_HTFPkgStatusStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusStatusDatum: TSQLTimeStampField
      FieldName = 'StatusDatum'
      Origin = 'StatusDatum'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusOriginalStyck: TIntegerField
      FieldName = 'OriginalStyck'
      Origin = 'OriginalStyck'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusComplete: TIntegerField
      FieldName = 'Complete'
      Origin = 'Complete'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusFileName: TStringField
      FieldName = 'FileName'
      Origin = 'FileName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object sq_HTFPkgStatusLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusHTF_FS: TStringField
      FieldName = 'HTF_FS'
      Origin = 'HTF_FS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object sq_HTFPkgStatusTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
      ProviderFlags = []
    end
    object sq_HTFPkgStatusBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
      ProviderFlags = []
    end
    object sq_HTFPkgStatusGradestamp: TIntegerField
      FieldName = 'Gradestamp'
      Origin = 'Gradestamp'
      ProviderFlags = []
    end
    object sq_HTFPkgStatusProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sq_HTFPkgStatusSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object sq_HTFPkgStatusNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
      ProviderFlags = []
    end
    object sq_HTFPkgStatusPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusProductCode: TStringField
      FieldName = 'ProductCode'
      Origin = 'ProductCode'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_HTFPkgStatusALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusPEFC: TIntegerField
      FieldName = 'PEFC'
      Origin = 'PEFC'
      ProviderFlags = [pfInUpdate]
    end
    object sq_HTFPkgStatusDateAndTime: TStringField
      FieldName = 'DateAndTime'
      Origin = 'DateAndTime'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_LD: TFDQuery
    BeforePost = sq_LDBeforePost
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'sq_LDIndex01'
        Fields = 'PackageNo;SupplierCode'
      end>
    IndexName = 'sq_LDIndex01'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'LoadDetail'
    SQL.Strings = (
      'SELECT distinct'
      '           LD.LoadNo, '
      '           LD.ShippingPlanNo,'
      '           LD.LoadDetailNo,'
      '           LD.PackageNo,'
      '           LD.NoOfPackages'#9'          ,'
      '           LD.PackageTypeNo,'
      '           LD.SupplierCode'#9'          ,'
      '           LD.PackageOK'#9#9'            ,'
      '           LD.ProblemPackageLog'#9'      ,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      '           LD.DefaultCustShipObjectNo,'
      '          LD.OverrideMatch,'
      '          LD.LIPNo,'
      '          LD.Defsspno,'
      #9'        LD.OverrideRL'
      ''
      'FROM dbo.LoadDetail LD'
      ''
      'WHERE      LD.LoadNo = :LoadNo'
      '')
    Left = 168
    Top = 392
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LDLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_LDShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_LDPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sq_LDNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
      Origin = 'NoOfPackages'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sq_LDPackageOK: TIntegerField
      FieldName = 'PackageOK'
      Origin = 'PackageOK'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDProblemPackageLog: TStringField
      FieldName = 'ProblemPackageLog'
      Origin = 'ProblemPackageLog'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LDCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
      Origin = 'DefaultCustShipObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
      Origin = 'OverrideMatch'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDDefsspno: TIntegerField
      FieldName = 'Defsspno'
      Origin = 'Defsspno'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LDOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_LDMax: TFDQuery
    BeforePost = sq_LDBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'LoadDetail'
    SQL.Strings = (
      'SELECT Max(LD.LoadDetailNo) AS MaxLoadDetailNo'
      'FROM dbo.LoadDetail LD'
      'WHERE      LD.LoadNo = :LoadNo'
      '')
    Left = 168
    Top = 440
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LDMaxMaxLoadDetailNo: TIntegerField
      FieldName = 'MaxLoadDetailNo'
      Origin = 'MaxLoadDetailNo'
      ReadOnly = True
    end
  end
  object sq_GetLDLIPNo: TFDQuery
    BeforePost = sq_LDBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'LoadDetail'
    SQL.Strings = (
      'SELECT LD.LogicalInventoryPointNo AS LIPNo'
      'FROM dbo.PackageNumber LD'
      'WHERE      LD.PackageNo = :PackageNo'
      'and LD.SupplierCode = :SupplierCode')
    Left = 168
    Top = 488
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
    object sq_GetLDLIPNoLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
  end
  object sq_RemovePkgs: TFDQuery
    BeforePost = sq_LDBeforePost
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'LoadDetail'
    SQL.Strings = (
      'Delete dbo.LoadDetail'
      'WHERE dbo.LoadDetail.LoadNo = :LoadNo'
      'and dbo.LoadDetail.PackageNo not in (Select htf.Paketnr FROM'
      'dbo.PackageStatusHTF htf'
      'WHERE htf.Prefix = dbo.LoadDetail.SupplierCode'
      'and htf.LoadNo = dbo.LoadDetail.LoadNo)'
      '')
    Left = 816
    Top = 120
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetLONoByLoadNo: TFDQuery
    BeforePost = sq_LDBeforePost
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'LoadDetail'
    SQL.Strings = (
      'Select ShippingPlanNo AS LONo'
      'FROM dbo.LoadShippingPlan'
      'WHERE LoadNo = :LoadNo')
    Left = 920
    Top = 120
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLONoByLoadNoLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      Required = True
    end
  end
  object sq_UpdateTransferFile: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.TransferFile'
      'Set Complete = :Complete'
      'WHERE FileName = :FileName'
      'AND TransferType = :TransferType')
    Left = 1112
    Top = 288
    ParamData = <
      item
        Name = 'COMPLETE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FILENAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'TRANSFERTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GenSoftSet449SP: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_GenSoftSet449_SP'
    Left = 1016
    Top = 272
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Purpose'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
  object sq_TransferFilesTillHTF: TFDQuery
    Indexes = <
      item
        Active = True
        Name = 'sq_TransferFilesIndex01'
        Fields = 'FileName;TransferType'
      end>
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.TransferFile'
      'WHERE ((TransferType = :TransferType) or (-1 = :TransferType)) '
      'AND Complete = :Complete'
      'AND InOut = :InOut')
    Left = 1016
    Top = 136
    ParamData = <
      item
        Name = 'TRANSFERTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TRANSFERTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COMPLETE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INOUT'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_TransferFilesTillHTFFileName: TStringField
      FieldName = 'FileName'
      Origin = 'FileName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 255
    end
    object sq_TransferFilesTillHTFTransferType: TIntegerField
      FieldName = 'TransferType'
      Origin = 'TransferType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_TransferFilesTillHTFDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_TransferFilesTillHTFCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_TransferFilesTillHTFComplete: TIntegerField
      FieldName = 'Complete'
      Origin = 'Complete'
    end
    object sq_TransferFilesTillHTFSendDate: TSQLTimeStampField
      FieldName = 'SendDate'
      Origin = 'SendDate'
    end
    object sq_TransferFilesTillHTFLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object sq_TransferFilesTillHTFHTF_FS: TStringField
      FieldName = 'HTF_FS'
      Origin = 'HTF_FS'
      FixedChar = True
    end
    object sq_TransferFilesTillHTFLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
    end
    object sq_TransferFilesTillHTFInOut: TIntegerField
      FieldName = 'InOut'
      Origin = 'InOut'
    end
  end
  object mtImport550: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'RecordType'
        DataType = ftInteger
      end
      item
        Name = 'Prefix'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Paketnr'
        DataType = ftInteger
      end
      item
        Name = 'Styck'
        DataType = ftInteger
      end
      item
        Name = 'Mottaget'
        DataType = ftDateTime
      end
      item
        Name = 'KlarTillProduktion'
        DataType = ftDateTime
      end
      item
        Name = 'ProduktionsDatum'
        DataType = ftDateTime
      end
      item
        Name = 'KlarForLeverans'
        DataType = ftDateTime
      end
      item
        Name = 'Utlevererat'
        DataType = ftDateTime
      end
      item
        Name = 'UtlevereringsJournal'
        DataType = ftInteger
      end>
    IndexDefs = <>
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
    Left = 1112
    Top = 162
    object mtImport550RecordType: TIntegerField
      FieldName = 'RecordType'
    end
    object mtImport550Paketnr: TIntegerField
      FieldName = 'Paketnr'
    end
    object mtImport550Prefix: TStringField
      FieldName = 'Prefix'
      Size = 3
    end
    object mtImport550Styck: TIntegerField
      FieldName = 'Styck'
    end
    object mtImport550Mottaget: TStringField
      FieldName = 'Mottaget'
      Size = 10
    end
    object mtImport550KlarTillProduktion: TStringField
      DisplayLabel = 'Klart f'#246'r produktion'
      FieldName = 'KlarTillProduktion'
      Size = 10
    end
    object mtImport550ProduktionsDatum: TStringField
      DisplayLabel = 'Producerat'
      FieldName = 'ProduktionsDatum'
      Size = 10
    end
    object mtImport550KlarForLeverans: TStringField
      DisplayLabel = 'Klar f'#246'r leverans'
      FieldName = 'KlarForLeverans'
      Size = 10
    end
    object mtImport550Utlevererat: TStringField
      FieldName = 'Utlevererat'
      Size = 10
    end
    object mtImport550UtlevereringsJournal: TStringField
      DisplayLabel = 'Utlev.journal'
      FieldName = 'UtlevereringsJournal'
      Size = 10
    end
    object mtImport550ProduktKod: TStringField
      FieldName = 'ProduktKod'
      Size = 30
    end
    object mtImport550PEFC: TIntegerField
      FieldName = 'PEFC'
    end
    object mtImport550ALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object QImport2ASCII550: TQImport3ASCII
    DataSet = mtImport
    Map.Strings = (
      'RecordType=1'
      'Paketnr=3'
      'Prefix=2'
      'Styck=9'
      'ProduktKod=4'
      'PEFC=5'
      'ALMM=6')
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '-'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'yyyyMMdd'
    Formats.LongDateFormat = #39'den '#39'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    OnBeforePost = QImport2ASCII550BeforePost
    FileName = 'C:\VIS\TEMP\5_090817_132800.csv'
    Comma = ';'
    Quote = '"'
    Left = 1112
    Top = 114
  end
  object cdsInvTrfLogg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.InvoiceTrfLogg'
      'WHERE InternalInvoiceNo = 16941')
    Left = 720
    Top = 424
    object cdsInvTrfLoggInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
    end
    object cdsInvTrfLoggInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
    end
    object cdsInvTrfLoggObject2: TStringField
      FieldName = 'Object2'
      Origin = 'Object2'
      Size = 8
    end
    object cdsInvTrfLoggObject5: TStringField
      FieldName = 'Object5'
      Origin = 'Object5'
      Size = 8
    end
    object cdsInvTrfLoggResKontraSerie: TStringField
      FieldName = 'ResKontraSerie'
      Origin = 'ResKontraSerie'
      Size = 8
    end
    object cdsInvTrfLoggKundResKontra: TStringField
      FieldName = 'KundResKontra'
      Origin = 'KundResKontra'
      Size = 8
    end
    object cdsInvTrfLoggForsaljningskonto: TStringField
      FieldName = 'Forsaljningskonto'
      Origin = 'Forsaljningskonto'
      Size = 8
    end
    object cdsInvTrfLoggFrakt_konto: TStringField
      FieldName = 'Frakt_konto'
      Origin = 'Frakt_konto'
      Size = 8
    end
    object cdsInvTrfLoggMoms_konto: TStringField
      FieldName = 'Moms_konto'
      Origin = 'Moms_konto'
      Size = 8
    end
    object cdsInvTrfLoggRounding_Konto: TStringField
      FieldName = 'Rounding_Konto'
      Origin = 'Rounding_Konto'
      Size = 8
    end
    object cdsInvTrfLoggProvision_Konto: TStringField
      FieldName = 'Provision_Konto'
      Origin = 'Provision_Konto'
      Size = 8
    end
    object cdsInvTrfLoggKassaRabattKonto: TStringField
      FieldName = 'KassaRabattKonto'
      Origin = 'KassaRabattKonto'
      Size = 8
    end
    object cdsInvTrfLoggAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object cdsInvTrfLoggRegion: TStringField
      FieldName = 'Region'
      Origin = 'Region'
      Size = 8
    end
    object cdsInvTrfLoggCurrency: TStringField
      FieldName = 'Currency'
      Origin = 'Currency'
      Size = 3
    end
    object cdsInvTrfLoggCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object cdsInvTrfLoggSkatteUpplag: TIntegerField
      FieldName = 'SkatteUpplag'
      Origin = 'SkatteUpplag'
    end
    object cdsInvTrfLoggInvoiceTotal_SEK: TBCDField
      FieldName = 'InvoiceTotal_SEK'
      Origin = 'InvoiceTotal_SEK'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggForsaljningsKonto_SEK: TBCDField
      FieldName = 'ForsaljningsKonto_SEK'
      Origin = 'ForsaljningsKonto_SEK'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggmoms_SEK: TBCDField
      FieldName = 'moms_SEK'
      Origin = 'moms_SEK'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggmoms_For: TBCDField
      FieldName = 'moms_For'
      Origin = 'moms_For'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggRounding_SEK: TBCDField
      FieldName = 'Rounding_SEK'
      Origin = 'Rounding_SEK'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggTotalInvoiceValueNoRounding_SEK: TBCDField
      FieldName = 'TotalInvoiceValueNoRounding_SEK'
      Origin = 'TotalInvoiceValueNoRounding_SEK'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggProvision_SEK: TBCDField
      FieldName = 'Provision_SEK'
      Origin = 'Provision_SEK'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggKassaRabatt_SEK: TBCDField
      FieldName = 'KassaRabatt_SEK'
      Origin = 'KassaRabatt_SEK'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggInvoiceTotal_For: TBCDField
      FieldName = 'InvoiceTotal_For'
      Origin = 'InvoiceTotal_For'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggForsaljningsKonto_For: TBCDField
      FieldName = 'ForsaljningsKonto_For'
      Origin = 'ForsaljningsKonto_For'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggRounding_For: TBCDField
      FieldName = 'Rounding_For'
      Origin = 'Rounding_For'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggProvision_For: TBCDField
      FieldName = 'Provision_For'
      Origin = 'Provision_For'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggTotalInvoiceValueNoRounding_For: TBCDField
      FieldName = 'TotalInvoiceValueNoRounding_For'
      Origin = 'TotalInvoiceValueNoRounding_For'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggKassaRabatt_For: TBCDField
      FieldName = 'KassaRabatt_For'
      Origin = 'KassaRabatt_For'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggfrakt_for: TBCDField
      FieldName = 'frakt_for'
      Origin = 'frakt_for'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
      Origin = 'InvoiceDate'
    end
    object cdsInvTrfLoggVatcode: TIntegerField
      FieldName = 'Vatcode'
      Origin = 'Vatcode'
    end
    object cdsInvTrfLoggInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
    end
    object cdsInvTrfLoggEventDate: TSQLTimeStampField
      FieldName = 'EventDate'
      Origin = 'EventDate'
    end
    object cdsInvTrfLoggUserId: TIntegerField
      FieldName = 'UserId'
      Origin = 'UserId'
    end
    object cdsInvTrfLoggXorID_KundNamn: TStringField
      FieldName = 'XorID_KundNamn'
      Origin = 'XorID_KundNamn'
      Size = 100
    end
    object cdsInvTrfLoggmoms: TBCDField
      FieldName = 'moms'
      Origin = 'moms'
      Precision = 18
      Size = 2
    end
    object cdsInvTrfLoggVaruGrupp: TIntegerField
      FieldName = 'VaruGrupp'
      Origin = 'VaruGrupp'
    end
    object cdsInvTrfLoggPO_Country: TIntegerField
      FieldName = 'PO_Country'
      Origin = 'PO_Country'
    end
    object cdsInvTrfLoggTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
    end
    object cdsInvTrfLoggfrakt_SEK: TBCDField
      FieldName = 'frakt_SEK'
      Origin = 'frakt_SEK'
      Precision = 18
      Size = 0
    end
  end
  object sq_InvTotals: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      ''
      'cr.idXOR,'
      ''
      '(Select Top 1 invd.Konto from dbo.InvoiceDetail invd'
      'Inner Join dbo.FS_Article fsa on fsa.ArticleNo = invd.ArticleNo'
      'WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo'
      '--AND invd.ShippingPlanNo = IL.ShippingPlanNo'
      'AND fsa.ArticleGroupNo = 1) AS FraktKonto,'
      ''
      '(Select Top 1 invd.Konto from dbo.InvoiceDetail invd'
      'Inner Join dbo.FS_Article fsa on fsa.ArticleNo = invd.ArticleNo'
      'WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo'
      '--AND invd.ShippingPlanNo = IL.ShippingPlanNo'
      'AND fsa.ArticleGroupNo = 1) AS FraktKonto,'
      ''
      ''
      
        'isNull((Select SUM(invd.ProductValue) from dbo.InvoiceDetail inv' +
        'd'
      'WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo'
      '--AND invd.ShippingPlanNo = IL.ShippingPlanNo'
      'AND (invd.ArticleNo = 1 or invd.ArticleNo = 3)),0) '
      ''
      '+'
      ''
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'and invd2.TypeOfRow = 3'
      'AND (invd2.ArticleNo = 2 or invd2.ArticleNo = 4))'
      'AS ProduktvardeFOR,'
      ''
      ''
      'ROUND(CAST(('
      ''
      
        'isNull((Select SUM(invd.ProductValue) from dbo.InvoiceDetail inv' +
        'd'
      'WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo'
      '--AND invd.ShippingPlanNo = IL.ShippingPlanNo'
      'AND (invd.ArticleNo = 1 or invd.ArticleNo = 3)),0)'
      ''
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc )'
      ') As decimal(18,2)),2) AS ProduktvardeSEK,'
      ''
      
        'ROUND(CAST((IH.Discount) As decimal(18,2)),2)  AS KassaRabatt_Fo' +
        'r,'
      ''
      'CASE '
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((IH.Discount) As' +
        ' decimal(18,2)),2) '
      'else'
      'ROUND(CAST((  IH.Discount'
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ') As decimal(18,2)),2) '
      'END AS KassaRabatt_SEK,'
      ''
      'ih.PaymentTermsNo,'
      'pte.NoOfDaysDiscount2 AS NoOfDaysDiscount1,'
      'ih.InvoiceDate ,'
      'ih.InvoiceDate +  isnull(pte.NoOfDaysDiscount2,0) AS DueDate,'
      
        'isnull(R.Region,'#39'N/A'#39') AS Region, Adr.CountryNo,  IH.InternalInv' +
        'oiceNo,'
      ''
      
        'ROUND(CAST((  IH.Inv_Value_To_Be_Paid_2     ) As decimal(18,2)),' +
        '2)  AS InvoiceTotal, '
      ' '#9
      '(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) AS XRATE,'
      ''
      'CASE '
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((  IH.Inv_Value_' +
        'To_Be_Paid_2     ) As decimal(18,2)),2) '
      'else'
      'ROUND(CAST((  IH.Inv_Value_To_Be_Paid_2     '
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ') As decimal(18,2)),2) '
      'END AS InvoiceTotal_SEK,'
      ''
      ''
      '--ROUND(CAST((  ISNULL(IH.Total_Product_Value_No_Freight,0) -'
      '--(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        '--dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Int' +
        'ernalInvoiceNo'
      '--AND invd2.TypeOfRow =2)'
      '--     ) As decimal(18,2)),2) AS INVVALNOFREIGHT, --varuv'#228'rde'
      ''
      
        '--CASE WHEN Curr.CurrencyName = '#39'SEK'#39' then ROUND(CAST((  IH.Tota' +
        'l_Product_Value_No_Freight -'
      '--(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        '--dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Int' +
        'ernalInvoiceNo'
      '--AND invd2.TypeOfRow =2)'
      '--     ) As decimal(18,2)),2)'
      '--else'
      '--ROUND(CAST(('
      '--(IH.Total_Product_Value_No_Freight '
      '---'
      '--('
      '--(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        '--dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Int' +
        'ernalInvoiceNo'
      '--AND invd2.TypeOfRow =2)))'
      '     '
      '--* '
      ''
      '-- '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      '--'#9'FROM ExChangeRate EX --, Currency C'
      '--'#9'WHERE'
      '--'#9'EX.CurrencyNo = IH.CurrencyNo'
      '--'#9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        '--'#9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom ' +
        'desc ) '
      ''
      '--) As decimal(18,2)),2) '
      ''
      ''
      '--END AS InvValnofreight_SEK, --varuv'#228'rde'
      ''
      ''
      ''
      'ROUND(CAST((  --ISNULL(ih.SUM_FreigthCost,0) +'
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'AND (invd2.ArticleNo = 2 or invd2.ArticleNo = 4))'
      '     ) As decimal(18,2)),2) AS FRAKT_CURR, --Fraktv'#228'rde Curr'
      ''
      
        'CASE WHEN Curr.CurrencyName = '#39'SEK'#39' then ROUND(CAST(( --ih.SUM_F' +
        'reigthCost+'
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'AND (invd2.ArticleNo = 2 or invd2.ArticleNo = 4))'
      '     ) As decimal(18,2)),2)'
      'else'
      'ROUND(CAST(('
      '(ih.SUM_FreigthCost'
      '+'
      '('
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'AND (invd2.ArticleNo = 2 or invd2.ArticleNo = 4))))'
      '     '
      '* '
      ''
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ''
      ') As decimal(18,2)),2) '
      ''
      ''
      'END AS FRAKT_SEK, -- Frakt v'#228'rde SEK'
      ''
      ''
      ''
      
        'ROUND(CAST((  isnull(IH.VAT_Value,0)     ) As decimal(18,2)),2) ' +
        'AS VAT_FOR,'
      ''
      ''
      'CASE'
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((isnull(IH.VAT_V' +
        'alue,0)) As decimal(18,2)),2)'
      'else'
      'ROUND(CAST((  IH.VAT_Value'
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc )'
      ') As decimal(18,2)),2)'
      'END AS VAT_SEK,'
      ''
      ''
      ''
      'isNull(IH.VAT_OnInvoice,0) AS Skatteupplag,'
      'Curr.CurrencyName AS Curr,'
      ''
      ''
      'ROUND(CAST((spi.SHIPPED_NOMM3) As decimal(18,3)),3) AS NM3,'
      ''
      'c.O5,'
      'IH.AgentNo,'
      ''
      
        'ROUND(CAST((IH.Commission) As decimal(18,2)),2) AS Commission_fo' +
        'r,'
      ''
      'CASE '
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((IH.Commission) ' +
        'As decimal(18,2)),2) '
      'else'
      'ROUND(CAST((  IH.Commission'
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ') As decimal(18,2)),2) '
      'END AS Commission_SEK,'
      ''
      
        'ROUND(CAST((IH.Tot_Inv_Inc_Freight_Extras) As decimal(18,2)),2) ' +
        ' AS TotalInvoiceValueNoRounding_For,'
      ''
      'CASE '
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((IH.Tot_Inv_Inc_' +
        'Freight_Extras) As decimal(18,2)),2) '
      'else'
      'ROUND(CAST((  IH.Tot_Inv_Inc_Freight_Extras'
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ') As decimal(18,2)),2) '
      'END AS TotalInvoiceValueNoRounding_SEK,'
      'IH.CustomerName,'
      'IH.quickInvoice,'
      ''
      'IH.Trading AS Trading,'
      'smg.SalesGroupNo,'
      'IH.SupplierNo,'
      ''
      '(Select TOP 1 isnull(pg.SequenceNo,0) FROM'
      'dbo.InvoiceDetail invd2 '
      'Inner Join dbo.Product P on P.ProductNo = invd2.ProductNo'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'WHERE invd2.InternalInvoiceNo = IH.InternalInvoiceNo'
      'AND invd2.TypeOfRow =1) AS VaruGrupp,'
      ''
      '(Select TOP 1 AdrPO.CountryNo FROM'
      'dbo.InvoiceLO ILO'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSHSales on CSHSales.S' +
        'hippingPlanNo = ILO.ShippingPlanNo'
      
        'Inner Join dbo.OrderTradingLinkMulti OTL on OTL.SalesOrderNo = C' +
        'SHSales.OrderNo'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSHPO on CSHPO.OrderNo' +
        ' = OTL.POOrderNo'
      
        'Inner Join dbo.InvoiceLO ILOPO on ILOPO.ShippingPlanNo = CSHPO.S' +
        'hippingPlanNo'
      
        'Inner Join dbo.InvoiceHeader IHPO on IHPO.InternalInvoiceNo = IL' +
        'OPO.InternalInvoiceNo'
      
        'Inner Join dbo.Address AdrPO ON AdrPO.AddressNo = IHPO.ClientBil' +
        'lingAddressNo'
      'WHERE'
      'ILO.InternalInvoiceNo = IH.InternalInvoiceNo) AS PO_CountryNo,'
      ''
      'IH.invoicetype'
      ''
      'FROM dbo.InvoiceHeader IH'
      
        'Left Outer Join dbo.SalesManGroupRow smg on smg.UserID = IH.Resp' +
        'onsibleSeller'
      ''
      
        'Inner Join dbo.Address Adr ON Adr.AddressNo = IH.ClientBillingAd' +
        'dressNo'
      'Left Outer Join dbo.Regions R ON R.CountryNo = Adr.CountryNo'
      'Inner Join dbo.Currency Curr ON Curr.CurrencyNo = IH.CurrencyNo'
      
        'Left Outer Join dbo.PaymentTerms pte ON pte.PaymentTermsNo = ih.' +
        'PaymentTermsNo'
      'Inner Join dbo.ClientRole cr on cr.clientno = ih.customerno'
      
        'Left Outer Join dbo.shippedPerInvoice spi on spi.InternalInvoice' +
        'No = IH.InternalInvoiceNo'
      'Inner Join dbo.Client c on c.clientno = ih.customerno'
      'WHERE IH.InternalInvoiceNo = :InternalInvoiceNo'
      'AND cr.RoleType = 1'
      '')
    Left = 680
    Top = 528
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_InvTotalsidXOR: TStringField
      FieldName = 'idXOR'
      Origin = 'idXOR'
      Size = 12
    end
    object sq_InvTotalsKassaRabatt_For: TBCDField
      FieldName = 'KassaRabatt_For'
      Origin = 'KassaRabatt_For'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsKassaRabatt_SEK: TBCDField
      FieldName = 'KassaRabatt_SEK'
      Origin = 'KassaRabatt_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
    end
    object sq_InvTotalsNoOfDaysDiscount1: TIntegerField
      FieldName = 'NoOfDaysDiscount1'
      Origin = 'NoOfDaysDiscount1'
    end
    object sq_InvTotalsInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
      Origin = 'InvoiceDate'
    end
    object sq_InvTotalsDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
      Origin = 'DueDate'
      ReadOnly = True
    end
    object sq_InvTotalsRegion: TStringField
      FieldName = 'Region'
      Origin = 'Region'
      ReadOnly = True
      Required = True
    end
    object sq_InvTotalsCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object sq_InvTotalsInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_InvTotalsInvoiceTotal: TBCDField
      FieldName = 'InvoiceTotal'
      Origin = 'InvoiceTotal'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsXRATE: TFloatField
      FieldName = 'XRATE'
      Origin = 'XRATE'
      ReadOnly = True
    end
    object sq_InvTotalsInvoiceTotal_SEK: TBCDField
      FieldName = 'InvoiceTotal_SEK'
      Origin = 'InvoiceTotal_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsFRAKT_CURR: TBCDField
      FieldName = 'FRAKT_CURR'
      Origin = 'FRAKT_CURR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsFRAKT_SEK: TBCDField
      FieldName = 'FRAKT_SEK'
      Origin = 'FRAKT_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsVAT_FOR: TBCDField
      FieldName = 'VAT_FOR'
      Origin = 'VAT_FOR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsVAT_SEK: TBCDField
      FieldName = 'VAT_SEK'
      Origin = 'VAT_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsSkatteupplag: TSmallintField
      FieldName = 'Skatteupplag'
      Origin = 'Skatteupplag'
      ReadOnly = True
      Required = True
    end
    object sq_InvTotalsCurr: TStringField
      FieldName = 'Curr'
      Origin = 'Curr'
      Required = True
      Size = 5
    end
    object sq_InvTotalsNM3: TBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object sq_InvTotalsO5: TStringField
      FieldName = 'O5'
      Origin = 'O5'
      Size = 8
    end
    object sq_InvTotalsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object sq_InvTotalsCommission_for: TBCDField
      FieldName = 'Commission_for'
      Origin = 'Commission_for'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsCommission_SEK: TBCDField
      FieldName = 'Commission_SEK'
      Origin = 'Commission_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsTotalInvoiceValueNoRounding_For: TBCDField
      FieldName = 'TotalInvoiceValueNoRounding_For'
      Origin = 'TotalInvoiceValueNoRounding_For'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsTotalInvoiceValueNoRounding_SEK: TBCDField
      FieldName = 'TotalInvoiceValueNoRounding_SEK'
      Origin = 'TotalInvoiceValueNoRounding_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsCustomerName: TStringField
      FieldName = 'CustomerName'
      Origin = 'CustomerName'
      FixedChar = True
      Size = 80
    end
    object sq_InvTotalsquickInvoice: TIntegerField
      FieldName = 'quickInvoice'
      Origin = 'quickInvoice'
    end
    object sq_InvTotalsTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
    end
    object sq_InvTotalsSalesGroupNo: TIntegerField
      FieldName = 'SalesGroupNo'
      Origin = 'SalesGroupNo'
    end
    object sq_InvTotalsSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object sq_InvTotalsVaruGrupp: TIntegerField
      FieldName = 'VaruGrupp'
      Origin = 'VaruGrupp'
      ReadOnly = True
    end
    object sq_InvTotalsPO_CountryNo: TIntegerField
      FieldName = 'PO_CountryNo'
      Origin = 'PO_CountryNo'
      ReadOnly = True
    end
    object sq_InvTotalsinvoicetype: TIntegerField
      FieldName = 'invoicetype'
      Origin = 'invoicetype'
    end
    object sq_InvTotalsProduktvardeFOR: TFloatField
      FieldName = 'ProduktvardeFOR'
      Origin = 'ProduktvardeFOR'
      ReadOnly = True
      Required = True
    end
    object sq_InvTotalsProduktvardeSEK: TBCDField
      FieldName = 'ProduktvardeSEK'
      Origin = 'ProduktvardeSEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sq_InvTotalsFraktKonto: TStringField
      FieldName = 'FraktKonto'
      Origin = 'FraktKonto'
      ReadOnly = True
      Size = 4
    end
  end
  object sq_invoiceTrf: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.SQLConn_XOR
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT Invno FROM ALVESQL14.xor_VIDA.dbo.voulogx'
      'WHERE invno = :invno'
      'AND enumerator = :enumerator')
    Left = 808
    Top = 448
    ParamData = <
      item
        Name = 'INVNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ENUMERATOR'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sp_VIS_xp_voulogwrite: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.SQLConn_XOR
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'VIS_xp_voulogwrite_ALVE_II'
    Left = 920
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@cid'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 3
        Name = '@logtype'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@logdate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@enumerator'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 6
        Name = '@invno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@vouno'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 8
        Name = '@logno'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 9
        Name = '@freetext'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 10
        Name = '@Serie'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 8
      end>
  end
  object sp_VIS_xp_vourowlogwrite: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.SQLConn_XOR
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'VIS_xp_vourowlogwrite_ALVE'
    Left = 920
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
        Name = '@logno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@account'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 4
        Name = '@date'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@currency'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 6
        Name = '@amount'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@foramount'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@number'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@vatcode'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@crtype'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@creator'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end
      item
        Position = 12
        Name = '@o2'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 13
        Name = '@o5'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 14
        Name = '@freetext'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 15
        Name = '@LogError'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_xp_ldglogwriteOLD: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.SQLConn_XOR
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'VIS_xp_ldglogwrite_ALVE'
    Left = 920
    Top = 488
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@cid'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 3
        Name = '@person'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end
      item
        Position = 4
        Name = '@type'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@enum'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 6
        Name = '@invno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@seq'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@org'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 9
        Name = '@bookdate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@invdate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@duedate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@currency'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 13
        Name = '@amount'
        DataType = ftFMTBcd
        Precision = 28
        NumericScale = 8
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@foramount'
        DataType = ftFMTBcd
        Precision = 28
        NumericScale = 8
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@vat'
        DataType = ftFMTBcd
        Precision = 28
        NumericScale = 8
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@vatcode'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 17
        Name = '@account'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 18
        Name = '@approval1'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 19
        Name = '@logno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = '@vouno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 21
        Name = '@serie'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 22
        Name = '@o2'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 23
        Name = '@o5'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object sq_Region: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Region FROM dbo.Regions R'
      'WHERE CountryNo = :CountryNo')
    Left = 720
    Top = 360
    ParamData = <
      item
        Name = 'COUNTRYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_RegionRegion: TStringField
      FieldName = 'Region'
      Origin = 'Region'
    end
  end
  object dsInvoiceShipToAddress_II: TDataSource
    DataSet = cdsInvoiceShipToAddress_II
    Left = 728
    Top = 88
  end
  object cdsInvoiceShipToAddress_II: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsinvShipToAdr_Index01_II'
        Fields = 'InternalInvoiceNo'
      end>
    IndexName = 'cdsinvShipToAdr_Index01_II'
    MasterSource = dsrcInvoiceHead_II
    MasterFields = 'InternalInvoiceNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'InvoiceShipToAddress'
    SQL.Strings = (
      'Select'
      'IST.InternalInvoiceNo,'
      'IST.ShippingPlanNo,'
      'IST.Reference,'
      'IST.AddressNo,'
      ''
      'Addr.AddressName,'
      ''
      
        'isNull(RTRIM(Addr.AddressLine1),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.Addre' +
        'ssLine2),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.AddressLine3),'#39#39')+'#39', '#39'+isNul' +
        'l(RTRIM(Addr.AddressLine4),'#39#39')'
      
        '+'#39', '#39'+isNull(RTRIM(AdrCY.CityName),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.Po' +
        'stalCode),'#39#39')+'#39', '#39'+isNull(RTRIM(Addr.StateOrProvince),'#39#39')+'#39', '#39'+i' +
        'sNull(RTRIM( AdrCtry.CountryName ),'#39#39') as ADDR,'
      ''
      'Addr.AddressLine1,'
      'Addr.AddressLine2,'
      'Addr.AddressLine3,'
      'Addr.AddressLine4,'
      'Addr.StateOrProvince    AS STATE,'
      'Addr.PostalCode         AS POSTAL_CODE,'
      'AdrCY.CityName'#9'        AS CITY,'
      'AdrCtry.CountryName'#9'AS COUNTRY'
      ''
      'from dbo.InvoiceShipToAddress IST'
      ' Left Outer Join dbo.Address Addr'#9
      ' '#9'INNER JOIN dbo.CITY'#9#9#9'AdrCY'#9'ON'#9'AdrCY.CityNo '#9#9'= Addr.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9#9'AdrCtry'#9'ON'#9'AdrCtry.CountryNo '#9'= Addr.C' +
        'ountryNo'
      '  ON Addr.AddressNo = IST.AddressNo'
      ''
      'WHERE IST.InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 728
    Top = 32
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoiceShipToAddress_IIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceShipToAddress_IIShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInvoiceShipToAddress_IIReference: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cdsInvoiceShipToAddress_IIAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoiceShipToAddress_IIAddressName: TStringField
      DisplayLabel = 'Adressnamn'
      FieldName = 'AddressName'
      Origin = 'AddressName'
      ProviderFlags = []
      Size = 80
    end
    object cdsInvoiceShipToAddress_IIADDR: TStringField
      DisplayLabel = 'Adressrad 1..4'
      FieldName = 'ADDR'
      Origin = 'ADDR'
      ProviderFlags = []
      Size = 314
    end
    object cdsInvoiceShipToAddress_IIAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      ProviderFlags = []
      Size = 40
    end
    object cdsInvoiceShipToAddress_IIAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceShipToAddress_IIAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceShipToAddress_IIAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceShipToAddress_IISTATE: TStringField
      DisplayLabel = 'Stat'
      FieldName = 'STATE'
      Origin = 'STATE'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsInvoiceShipToAddress_IIPOSTAL_CODE: TStringField
      DisplayLabel = 'Postnr'
      FieldName = 'POSTAL_CODE'
      Origin = 'POSTAL_CODE'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsInvoiceShipToAddress_IICITY: TStringField
      DisplayLabel = 'Ort'
      FieldName = 'CITY'
      Origin = 'CITY'
      ProviderFlags = []
      Size = 50
    end
    object cdsInvoiceShipToAddress_IICOUNTRY: TStringField
      DisplayLabel = 'Land'
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      ProviderFlags = []
      Size = 30
    end
  end
  object cds_Att_Ext_LO: TFDQuery
    AfterInsert = cds_Att_Ext_LOAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select AEL.InternalInvoiceNo,'
      'AEL.ShippingPlanNo,'
      'AEL.SequensNo,'
      'AEL.AmountAttested'
      'FROM dbo.Att_Ext_LO AEL'
      'WHERE AEL.SequensNo = :SequensNo')
    Left = 504
    Top = 488
    ParamData = <
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FD_InsAttLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.Att_Ext_LO(SequensNo, InternalInvoiceNo, Shippin' +
        'gPlanNo, AmountAttested)'
      
        'Select :SequensNo, :InternalInvoiceNo, :ShippingPlanNo, :AmountA' +
        'ttested'
      'Where :SequensNo not in (Select eal.SequensNo'
      'From dbo.Att_Ext_LO eal'
      'WHERE eal.ShippingPlanNo = :ShippingPlanNo)')
    Left = 408
    Top = 344
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
      end
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object adDeleteAttExtLO: TFDQuery
    AfterInsert = cds_Att_Ext_LOAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.Att_Ext_LO'
      'WHERE SequensNo = :SequensNo')
    Left = 408
    Top = 448
    ParamData = <
      item
        Name = 'SEQUENSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetPOCountry: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select AdrPO.CountryNo FROM'
      'dbo.CSHTradingLink CTL'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSH_PO on CSH_PO.Shipp' +
        'ingPlanNo = CTL.POShippingPlanNo'
      'Inner Join dbo.Orders oh on oh.OrderNo = CSH_PO.OrderNo'
      
        'Inner Join dbo.Address AdrPO ON AdrPO.AddressNo = oh.ClientBilli' +
        'ngAddressNo'
      'WHERE'
      'CTL.SalesShippingPlanNo = :SalesShippingPlanNo')
    Left = 408
    Top = 400
    ParamData = <
      item
        Name = 'SALESSHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPOCountryCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
  end
  object sq_FSKonton: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'cr.idXOR,'
      ''
      
        'ROUND(CAST((IH.Discount) As decimal(18,2)),2)  AS KassaRabatt_Fo' +
        'r,'
      ''
      'CASE '
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((IH.Discount) As' +
        ' decimal(18,2)),2) '
      'else'
      'ROUND(CAST((  IH.Discount'
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ') As decimal(18,2)),2) '
      'END AS KassaRabatt_SEK,'
      ''
      'ih.PaymentTermsNo,'
      'pte.NoOfDaysDiscount2 AS NoOfDaysDiscount1,'
      'ih.InvoiceDate ,'
      'ih.InvoiceDate +  isnull(pte.NoOfDaysDiscount2,0) AS DueDate,'
      
        'isnull(R.Region,'#39'N/A'#39') AS Region, Adr.CountryNo,  IH.InternalInv' +
        'oiceNo,'
      
        'ROUND(CAST((  IH.Inv_Value_To_Be_Paid_2     ) As decimal(18,2)),' +
        '2)  AS InvoiceTotal, '
      ' '#9
      '(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) AS XRATE,'
      ''
      'CASE '
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((  IH.Inv_Value_' +
        'To_Be_Paid_2     ) As decimal(18,2)),2) '
      'else'
      'ROUND(CAST((  IH.Inv_Value_To_Be_Paid_2     '
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ') As decimal(18,2)),2) '
      'END AS InvoiceTotal_SEK,'
      ''
      ''
      'ROUND(CAST((  ISNULL(IH.Total_Product_Value_No_Freight,0) -'
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'AND invd2.TypeOfRow =2)'
      '     ) As decimal(18,2)),2) AS INVVALNOFREIGHT, --varuv'#228'rde'
      ''
      
        'CASE WHEN Curr.CurrencyName = '#39'SEK'#39' then ROUND(CAST((  IH.Total_' +
        'Product_Value_No_Freight -'
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'AND invd2.TypeOfRow =2)'
      '     ) As decimal(18,2)),2)'
      'else'
      'ROUND(CAST(('
      '(IH.Total_Product_Value_No_Freight '
      '-'
      '('
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'AND invd2.TypeOfRow =2)))'
      '     '
      '* '
      ''
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ''
      ') As decimal(18,2)),2) '
      ''
      ''
      'END AS InvValnofreight_SEK, --varuv'#228'rde'
      ''
      ''
      ''
      'ROUND(CAST((  ISNULL(ih.SUM_FreigthCost,0) +'
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'AND invd2.TypeOfRow =2)'
      '     ) As decimal(18,2)),2) AS FRAKT_CURR, --Fraktv'#228'rde Curr'
      ''
      
        'CASE WHEN Curr.CurrencyName = '#39'SEK'#39' then ROUND(CAST(( ih.SUM_Fre' +
        'igthCost+'
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'AND invd2.TypeOfRow =2)'
      '     ) As decimal(18,2)),2)'
      'else'
      'ROUND(CAST(('
      '(ih.SUM_FreigthCost'
      '+'
      '('
      '(Select isnull(SUM(invd2.ProductValue),0) FROM'
      
        'dbo.InvoiceDetail invd2 WHERE invd2.InternalInvoiceNo = IH.Inter' +
        'nalInvoiceNo'
      'AND invd2.TypeOfRow =2)))'
      '     '
      '* '
      ''
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ''
      ') As decimal(18,2)),2) '
      ''
      ''
      'END AS FRAKT_SEK, -- Frakt v'#228'rde SEK'
      ''
      ''
      ''
      
        'ROUND(CAST((  isnull(IH.VAT_Value,0)     ) As decimal(18,2)),2) ' +
        'AS VAT_FOR,'
      ''
      ''
      'CASE'
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((isnull(IH.VAT_V' +
        'alue,0)) As decimal(18,2)),2)'
      'else'
      'ROUND(CAST((  IH.VAT_Value'
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc )'
      ') As decimal(18,2)),2)'
      'END AS VAT_SEK,'
      ''
      ''
      ''
      'isNull(IH.VAT_OnInvoice,0) AS Skatteupplag,'
      'Curr.CurrencyName AS Curr,'
      ''
      ''
      'ROUND(CAST((spi.SHIPPED_NOMM3) As decimal(18,3)),3) AS NM3,'
      ''
      'c.O5,'
      'IH.AgentNo,'
      ''
      
        'ROUND(CAST((IH.Commission) As decimal(18,2)),2) AS Commission_fo' +
        'r,'
      ''
      'CASE '
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((IH.Commission) ' +
        'As decimal(18,2)),2) '
      'else'
      'ROUND(CAST((  IH.Commission'
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ') As decimal(18,2)),2) '
      'END AS Commission_SEK,'
      ''
      
        'ROUND(CAST((IH.Tot_Inv_Inc_Freight_Extras) As decimal(18,2)),2) ' +
        ' AS TotalInvoiceValueNoRounding_For,'
      ''
      'CASE '
      
        'WHEN Curr.CurrencyName = '#39'SEK'#39'  then ROUND(CAST((IH.Tot_Inv_Inc_' +
        'Freight_Extras) As decimal(18,2)),2) '
      'else'
      'ROUND(CAST((  IH.Tot_Inv_Inc_Freight_Extras'
      '*'
      ' '#9'(Select top 1 IsNull(EX.ExChangeRate, 0)'
      #9'FROM ExChangeRate EX --, Currency C'
      #9'WHERE'
      #9'EX.CurrencyNo = IH.CurrencyNo'
      #9'AND EX.ValidFrom <= IH.InvoiceDate'
      
        #9'group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom de' +
        'sc ) '
      ') As decimal(18,2)),2) '
      'END AS TotalInvoiceValueNoRounding_SEK,'
      'IH.CustomerName,'
      'IH.quickInvoice,'
      ''
      'IH.Trading AS Trading,'
      'smg.SalesGroupNo,'
      'IH.SupplierNo,'
      '(Select TOP 1 isnull(pg.SequenceNo,0) FROM'
      'dbo.InvoiceDetail invd2 '
      'Inner Join dbo.Product P on P.ProductNo = invd2.ProductNo'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'WHERE invd2.InternalInvoiceNo = IH.InternalInvoiceNo'
      'AND invd2.TypeOfRow =1) AS VaruGrupp,'
      ''
      '(Select TOP 1 AdrPO.CountryNo FROM'
      'dbo.InvoiceLO ILO'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSHSales on CSHSales.S' +
        'hippingPlanNo = ILO.ShippingPlanNo'
      
        'Inner Join dbo.OrderTradingLinkMulti OTL on OTL.SalesOrderNo = C' +
        'SHSales.OrderNo'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSHPO on CSHPO.OrderNo' +
        ' = OTL.POOrderNo'
      
        'Inner Join dbo.InvoiceLO ILOPO on ILOPO.ShippingPlanNo = CSHPO.S' +
        'hippingPlanNo'
      
        'Inner Join dbo.InvoiceHeader IHPO on IHPO.InternalInvoiceNo = IL' +
        'OPO.InternalInvoiceNo'
      
        'Inner Join dbo.Address AdrPO ON AdrPO.AddressNo = IHPO.ClientBil' +
        'lingAddressNo'
      'WHERE'
      'ILO.InternalInvoiceNo = IH.InternalInvoiceNo) AS PO_CountryNo,'
      ''
      'IH.invoicetype'
      ''
      'FROM dbo.InvoiceHeader IH'
      
        'Left Outer Join dbo.SalesManGroupRow smg on smg.UserID = IH.Resp' +
        'onsibleSeller'
      ''
      
        'Inner Join dbo.Address Adr ON Adr.AddressNo = IH.ClientBillingAd' +
        'dressNo'
      'Left Outer Join dbo.Regions R ON R.CountryNo = Adr.CountryNo'
      'Inner Join dbo.Currency Curr ON Curr.CurrencyNo = IH.CurrencyNo'
      
        'Left Outer Join dbo.PaymentTerms pte ON pte.PaymentTermsNo = ih.' +
        'PaymentTermsNo'
      'Inner Join dbo.ClientRole cr on cr.clientno = ih.customerno'
      
        'Left Outer Join dbo.shippedPerInvoice spi on spi.InternalInvoice' +
        'No = IH.InternalInvoiceNo'
      'Inner Join dbo.Client c on c.clientno = ih.customerno'
      ''
      'WHERE IH.InternalInvoiceNo = :InternalInvoiceNo'
      'AND cr.RoleType = 1'
      '')
    Left = 600
    Top = 520
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object StringField1: TStringField
      FieldName = 'idXOR'
      Origin = 'idXOR'
      Size = 12
    end
    object BCDField1: TBCDField
      FieldName = 'KassaRabatt_For'
      Origin = 'KassaRabatt_For'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField2: TBCDField
      FieldName = 'KassaRabatt_SEK'
      Origin = 'KassaRabatt_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IntegerField1: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
    end
    object IntegerField2: TIntegerField
      FieldName = 'NoOfDaysDiscount1'
      Origin = 'NoOfDaysDiscount1'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'InvoiceDate'
      Origin = 'InvoiceDate'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'DueDate'
      Origin = 'DueDate'
      ReadOnly = True
    end
    object StringField2: TStringField
      FieldName = 'Region'
      Origin = 'Region'
      ReadOnly = True
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object IntegerField4: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BCDField3: TBCDField
      FieldName = 'InvoiceTotal'
      Origin = 'InvoiceTotal'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object FloatField1: TFloatField
      FieldName = 'XRATE'
      Origin = 'XRATE'
      ReadOnly = True
    end
    object BCDField4: TBCDField
      FieldName = 'InvoiceTotal_SEK'
      Origin = 'InvoiceTotal_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField5: TBCDField
      FieldName = 'INVVALNOFREIGHT'
      Origin = 'INVVALNOFREIGHT'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField6: TBCDField
      FieldName = 'InvValnofreight_SEK'
      Origin = 'InvValnofreight_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField7: TBCDField
      FieldName = 'FRAKT_CURR'
      Origin = 'FRAKT_CURR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField8: TBCDField
      FieldName = 'FRAKT_SEK'
      Origin = 'FRAKT_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField9: TBCDField
      FieldName = 'VAT_FOR'
      Origin = 'VAT_FOR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField10: TBCDField
      FieldName = 'VAT_SEK'
      Origin = 'VAT_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object SmallintField1: TSmallintField
      FieldName = 'Skatteupplag'
      Origin = 'Skatteupplag'
      ReadOnly = True
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'Curr'
      Origin = 'Curr'
      Required = True
      Size = 5
    end
    object BCDField11: TBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'O5'
      Origin = 'O5'
      Size = 8
    end
    object IntegerField5: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object BCDField12: TBCDField
      FieldName = 'Commission_for'
      Origin = 'Commission_for'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField13: TBCDField
      FieldName = 'Commission_SEK'
      Origin = 'Commission_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField14: TBCDField
      FieldName = 'TotalInvoiceValueNoRounding_For'
      Origin = 'TotalInvoiceValueNoRounding_For'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object BCDField15: TBCDField
      FieldName = 'TotalInvoiceValueNoRounding_SEK'
      Origin = 'TotalInvoiceValueNoRounding_SEK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'CustomerName'
      Origin = 'CustomerName'
      FixedChar = True
      Size = 80
    end
    object IntegerField6: TIntegerField
      FieldName = 'quickInvoice'
      Origin = 'quickInvoice'
    end
    object IntegerField7: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
    end
    object IntegerField8: TIntegerField
      FieldName = 'SalesGroupNo'
      Origin = 'SalesGroupNo'
    end
    object IntegerField9: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object IntegerField10: TIntegerField
      FieldName = 'VaruGrupp'
      Origin = 'VaruGrupp'
      ReadOnly = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'PO_CountryNo'
      Origin = 'PO_CountryNo'
      ReadOnly = True
    end
    object IntegerField12: TIntegerField
      FieldName = 'invoicetype'
      Origin = 'invoicetype'
    end
  end
  object sq_Del_AttestKoppling: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete FROM dbo.Attestrow'
      'WHERE '
      'internalinvoiceno = :internalinvoiceno'
      'and ShippingPlanNo = :ShippingPlanNo'
      'AND SequensNo = :SequensNo'
      'and InvoiceDetailNo = :InvoiceDetailNo')
    Left = 408
    Top = 544
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
        Name = 'INVOICEDETAILNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GenSoftSet700790_SP: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_GenSoftSet700790_SP'
    Left = 1016
    Top = 464
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetPackageData: TFDQuery
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select psh.PaketNr, psh.ProductNo, isNull(pn.PackageNo,-1) AS LI' +
        'P_PkgNo,'
      'psh.FileName'
      'FROM dbo.PackageStatusHTF psh'
      
        'Left Outer Join dbo.PackageNumber pn on pn.PackageNo = psh.Paket' +
        'nr'
      'and pn.SupplierCode = psh.Prefix'
      'and pn.Status = 1'
      'WHERE psh.LoadNo = :LoadNo'
      'AND psh.RecordType = 500')
    Left = 1112
    Top = 344
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPackageDataProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'LIP_PkgNo'
    end
    object sq_GetPackageDataLIP_PkgNo: TIntegerField
      FieldName = 'LIP_PkgNo'
      Origin = 'LIP_PkgNo'
      ReadOnly = True
      Required = True
    end
    object sq_GetPackageDataPaketNr: TIntegerField
      FieldName = 'PaketNr'
      Origin = 'PaketNr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetPackageDataFileName: TStringField
      FieldName = 'FileName'
      Origin = 'FileName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 255
    end
  end
  object sq_GetFileNameOfLoadNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select FileName FROM dbo.TransferFile'
      'WHERE LoadNo = :LoadNo')
    Left = 1112
    Top = 392
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetFileNameOfLoadNoFileName: TStringField
      FieldName = 'FileName'
      Origin = 'FileName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 255
    end
  end
  object sq_GetNettoPris: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Netto.ValueField FROM dbo.OrderLineCostSum Netto'
      'WHERE Netto.OrderNo = :OrderNo'
      'and Netto.OrderLineNo = :OrderLineNo'
      'and Netto.RowOrderNo = 6')
    Left = 168
    Top = 168
    ParamData = <
      item
        Name = 'ORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORDERLINENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetNettoPrisValueField: TFloatField
      FieldName = 'ValueField'
      Origin = 'ValueField'
    end
  end
  object sq_GetBruttoPris: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Netto.ValueField FROM dbo.OrderLineCostSum Netto'
      'WHERE Netto.OrderNo = :OrderNo'
      'and Netto.OrderLineNo = :OrderLineNo'
      'and Netto.RowOrderNo = 1')
    Left = 392
    Top = 192
    ParamData = <
      item
        Name = 'ORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORDERLINENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetBruttoPrisValueField: TFloatField
      FieldName = 'ValueField'
      Origin = 'ValueField'
    end
  end
  object sq_InsInvNo: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsInvoiceNumbersInvNo'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cdsInvoiceNumbersInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'INSERT INTO dbo.InvoiceNumber(InvoiceNo, InternalInvoiceNo, User' +
        'Created, UserModified, DateCreated)'
      
        'VALUES(:InvoiceNo, :InternalInvoiceNo, :UserCreated, :UserModifi' +
        'ed, :DateCreated)'
      '')
    Left = 40
    Top = 752
    ParamData = <
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCREATED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERMODIFIED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sq_CopyLoad: TFDQuery
    Left = 40
    Top = 808
  end
  object sp_vis_CopyLoad: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CopyLoad'
    Left = 144
    Top = 800
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@CreateUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@InternalInvoiceNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@NewInternalInvoiceNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetOrgInvoiceNoByCredit: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select InternalInvoiceNo from dbo.Invoice_Credited'
      'Where NewInternalInvoiceNo = :NewInternalInvoiceNo')
    Left = 264
    Top = 824
    ParamData = <
      item
        Name = 'NEWINTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetOrgInvoiceNoByCreditInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object FDQuery1: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsInvoiceNumbersInvNo'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cdsInvoiceNumbersInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT InvoiceNo FROM dbo.InvoiceNumber'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    Left = 480
    Top = 832
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        ParamType = ptInput
      end>
    object IntegerField13: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField14: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      Required = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
    end
    object SmallintField3: TSmallintField
      FieldName = 'UserModified'
      Origin = 'UserModified'
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object sq_GetArticleNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select TOP 1 FSAL.ArticleNo'
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.Loaddetail LD'#9#9#9'ON '#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.CustShipP' +
        'lanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON '#9'CSH.ShippingPl' +
        'anNo = CSD.ShippingPlanNo'
      ''
      
        'INNER JOIN dbo.OrderLine OL'#9#9#9'ON '#9'OL.OrderLineNo = CSD.OrderLine' +
        'No'
      #9#9#9#9#9#9'AND '#9'OL.OrderNo = CSD.OrderNo'
      ''
      ''
      
        'INNER JOIN dbo.ProductGroup PG'#9#9#9'ON '#9'PG.ProductGroupNo = OL.Prod' +
        'uctGroupNo'
      ''
      
        'Left Outer Join dbo.FS_ArticleLink FSAL on FSAL.ProductArtNo = P' +
        'G.SequenceNo'
      ''
      ''
      'WHERE'
      'LSP.ShippingPlanNo = :ShippingPlanNo'
      'AND LO.SenderLoadStatus = 2'
      ''
      ''
      ''
      'and LO.LoadNo not in'
      '(Select LoadNo'
      'From'
      'dbo.Invoiced_Load'
      'where ShippingPlanNo = LSP.ShippingPlanNo)')
    Left = 600
    Top = 776
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetArticleNoArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
    end
  end
  object sq_InvLOs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT ILO.ShippingPlanNo FROM dbo.INVOICELO ILO'
      'WHERE '
      'ILO.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 912
    Top = 776
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_InvLOsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_PkgType_InvoiceForCredit: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
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
      ' As decimal(10,3)),3) '
      '-- Round Stolp'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces'
      
        '-- SET @m3Act = PI() * SQUARE (@ActThick/100/2) * @ActWidth / 10' +
        '0 * @NoOfPieces'
      'As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      ''
      'END AS M3Actual,'
      
        '-- PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.ActualWidthM' +
        'M/100) * PTD.NoOfPieces,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE WHEN PG.SequenceNo = 0 THEN '
      'CASE'
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END'
      'WHEN PG.SequenceNo = 1 THEN '
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3) '
      'END AS M3NOMINAL,'
      ''
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) '
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
      'CASE '
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
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
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
      'CASE '
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
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
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
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
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
      ''
      ''
      'END AS OrderVolume,'
      ''
      ''
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      '--PriceVolume ********************************************'
      'CASE '
      ''
      '-- M3NOMINAL *****************************************'
      'WHEN PU.TemplateUnitName = '#39'm3 nDxnL'#39' THEN'
      'CASE'
      'WHEN PG.SequenceNo = 0 THEN '
      '-- Random length'
      'CASE'
      'WHEN PL_CSD.ProductLengthGroupNo > 0  AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3)'
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3)'
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END--'
      'WHEN PG.SequenceNo = 1 THEN'
      
        'ROUND(CAST(PI() * SQUARE (PG.ActualThicknessMM/100/2) * (PG.Actu' +
        'alWidthMM/100) * PTD.NoOfPieces As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      '-- M3NOMINAL *****************************************'
      ''
      'WHEN PU.TemplateUnitName = '#39'kvm aB'#39' THEN '
      'CASE WHEN PG.SequenceNo = 0 THEN'
      'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 1 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      ''
      'WHEN PU.TemplateUnitName = '#39'Lopm a'#39' THEN '
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
      'CASE WHEN PG.SequenceNo = 0 THEN '
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
      'CASE '
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
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      
        'WHEN PG.SequenceNo = 1 THEN ROUND(CAST((PG.ActualWidthMM / 100 *' +
        ' PTD.NoOfPieces)   As decimal(10,3)),3)'
      'WHEN PG.SequenceNo = 2 THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END '
      'END-- NM1'
      ''
      ''
      ''
      'WHEN PU.TemplateUnitName = '#39'MFBM Nom'#39' THEN '
      
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
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3)'
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
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'WHEN PG.SequenceNo = 1  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      ' WHEN PG.SequenceNo = 2  THEN ROUND(CAST(0 As decimal(10,3)),3)'
      'END'
      ' '
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
      'END AS PriceVolume'
      ''
      ''
      'FROM dbo.Loads LO'
      'Inner Join dbo.Invoiced_Load ILO on ILO.LoadNo = LO.LoadNo'
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
      'ILO.InternalInvoiceNo = :InternalInvoiceNo'
      ''
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
    Left = 795
    Top = 810
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_InvTotals: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.InvTotals_VII'
    Left = 760
    Top = 496
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
        Name = '@IntInvNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_InvTotalsInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
    end
    object sp_InvTotalsArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
    end
    object sp_InvTotalsArticleGroupNo: TIntegerField
      FieldName = 'ArticleGroupNo'
      Origin = 'ArticleGroupNo'
    end
    object sp_InvTotalsArticleLink: TIntegerField
      FieldName = 'ArticleLink'
      Origin = 'ArticleLink'
    end
    object sp_InvTotalsintNM3: TFloatField
      FieldName = 'intNM3'
      Origin = 'intNM3'
    end
    object sp_InvTotalsRadorder: TIntegerField
      FieldName = 'Radorder'
      Origin = 'Radorder'
    end
    object sp_InvTotalsNamn: TStringField
      FieldName = 'Namn'
      Origin = 'Namn'
      Size = 80
    end
    object sp_InvTotalsMomsKonto: TStringField
      FieldName = 'MomsKonto'
      Origin = 'MomsKonto'
      Size = 4
    end
    object sp_InvTotalsMomsKod: TIntegerField
      FieldName = 'MomsKod'
      Origin = 'MomsKod'
    end
    object sp_InvTotalsVaruKonto: TStringField
      FieldName = 'VaruKonto'
      Origin = 'VaruKonto'
      Size = 4
    end
    object sp_InvTotalsProduktVardeFOR: TFloatField
      FieldName = 'ProduktVardeFOR'
      Origin = 'ProduktVardeFOR'
    end
    object sp_InvTotalsProduktVardeSEK: TFloatField
      FieldName = 'ProduktVardeSEK'
      Origin = 'ProduktVardeSEK'
    end
    object sp_InvTotalsInvoiceTotalFOR: TFloatField
      FieldName = 'InvoiceTotalFOR'
      Origin = 'InvoiceTotalFOR'
    end
    object sp_InvTotalsInvoiceTotalSEK: TFloatField
      FieldName = 'InvoiceTotalSEK'
      Origin = 'InvoiceTotalSEK'
    end
    object sp_InvTotalsFreightFOR_INCL_IN_PRICE: TFloatField
      FieldName = 'FreightFOR_INCL_IN_PRICE'
      Origin = 'FreightFOR_INCL_IN_PRICE'
    end
    object sp_InvTotalsFreightFOR_NOT_INCL_IN_PRICE: TFloatField
      FieldName = 'FreightFOR_NOT_INCL_IN_PRICE'
      Origin = 'FreightFOR_NOT_INCL_IN_PRICE'
    end
    object sp_InvTotalsFreightSEK_INCL_IN_PRICE: TFloatField
      FieldName = 'FreightSEK_INCL_IN_PRICE'
      Origin = 'FreightSEK_INCL_IN_PRICE'
    end
    object sp_InvTotalsFreightSEK_NOT_INCL_IN_PRICE: TFloatField
      FieldName = 'FreightSEK_NOT_INCL_IN_PRICE'
      Origin = 'FreightSEK_NOT_INCL_IN_PRICE'
    end
    object sp_InvTotalsVAT_FOR: TFloatField
      FieldName = 'VAT_FOR'
      Origin = 'VAT_FOR'
    end
    object sp_InvTotalsVAT_SEK: TFloatField
      FieldName = 'VAT_SEK'
      Origin = 'VAT_SEK'
    end
    object sp_InvTotalsSkatteupplag: TIntegerField
      FieldName = 'Skatteupplag'
      Origin = 'Skatteupplag'
    end
    object sp_InvTotalsCurr: TStringField
      FieldName = 'Curr'
      Origin = 'Curr'
      Size = 5
    end
    object sp_InvTotalsO5: TStringField
      FieldName = 'O5'
      Origin = 'O5'
      Size = 8
    end
    object sp_InvTotalsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object sp_InvTotalsPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
    end
    object sp_InvTotalsNoOfDaysDiscount1: TIntegerField
      FieldName = 'NoOfDaysDiscount1'
      Origin = 'NoOfDaysDiscount1'
    end
    object sp_InvTotalsInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
      Origin = 'InvoiceDate'
    end
    object sp_InvTotalsDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
      Origin = 'DueDate'
    end
    object sp_InvTotalsRegion: TStringField
      FieldName = 'Region'
      Origin = 'Region'
    end
    object sp_InvTotalsCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object sp_InvTotalsCustomerName: TStringField
      FieldName = 'CustomerName'
      Origin = 'CustomerName'
      Size = 80
    end
    object sp_InvTotalsquickInvoice: TIntegerField
      FieldName = 'quickInvoice'
      Origin = 'quickInvoice'
    end
    object sp_InvTotalsTrading: TIntegerField
      FieldName = 'Trading'
      Origin = 'Trading'
    end
    object sp_InvTotalsSalesGroupNo: TIntegerField
      FieldName = 'SalesGroupNo'
      Origin = 'SalesGroupNo'
    end
    object sp_InvTotalsSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object sp_InvTotalsinvoicetype: TIntegerField
      FieldName = 'invoicetype'
      Origin = 'invoicetype'
    end
    object sp_InvTotalscid: TStringField
      FieldName = 'cid'
      Origin = 'cid'
      Size = 8
    end
    object sp_InvTotalsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object sp_InvTotalsidXOR: TStringField
      FieldName = 'idXOR'
      Origin = 'idXOR'
      Size = 12
    end
    object sp_InvTotalsDebit_Credit: TIntegerField
      FieldName = 'Debit_Credit'
      Origin = 'Debit_Credit'
    end
    object sp_InvTotalsXRATE: TFloatField
      FieldName = 'XRATE'
      Origin = 'XRATE'
    end
    object sp_InvTotalsTotal_Product_Value_No_Freight_For: TFloatField
      FieldName = 'Total_Product_Value_No_Freight_For'
      Origin = 'Total_Product_Value_No_Freight_For'
    end
    object sp_InvTotalsTotal_Product_Value_No_Freight_Sek: TFloatField
      FieldName = 'Total_Product_Value_No_Freight_Sek'
      Origin = 'Total_Product_Value_No_Freight_Sek'
    end
  end
  object sp_TransformHTFPkgs: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_TransformHTFPkgs'
    Left = 688
    Top = 792
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
  end
  object mt_VerLogg: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 840
    Top = 504
    object mt_VerLoggKonto: TStringField
      FieldName = 'Konto'
      Size = 10
    end
    object mt_VerLoggNamn: TStringField
      FieldName = 'Namn'
      Size = 30
    end
    object mt_VerLoggValuta: TStringField
      FieldName = 'Valuta'
      Size = 5
    end
    object mt_VerLoggKurs: TFloatField
      FieldName = 'Kurs'
      DisplayFormat = '#,###.00000'
    end
    object mt_VerLoggUtlandsBelopp: TFloatField
      FieldName = 'UtlandsBelopp'
      DisplayFormat = '#,###,###,###.00'
    end
    object mt_VerLoggDebet: TFloatField
      FieldName = 'Debet'
      DisplayFormat = '#,###,###,###.00'
    end
    object mt_VerLoggKredit: TFloatField
      FieldName = 'Kredit'
      DisplayFormat = '#,###,###,###.00'
    end
    object mt_VerLoggText: TStringField
      FieldName = 'Text'
      Size = 120
    end
    object mt_VerLoggRadOrder: TIntegerField
      FieldName = 'RadOrder'
    end
    object mt_VerLoggVatCode: TIntegerField
      FieldName = 'VatCode'
    end
    object mt_VerLoggAvdelning: TStringField
      FieldName = 'Avdelning'
      Size = 10
    end
    object mt_VerLoggVolym: TFloatField
      FieldName = 'Volym'
    end
  end
  object ds_VerLogg: TDataSource
    DataSet = mt_VerLogg
    Left = 840
    Top = 552
  end
  object sq_GetTotalFreigthInPrice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT SUM(invd.ProductValue) AS Freight'
      'FROM dbo.InvoiceDetail invd'
      'WHERE'
      'invd.InternalInvoiceNo = :InternalInvoiceNo'
      'and invd.ShippingPlanNo = :ShippingPlanNo'
      'and invd.InclInPrice = :InclInPrice'
      'and (invd.ArticleNo = 2 or invd.ArticleNo = 4)'
      '')
    Left = 392
    Top = 240
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
        Name = 'INCLINPRICE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetTotalFreigthInPriceFreight: TFloatField
      FieldName = 'Freight'
      Origin = 'Freight'
      ReadOnly = True
    end
  end
  object sq_GetTotalAM3PerLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT SUM(invd.ActualNetM3) AS AM3'
      'FROM dbo.InvoiceDetail invd'
      'WHERE'
      'invd.InternalInvoiceNo = :InternalInvoiceNo'
      'and invd.ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 256
    Top = 368
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
    object sq_GetTotalAM3PerLOAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
  end
  object cds_InvNoAGENT: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_InvNoAGENT_InvoiceNo'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cds_InvNoAGENT_InvoiceNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceNumber_AGENT')
    Left = 328
    Top = 336
    object cds_InvNoAGENTInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_InvNoAGENTInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvNoAGENTUserCreated: TSmallintField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvNoAGENTUserModified: TSmallintField
      FieldName = 'UserModified'
      Origin = 'UserModified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvNoAGENTDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvNoAGENTPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object sq_InvoiceType: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select InvoiceType FROM dbo.InvoiceType'
      'WHERE SalesRegionNo = :SalesRegionNo'
      'AND OrderType = :OrderType')
    Left = 560
    Top = 832
    ParamData = <
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORDERTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_InvoiceTypeInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_InsVTAInvNo: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsInvoiceNumbersInvNo'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cdsInvoiceNumbersInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'INSERT INTO dbo.InvoiceNo_VTA(InvoiceNo, InternalInvoiceNo, User' +
        'Created, UserModified, DateCreated)'
      
        'VALUES(:InvoiceNo, :InternalInvoiceNo, :UserCreated, :UserModifi' +
        'ed, :DateCreated)'
      '')
    Left = 392
    Top = 832
    ParamData = <
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCREATED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERMODIFIED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sq_GetInvoiceNumber: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select InvoiceNo FROM [dbo].[InvoiceNos]'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo')
    Left = 336
    Top = 392
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetInvoiceNumberInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
      Required = True
    end
  end
  object cds_LindaExport: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      'CASE WHEN 0 = 0 then'
      
        'isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39') + '#39' '#39 +
        ' + Cast(LD.PackageNo AS Varchar(10))'
      'else'
      
        #39'C'#39' + isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39')' +
        ' + '#39' '#39' + Cast(LD.PackageNo AS Varchar(10))'
      'End AS PackageNo,'
      ''
      ''
      'OL.NominalThicknessMM AS NomThick,'
      'OL.NominalWidthMM AS NomWidth,'
      ''
      'pg.ActualThicknessMM AS ActThick, pg.ActualWidthMM AS ActWidth,'
      ''
      
        '(Select Max(ActualLengthMM)/100 FROM dbo.PackageTypeDetail    PT' +
        'D'
      
        'INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo       ' +
        '     = PTD.ProductLengthNo'
      
        'WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo) AS MAXLE' +
        'NGTH,'
      ''
      '(CASE'
      'WHEN LS.NoOfLengths > 1 THEN'
      '(Select MIN(ActualLengthMM) FROM dbo.PackageTypeDetail    PTD'
      
        'INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo       ' +
        '     = PTD.ProductLengthNo'
      'WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo)'
      'ELSE'
      '0'
      'END)'
      'AS MINLENGTH,'
      'PT.TotalNoOfPieces AS Pcs,'
      ''
      'PT.Totalm3Actual AS AM3,'
      '--PT.Totalm3Nominal AS NM3int,'
      ''
      '(Select SUM(ptd.m3Nominal) FROM dbo.PkgType_Invoice ptd '
      'WHERE ptd.InternalInvoiceNo = IH.InternalInvoiceNo'
      'and ptd.PackageTypeNo = LD.PackageTypeNo'
      'and ptd.LoadNo = ILo.LoadNo'
      'and ptd.LoadDetailNo = LD.LoadDetailNo) AS NM3,'
      ''
      'OL.Reference AS Mark,'
      ''
      'CASE WHEN IsNull(pin.StressGrade,0) = 1 then'
      #39'PEFC 105-32-7/V037'#39
      'ELSE'
      #39#39
      'END AS PEFC'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      
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
      
        #9'INNER JOIN dbo.PackageType    PT '#9'ON  PT.PackageTypeNo         ' +
        '   = LD.PackageTypeNo'
      
        #9'INNER JOIN dbo.LengthSpec    LS '#9'ON  LS.LengthSpecNo           ' +
        ' = PT.LengthSpecNo'
      ''
      ''
      '    '#9
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'Inner Join dbo.Product p on p.ProductNo = OL.ProductNo'
      
        #9'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.Product' +
        'GroupNo'
      ''
      
        #9'Left Outer Join dbo.Prodinstru pin on pin.ProdInstruNo = OL.Pro' +
        'dInstructNo            '
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      ''
      
        #9'Left join dbo.PkgPrefix PkgFix on PkgFix.PkgPrefix = PN.Supplie' +
        'rCode'
      #9'and PkgFix.ReportStd = 1'
      ''
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = PN.SupplierNo'
      ''
      ' WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      ''
      '  AND     (IL.ShippingPlanNo      <> -1)'
      ''
      '')
    Left = 1024
    Top = 832
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LindaExportPackageNo: TStringField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ReadOnly = True
      Size = 14
    end
    object cds_LindaExportNomThick: TFloatField
      FieldName = 'NomThick'
      Origin = 'NomThick'
    end
    object cds_LindaExportNomWidth: TFloatField
      FieldName = 'NomWidth'
      Origin = 'NomWidth'
    end
    object cds_LindaExportActThick: TFloatField
      FieldName = 'ActThick'
      Origin = 'ActThick'
    end
    object cds_LindaExportActWidth: TFloatField
      FieldName = 'ActWidth'
      Origin = 'ActWidth'
    end
    object cds_LindaExportMAXLENGTH: TFloatField
      FieldName = 'MAXLENGTH'
      Origin = 'MAXLENGTH'
      ReadOnly = True
    end
    object cds_LindaExportMINLENGTH: TFloatField
      FieldName = 'MINLENGTH'
      Origin = 'MINLENGTH'
      ReadOnly = True
    end
    object cds_LindaExportPcs: TIntegerField
      FieldName = 'Pcs'
      Origin = 'Pcs'
    end
    object cds_LindaExportAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object cds_LindaExportNM3: TFMTBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object cds_LindaExportMark: TStringField
      FieldName = 'Mark'
      Origin = 'Mark'
      Size = 50
    end
    object cds_LindaExportPEFC: TStringField
      FieldName = 'PEFC'
      Origin = 'PEFC'
      ReadOnly = True
      Required = True
      Size = 18
    end
  end
  object QExportLindaExcel: TQExport4XLS
    DataSet = cds_LindaExport
    ExportedFields.Strings = (
      'PackageNo'
      'NomThick'
      'NomWidth'
      'ActThick'
      'ActWidth'
      'MAXLENGTH'
      'MINLENGTH'
      'Pcs'
      'AM3'
      'NM3'
      'Mark'
      'PEFC')
    About = '(About EMS FDvancedExport)'
    _Version = '3.40'
    FileName = 'C:\Projects\VIS\VIS Trusted III\VIS 1211\TestExport.xls'
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '-'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'yyyy/MM/dd'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'yyyy/MM/dd hh:mm:ss'
    Formats.CurrencyFormat = '#,###,##0.00 kr'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    Aggregates = <>
    MergedCells = <>
    DefRowHeight = 12.750000000000000000
    Left = 928
    Top = 840
  end
  object QImport3XLS1: TQImport3XLS
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '-'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'yyyy/MM/dd'
    Formats.LongDateFormat = #39'den '#39'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    Left = 752
    Top = 872
  end
  object QExport4ASCII1: TQExport4ASCII
    About = '(About EMS FDvancedExport)'
    _Version = '4.6.0.2'
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '-'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'yyyy/MM/dd'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'yyyy/MM/dd hh:mm:ss'
    Formats.CurrencyFormat = '#,###,##0.00 kr'
    CSVComma = ';'
    Left = 656
    Top = 888
  end
  object sq_GetArticleGroupNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      '  '
      '  Select ArticleGroupNo FROM [dbo].[FS_Article]'
      '  WHERE ArticleNo = :ArticleNo ')
    Left = 560
    Top = 880
    ParamData = <
      item
        Name = 'ARTICLENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetArticleGroupNoArticleGroupNo: TIntegerField
      FieldName = 'ArticleGroupNo'
      Origin = 'ArticleGroupNo'
    end
  end
  object sq_InsBKOInvoiceNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'INSERT INTO dbo.InvoiceNumber_Komp(InvoiceNo, InternalInvoiceNo,' +
        ' UserCreated, UserModified, DateCreated)'
      
        'VALUES(:InvoiceNo, :InternalInvoiceNo, :UserCreated, :UserModifi' +
        'ed, :DateCreated)'
      '')
    Left = 48
    Top = 872
    ParamData = <
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCREATED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERMODIFIED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sq_GetOrgInvoiceNoByCredit_BKO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select InternalInvoiceNo from dbo.InvoiceNumber_Komp_Credit'
      'Where NewInternalInvoiceNo = :NewInternalInvoiceNo')
    Left = 72
    Top = 920
    ParamData = <
      item
        Name = 'NEWINTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetOrgInvoiceNoByCredit_BKOInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      Required = True
    end
  end
  object sp_xp_ldglogwrite: TFDStoredProc
    Connection = dmsConnector.SQLConn_XOR
    StoredProcName = 'VIS_xp_ldglogwrite_ALVE'
    Left = 680
    Top = 480
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@cid'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 3
        Name = '@person'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end
      item
        Position = 4
        Name = '@type'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@enum'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 6
        Name = '@invno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@seq'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@org'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 9
        Name = '@bookdate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@invdate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@duedate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@currency'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 13
        Name = '@amount'
        DataType = ftFMTBcd
        Precision = 28
        NumericScale = 8
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@foramount'
        DataType = ftFMTBcd
        Precision = 28
        NumericScale = 8
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@vat'
        DataType = ftFMTBcd
        Precision = 28
        NumericScale = 8
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@vatcode'
        DataType = ftByte
        ParamType = ptInput
      end
      item
        Position = 17
        Name = '@account'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 18
        Name = '@approval1'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 19
        Name = '@logno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = '@vouno'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 21
        Name = '@serie'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 22
        Name = '@o2'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 23
        Name = '@o5'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object sp_CustomerHaveValidEAN: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_InvEDICtrl'
    Left = 264
    Top = 880
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
        Name = '@ResultText'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 100
      end>
  end
  object sp_InvoiceSentAsEDI: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    Left = 392
    Top = 896
  end
  object cdsInvoice_Credited_Komp: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.InvoiceNumber_Komp_Credit'
      'Where InternalInvoiceNo = :InternalInvoiceNo')
    Left = 128
    Top = 368
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoice_Credited_KompInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoice_Credited_KompNewInternalInvoiceNo: TIntegerField
      FieldName = 'NewInternalInvoiceNo'
      Origin = 'NewInternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInvoice_Credited_KompUserCreated: TIntegerField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoice_Credited_KompUserModified: TIntegerField
      FieldName = 'UserModified'
      Origin = 'UserModified'
      ProviderFlags = [pfInUpdate]
    end
    object cdsInvoice_Credited_KompDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_InvoiceNos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from Dbo.InvoiceNos'
      'where Internalinvoiceno = :Internalinvoiceno')
    Left = 328
    Top = 480
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_InvoiceNosInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      Origin = 'InvoiceNo'
      Required = True
    end
  end
  object cds_InsertToInvoiceEDI: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'INSERT INTO [VIS_VIDA].[dbo].[InvoiceEDI]'
      '           ([ExportGuid]'
      '           ,[InternalInvoiceNo]'
      '           ,[EDIExportStatus]'
      '           ,[UserID]'
      '           ,[DateCreated]'
      '           ,[ExportDate])'
      '     VALUES'
      '           (null,'
      '           :InternalInvoiceNo,'
      '           null,'
      '           :UserID,'
      '           :DateCreated,'
      '           null)')
    Left = 392
    Top = 952
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sp_vis_InvoicedEDIStatus: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_InvoicedEDIStatus'
    Left = 552
    Top = 968
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
      end>
  end
  object sp_vis_DeleteInvoicedEDI: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_DeleteInvoicedEDI'
    Left = 552
    Top = 1024
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_ClientGLNNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct sr.ClientNo, sr.PartyIdentifier1'#9'AS PartyIdentif' +
        'ier1,'
      'sr.PartyIdentifierType1'#9'AS PartyIdentifierType1'
      'FROM dbo.Client sr ')
    Left = 224
    Top = 32
    object cds_ClientGLNNoPartyIdentifier1: TStringField
      FieldName = 'PartyIdentifier1'
      Origin = 'PartyIdentifier1'
      Size = 50
    end
    object cds_ClientGLNNoClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sp_GetAvdelning: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GetAvdelning'
    Left = 688
    Top = 1016
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
        Name = '@ClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@KontoNr'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
    object sp_GetAvdelningAvdelning: TStringField
      FieldName = 'Avdelning'
      Origin = 'Avdelning'
      Required = True
      Size = 4
    end
  end
  object sp_vis_DelPrelInvoice: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_DelPrelInvoice'
    Left = 392
    Top = 1024
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
      end>
  end
  object sp_PkgLogInvoiced: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgLogInvoiced'
    Left = 72
    Top = 976
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Operation'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DeleteProformaInvoice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete ProformaInvoiceNumber'
      'where'
      'InternalInvoiceNo = :InternalInvoiceNo'
      '')
    Left = 72
    Top = 1024
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_CSH_ExtraCost: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_CSH_ExtraCostIndex01'
        Fields = 'ShippingPlanNo'
      end>
    IndexName = 'cds_CSH_ExtraCostIndex01'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select cfc.*, pu.TemplateUnitName as PriceUnit FROM dbo.CSH_Extr' +
        'aCost cfc'
      
        'inner join [dbo].[PackUnit] pu on pu.TemplateUnitNo = cfc.Invoic' +
        'eAdditionUnitNo'
      'WHERE ShippingPlanNo = :LONo')
    Left = 928
    Top = 896
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CSH_ExtraCostShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CSH_ExtraCostCSH_ExtraCostRowNo: TIntegerField
      FieldName = 'CSH_ExtraCostRowNo'
      Origin = 'CSH_ExtraCostRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CSH_ExtraCostInvoiceAdditionAmount: TFloatField
      FieldName = 'InvoiceAdditionAmount'
      Origin = 'InvoiceAdditionAmount'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CSH_ExtraCostInvoiceAdditionUnitNo: TIntegerField
      FieldName = 'InvoiceAdditionUnitNo'
      Origin = 'InvoiceAdditionUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CSH_ExtraCostInvoiceAdditionDescription: TStringField
      FieldName = 'InvoiceAdditionDescription'
      Origin = 'InvoiceAdditionDescription'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cds_CSH_ExtraCostInvoiceAdditionCurrencyNo: TIntegerField
      FieldName = 'InvoiceAdditionCurrencyNo'
      Origin = 'InvoiceAdditionCurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CSH_ExtraCostCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CSH_ExtraCostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CSH_ExtraCostArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CSH_ExtraCostPriceUnit: TStringField
      FieldName = 'PriceUnit'
      Origin = 'PriceUnit'
      Required = True
    end
  end
  object sp_LdConnCtrl: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_LdConnCtrl'
    Left = 928
    Top = 960
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
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_DEL_ExportInvoiceData: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_DEL_ExportInvoiceData'
    Left = 1072
    Top = 896
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
  end
  object sp_STORE_ExportInvoiceData: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_STORE_ExportInvoiceData'
    Left = 1072
    Top = 952
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IntInvoiceNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GetKundResKontra: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GetKundResKontra'
    Left = 576
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@CountryNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Object5'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
  end
  object sp_JusteraUSAFakturor: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_justeraUSAfakturor'
    Left = 1072
    Top = 1016
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end>
  end
  object sp_GetInvoiceHeadData: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GetInvoiceHeadData'
    Left = 64
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ShippingPlanNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@CustomerNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_copyBookingData: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_copyBookingData'
    Left = 808
    Top = 1008
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@InternalInvoiceNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetNextInvoiceNo_UK: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT MAX(InvoiceNo) + 1 AS NEXT_INVNO FROM dbo.InvoiceNumber_U' +
        'K')
    Left = 96
    Top = 1080
    object sq_GetNextInvoiceNo_UKNEXT_INVNO: TIntegerField
      FieldName = 'NEXT_INVNO'
      Origin = 'NEXT_INVNO'
      ReadOnly = True
    end
  end
  object sq_GetOrgInvoiceNoByCredit_UK: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select InternalInvoiceNo from dbo.Invoice_Credited_UK'
      'Where NewInternalInvoiceNo = :NewInternalInvoiceNo')
    Left = 264
    Top = 928
    ParamData = <
      item
        Name = 'NEWINTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetOrgInvoiceNoByCredit_UKInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_InsInvNo_UK: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsInvoiceNumbersInvNo'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cdsInvoiceNumbersInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'INSERT INTO dbo.InvoiceNumber_UK(InvoiceNo, InternalInvoiceNo, U' +
        'serCreated, UserModified, DateCreated)'
      
        'VALUES(:InvoiceNo, :InternalInvoiceNo, :UserCreated, :UserModifi' +
        'ed, :DateCreated)'
      '')
    Left = 264
    Top = 984
    ParamData = <
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCREATED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERMODIFIED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object cds_PurchaseInvNo_UK: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_PurchaseInvoiceInvNo'
        Fields = 'PO_InvoiceNo'
      end>
    IndexName = 'cds_PurchaseInvoiceInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceNumber_PO_UK')
    Left = 264
    Top = 1048
    object cds_PurchaseInvNo_UKPO_InvoiceNo: TIntegerField
      FieldName = 'PO_InvoiceNo'
      Origin = 'PO_InvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PurchaseInvNo_UKInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PurchaseInvNo_UKUserCreated: TSmallintField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PurchaseInvNo_UKUserModified: TSmallintField
      FieldName = 'UserModified'
      Origin = 'UserModified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PurchaseInvNo_UKDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PurchaseInvNo_UKPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object cds_PurchaseInvNo_VP: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_PurchaseInvoiceInvNoVP'
        Fields = 'PO_InvoiceNo'
      end>
    IndexName = 'cds_PurchaseInvoiceInvNoVP'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'From dbo.InvoiceNumber_PO_VP')
    Left = 752
    Top = 936
    object cds_PurchaseInvNo_VPPO_InvoiceNo: TIntegerField
      FieldName = 'PO_InvoiceNo'
      Origin = 'PO_InvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PurchaseInvNo_VPInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
    end
    object cds_PurchaseInvNo_VPUserCreated: TIntegerField
      FieldName = 'UserCreated'
      Origin = 'UserCreated'
    end
    object cds_PurchaseInvNo_VPUserModified: TIntegerField
      FieldName = 'UserModified'
      Origin = 'UserModified'
    end
    object cds_PurchaseInvNo_VPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PurchaseInvNo_VPPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
  end
  object sp_CopyOrderRtR: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_CopyOrderRtR'
    Left = 920
    Top = 1064
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SrcOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@CopyCSP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@CopyLO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@CreateUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Trading'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@OrderType'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@NewOrderNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_copyAvrop: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CopyAvrop_II'
    Left = 920
    Top = 1008
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SrcOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SrcShippingPlanNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@CreateUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@NewOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Trading'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cdsInvoiceOrderNos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT Distinct csh.OrderNo FROM dbo.INVOICELO ILO'
      
        'inner join dbo.CustomerShippingPlanHeader csh on csh.ShippingPla' +
        'nNo = ILO.ShippingPlanNo'
      'WHERE '
      'ILO.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 1072
    Top = 1072
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoiceOrderNosOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      Required = True
    end
  end
  object cdsInvoiceLONos: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT Distinct ILO.ShippingPlanNo FROM dbo.INVOICELO ILO'
      
        'inner join dbo.CustomerShippingPlanHeader csh on csh.ShippingPla' +
        'nNo = ILO.ShippingPlanNo'
      'WHERE '
      'ILO.InternalInvoiceNo = :InternalInvoiceNo'
      'AND csh.OrderNo = :OrderNo')
    Left = 808
    Top = 1072
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsInvoiceLONosShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_LoadsInInvoice: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        ' select Distinct IL.LoadNo, stl.POShippingPlanNo FROM dbo.Invoic' +
        'ed_Load IL'
      
        'Inner Join dbo.CSHTradingLink stl on stl.SalesShippingPlanNo = I' +
        'L.ShippingPlanNo'
      'WHERE IL.InternalInvoiceNo = :InternalInvoiceNo')
    Left = 672
    Top = 1080
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadsInInvoiceLoadNo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadsInInvoicePOShippingPlanNo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'POShippingPlanNo'
      Required = True
    end
  end
  object sp_CopySalesLoadToPO: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CopySalesLoadToPO'
    Left = 552
    Top = 1104
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SrcLoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NewLONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@CreateUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@NewLoadNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 6
        Name = '@Insert_Confirmed_Load'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GetInvoiceSumVal: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GetInvoiceSumVal'
    Left = 264
    Top = 1104
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
      end>
  end
  object cds_AngloExport: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select DISTINCT'
      #39#39' as BranchCode,'
      'OL.OrderLineDescription as ProductCode'
      ',CASE WHEN 0 = 0 then'
      
        'isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39') +  Ca' +
        'st(LD.PackageNo AS Varchar(10))'
      'else'
      
        #39'C'#39' + isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39')' +
        ' + Cast(LD.PackageNo AS Varchar(10))'
      'End AS PackRef,'
      ''
      #39#39' as MetImp,'
      #39#39' as StockLocationCode,'
      #39#39' as DateReceived,'
      #39#39' as PackStatus,'
      #39#39' as PackSubStatus,'
      #39#39' as PackType,'
      ''
      '(Select SUM(ptd.m3Nominal) FROM dbo.PkgType_Invoice ptd '
      'WHERE ptd.InternalInvoiceNo = IH.InternalInvoiceNo'
      'and ptd.PackageTypeNo = LD.PackageTypeNo'
      'and ptd.LoadNo = ILo.LoadNo'
      'and ptd.LoadDetailNo = LD.LoadDetailNo) AS TotalVolume,'
      ''
      '(Select SUM(ptd.m3Nominal) FROM dbo.PkgType_Invoice ptd '
      'WHERE ptd.InternalInvoiceNo = IH.InternalInvoiceNo'
      'and ptd.PackageTypeNo = LD.PackageTypeNo'
      'and ptd.LoadNo = ILo.LoadNo'
      'and ptd.LoadDetailNo = LD.LoadDetailNo) AS VolumePerCode,'
      ''
      'PT.TotalNoOfPieces AS NoOfPieces,'
      ''
      
        '(Select Max(ActualLengthMM)/100 FROM dbo.PackageTypeDetail    PT' +
        'D'
      
        'INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo       ' +
        '     = PTD.ProductLengthNo'
      
        'WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo) AS Prima' +
        'ryLength,'
      ''
      #39#39' as ContractRef,'
      #39#39' as ContractPeriod,'
      #39#39' as CountryOfOriginID,'
      #39#39' as TimberMill,'
      #39#39' as Ship,'
      #39#39' as Voyage,'
      ''
      ''
      'CSH.Reference as BOLRef,'
      '-- OL.Reference AS Mark,'
      ''
      #39#39' as ShippingRef,'
      ''
      'CASE WHEN 0 = 0 then'
      'isNull(Cast(PkgFix.ClientID AS Varchar(11)),'#39'**'#39') +'
      
        'isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39') +  Ca' +
        'st(LD.PackageNo AS Varchar(10))'
      'else'
      'isNull(Cast(PkgFix.ClientID AS Varchar(11)),'#39'**'#39') +'
      
        'isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39') + Cas' +
        't(LD.PackageNo AS Varchar(10))'
      'End AS BarCodeNumber,'
      ''
      #39#39' as BarCodeSuffix,'
      ''
      ''
      '--OL.NominalThicknessMM AS NomThick,'
      '--OL.NominalWidthMM AS NomWidth,'
      ''
      
        '-- pg.ActualThicknessMM AS ActThick, pg.ActualWidthMM AS ActWidt' +
        'h,'
      ''
      ''
      ''
      '--(CASE'
      '--WHEN LS.NoOfLengths > 1 THEN'
      '--(Select MIN(ActualLengthMM) FROM dbo.PackageTypeDetail    PTD'
      
        '--INNER JOIN dbo.ProductLength   PL '#9'ON  PL.ProductLengthNo     ' +
        '       = PTD.ProductLengthNo'
      '--WHERE  PTD.PackageTypeNo            = LD.PackageTypeNo)'
      '--ELSE'
      '--0'
      '--END)'
      '--AS MINLENGTH,'
      '--PT.TotalNoOfPieces AS Pcs,'
      ''
      '--PT.Totalm3Actual AS AM3,'
      '--PT.Totalm3Nominal AS NM3int,'
      ''
      ''
      ''
      ''
      'CASE WHEN IsNull(pin.StressGrade,0) = 1 then '#39'PEFC'#39
      'WHEN IsNull(pin.StressGrade,0) = 2 then '#39'FSC'#39
      'END AS EnvironmentalStatusCode,'
      ''
      #39#39' as TotalCost,'
      #39#39' as AdditionalCost'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      
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
      
        #9'INNER JOIN dbo.PackageType    PT '#9'ON  PT.PackageTypeNo         ' +
        '   = LD.PackageTypeNo'
      
        #9'INNER JOIN dbo.LengthSpec    LS '#9'ON  LS.LengthSpecNo           ' +
        ' = PT.LengthSpecNo'
      ''
      ''
      '    '#9
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      #9
      
        #9'INNER JOIN dbo.CustomerShippingPlanHeader CSH ON CSH.ShippingPl' +
        'anNo = CSD.ShippingPlanNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'Inner Join dbo.Product p on p.ProductNo = OL.ProductNo'
      
        #9'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.Product' +
        'GroupNo'
      ''
      
        #9'Left Outer Join dbo.Prodinstru pin on pin.ProdInstruNo = OL.Pro' +
        'dInstructNo            '
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      ''
      
        #9'Left join dbo.PkgPrefix PkgFix on PkgFix.PkgPrefix = PN.Supplie' +
        'rCode'
      #9'and PkgFix.ReportStd = 1'
      ''
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = PN.SupplierNo'
      ''
      ' WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      ''
      '  AND     (IL.ShippingPlanNo      <> -1)'
      ''
      '')
    Left = 992
    Top = 1104
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AngloExportBranchCode: TStringField
      FieldName = 'BranchCode'
      Origin = 'BranchCode'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportProductCode: TStringField
      FieldName = 'ProductCode'
      Origin = 'ProductCode'
      Size = 150
    end
    object cds_AngloExportPackRef: TStringField
      FieldName = 'PackRef'
      Origin = 'PackRef'
      ReadOnly = True
      Size = 13
    end
    object cds_AngloExportMetImp: TStringField
      FieldName = 'MetImp'
      Origin = 'MetImp'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportStockLocationCode: TStringField
      FieldName = 'StockLocationCode'
      Origin = 'StockLocationCode'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportDateReceived: TStringField
      FieldName = 'DateReceived'
      Origin = 'DateReceived'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportPackStatus: TStringField
      FieldName = 'PackStatus'
      Origin = 'PackStatus'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportPackSubStatus: TStringField
      FieldName = 'PackSubStatus'
      Origin = 'PackSubStatus'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportPackType: TStringField
      FieldName = 'PackType'
      Origin = 'PackType'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportTotalVolume: TFMTBCDField
      FieldName = 'TotalVolume'
      Origin = 'TotalVolume'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object cds_AngloExportVolumePerCode: TFMTBCDField
      FieldName = 'VolumePerCode'
      Origin = 'VolumePerCode'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object cds_AngloExportNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
      Origin = 'NoOfPieces'
    end
    object cds_AngloExportPrimaryLength: TFloatField
      FieldName = 'PrimaryLength'
      Origin = 'PrimaryLength'
      ReadOnly = True
    end
    object cds_AngloExportContractRef: TStringField
      FieldName = 'ContractRef'
      Origin = 'ContractRef'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportContractPeriod: TStringField
      FieldName = 'ContractPeriod'
      Origin = 'ContractPeriod'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportCountryOfOriginID: TStringField
      FieldName = 'CountryOfOriginID'
      Origin = 'CountryOfOriginID'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportTimberMill: TStringField
      FieldName = 'TimberMill'
      Origin = 'TimberMill'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportShip: TStringField
      FieldName = 'Ship'
      Origin = 'Ship'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportVoyage: TStringField
      FieldName = 'Voyage'
      Origin = 'Voyage'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportBOLRef: TStringField
      FieldName = 'BOLRef'
      Origin = 'BOLRef'
      Size = 30
    end
    object cds_AngloExportShippingRef: TStringField
      FieldName = 'ShippingRef'
      Origin = 'ShippingRef'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportBarCodeNumber: TStringField
      FieldName = 'BarCodeNumber'
      Origin = 'BarCodeNumber'
      ReadOnly = True
      Size = 24
    end
    object cds_AngloExportBarCodeSuffix: TStringField
      FieldName = 'BarCodeSuffix'
      Origin = 'BarCodeSuffix'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportEnvironmentalStatusCode: TStringField
      FieldName = 'EnvironmentalStatusCode'
      Origin = 'EnvironmentalStatusCode'
      ReadOnly = True
      Size = 4
    end
    object cds_AngloExportTotalCost: TStringField
      FieldName = 'TotalCost'
      Origin = 'TotalCost'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportAdditionalCost: TStringField
      FieldName = 'AdditionalCost'
      Origin = 'AdditionalCost'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object QExportAngloExcel: TQExport4XLS
    DataSet = cds_AngloExport
    About = '(About EMS AdvancedExport)'
    _Version = '4.10.2.1'
    FileName = 'C:\Projects\VIS\VIS Trusted III\VIS 1211\TestAngloExport.xls'
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '-'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'yyyy/MM/dd'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'yyyy/MM/dd hh:mm:ss'
    Formats.CurrencyFormat = '#,###,##0.00 kr'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <
      item
        Title = 'Pack'
        Options.PageFooter = 'Page &P of &N'
        Options.SheetTitle = 'Sheet 1'
        Options.CaptionsFormat.Font.Style = [xfsBold]
        Options.HyperlinkFormat.Font.Color = clrBlue
        Options.HyperlinkFormat.Font.Underline = fulSingle
        Options.NoteFormat.Alignment.Horizontal = halLeft
        Options.NoteFormat.Alignment.Vertical = valTop
        Options.NoteFormat.Font.Size = 8
        Options.NoteFormat.Font.Style = [xfsBold]
        Options.NoteFormat.Font.Name = 'Tahoma'
        FieldFormats = <>
        StripStyles = <>
        Hyperlinks = <>
        Notes = <>
        Charts = <>
        Images = <>
        Cells = <>
        Aggregates = <>
        MergedCells = <>
        DataSet = cds_AngloExport
        ExportedFields.Strings = (
          'BranchCode'
          'ProductCode'
          'PackRef'
          'MetImp'
          'StockLocationCode'
          'DateReceived'
          'PackStatus'
          'PackStatus'
          'PackType'
          'TotalVolume'
          'VolumePerCode'
          'NoOfPieces'
          'PrimaryLength'
          'ContractRef'
          'ContractPeriod'
          'CountryOfOriginID'
          'TimberMill'
          'Ship'
          'Voyage'
          'BOLRef'
          'ShippingRef'
          'BarCodeNumber'
          'BarCodeSuffix'
          'EnvironmentalStatusCode'
          'TotalCost'
          'AdditionalCost')
        Formats.DecimalSeparator = ','
        Formats.ThousandSeparator = #160
        Formats.DateSeparator = '-'
        Formats.TimeSeparator = ':'
        Formats.BooleanTrue = 'true'
        Formats.BooleanFalse = 'false'
        Formats.IntegerFormat = '#,###,##0'
        Formats.FloatFormat = '#,###,##0.00'
        Formats.DateFormat = 'yyyy/MM/dd'
        Formats.TimeFormat = 'hh:mm'
        Formats.DateTimeFormat = 'yyyy/MM/dd hh:mm:ss'
        Formats.CurrencyFormat = '#,###,##0.00 kr'
      end
      item
        Title = 'Pack Details'
        Options.PageFooter = 'Page &P of &N'
        Options.SheetTitle = 'Sheet 1'
        Options.CaptionsFormat.Font.Style = [xfsBold]
        Options.HyperlinkFormat.Font.Color = clrBlue
        Options.HyperlinkFormat.Font.Underline = fulSingle
        Options.NoteFormat.Alignment.Horizontal = halLeft
        Options.NoteFormat.Alignment.Vertical = valTop
        Options.NoteFormat.Font.Size = 8
        Options.NoteFormat.Font.Style = [xfsBold]
        Options.NoteFormat.Font.Name = 'Tahoma'
        FieldFormats = <>
        StripStyles = <>
        Hyperlinks = <>
        Notes = <>
        Charts = <>
        Images = <>
        Cells = <>
        Aggregates = <>
        MergedCells = <>
        DataSet = cds_AngloExportDtls
        ExportedFields.Strings = (
          'BranchCode'
          'ProductCode'
          'PackRef'
          'Width'
          'Length'
          'Quantity')
        Formats.DecimalSeparator = ','
        Formats.ThousandSeparator = #160
        Formats.DateSeparator = '-'
        Formats.TimeSeparator = ':'
        Formats.BooleanTrue = 'true'
        Formats.BooleanFalse = 'false'
        Formats.IntegerFormat = '#,###,##0'
        Formats.FloatFormat = '#,###,##0.00'
        Formats.DateFormat = 'yyyy/MM/dd'
        Formats.TimeFormat = 'hh:mm'
        Formats.DateTimeFormat = 'yyyy/MM/dd hh:mm:ss'
        Formats.CurrencyFormat = '#,###,##0.00 kr'
      end>
    Pictures = <>
    Images = <>
    Cells = <>
    Aggregates = <>
    MergedCells = <>
    DefRowHeight = 12.750000000000000000
    Left = 872
    Top = 1128
  end
  object cds_AngloExportDtls: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select DISTINCT'
      #39#39' as BranchCode,'
      'OL.OrderLineDescription as ProductCode'
      ''
      ',CASE WHEN 0 = 0 then'
      
        'isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39') +  Ca' +
        'st(LD.PackageNo AS Varchar(10))'
      'else'
      
        #39'C'#39' + isNull(Cast(PkgFix.ProductionUnitCode AS Varchar(3)),'#39'99'#39')' +
        ' + Cast(LD.PackageNo AS Varchar(10))'
      'End AS PackRef,'
      ''
      #39#39' as Width,'
      ''
      'PL.ActualLengthMM as [Length],'
      ''
      'PTD.NoOfPieces as Quantity'
      ''
      ''
      'FROM   dbo.InvoiceHeader IH '
      
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
      
        #9'INNER JOIN dbo.PackageType    PT '#9'ON  PT.PackageTypeNo         ' +
        '   = LD.PackageTypeNo'
      
        #9'INNER JOIN dbo.LengthSpec    LS '#9'ON  LS.LengthSpecNo           ' +
        ' = PT.LengthSpecNo'
      #9
      
        #9'INNER JOIN dbo.PackageTypeDetail    PTD '#9'ON  PTD.PackageTypeNo ' +
        '           = PT.PackageTypeNo'
      #9
      
        #9'inner join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Pro' +
        'ductLengthNo'
      '    '#9
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.CustShipP' +
        'lanDetailObjectNo =  LD.DefaultCustShipObjectNo'
      #9
      
        #9'INNER JOIN dbo.CustomerShippingPlanHeader CSH ON CSH.ShippingPl' +
        'anNo = CSD.ShippingPlanNo'
      ''
      #9'INNER JOIN DBO.ORDERLINE'#9'OL'#9'ON CSD.ORDERNO = OL.ORDERNO'
      #9#9#9#9#9#9'AND CSD.ORDERLINENO = OL.ORDERLINENO'
      ''
      #9'Inner Join dbo.Product p on p.ProductNo = OL.ProductNo'
      
        #9'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.Product' +
        'GroupNo'
      ''
      
        #9'Left Outer Join dbo.Prodinstru pin on pin.ProdInstruNo = OL.Pro' +
        'dInstructNo            '
      ''
      #9'inner join dbo.packagenumber PN ON PN.PackageNo = LD.packageNo'
      #9#9#9#9#9'AND RTrim(PN.SupplierCode) = RTrim(LD.SupplierCode)'
      ''
      
        #9'Left join dbo.PkgPrefix PkgFix on PkgFix.PkgPrefix = PN.Supplie' +
        'rCode'
      #9'and PkgFix.ReportStd = 1'
      ''
      #9'inner JOIN dbo.Client C'#9#9#9'ON C.ClientNo = PN.SupplierNo'
      #9
      ' WHERE     (IH.InternalInvoiceNo   =  :InternalInvoiceNo)'
      ''
      '  AND     (IL.ShippingPlanNo      <> -1)'
      ''
      ''
      #9)
    Left = 1088
    Top = 1128
    ParamData = <
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AngloExportDtlsBranchCode: TStringField
      FieldName = 'BranchCode'
      Origin = 'BranchCode'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportDtlsProductCode: TStringField
      FieldName = 'ProductCode'
      Origin = 'ProductCode'
      Size = 150
    end
    object cds_AngloExportDtlsPackRef: TStringField
      FieldName = 'PackRef'
      Origin = 'PackRef'
      ReadOnly = True
      Size = 13
    end
    object cds_AngloExportDtlsWidth: TStringField
      FieldName = 'Width'
      Origin = 'Width'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cds_AngloExportDtlsLength: TFloatField
      FieldName = 'Length'
      Origin = 'Length'
      Required = True
    end
    object cds_AngloExportDtlsQuantity: TIntegerField
      FieldName = 'Quantity'
      Origin = 'Quantity'
    end
  end
  object sq_InsInvNo_VIDA_ENERGI: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsInvoiceNumbersInvNo'
        Fields = 'InvoiceNo'
      end>
    IndexName = 'cdsInvoiceNumbersInvNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'INSERT INTO dbo.InvoiceNumber_VE(InvoiceNo, InternalInvoiceNo, U' +
        'serCreated, UserModified, DateCreated)'
      
        'VALUES(:InvoiceNo, :InternalInvoiceNo, :UserCreated, :UserModifi' +
        'ed, :DateCreated)'
      '')
    Left = 408
    Top = 1112
    ParamData = <
      item
        Name = 'INVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCREATED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERMODIFIED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sq_GetNextInvoiceNo_VIDA_ENERGI: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT MAX(InvoiceNo) + 1 AS NEXT_INVNO FROM dbo.InvoiceNumber_V' +
        'E')
    Left = 96
    Top = 1138
    object sq_GetNextInvoiceNo_VIDA_ENERGINEXT_INVNO: TIntegerField
      FieldName = 'NEXT_INVNO'
      Origin = 'NEXT_INVNO'
      ReadOnly = True
    end
  end
  object sq_GetOrgInvoiceNoByCredit_VIDA_ENERGI: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select InternalInvoiceNo from dbo.Invoice_Credited_VE'
      'Where NewInternalInvoiceNo = :NewInternalInvoiceNo')
    Left = 264
    Top = 1152
    ParamData = <
      item
        Name = 'NEWINTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetOrgInvoiceNoByCredit_VIDA_ENERGIInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
end
