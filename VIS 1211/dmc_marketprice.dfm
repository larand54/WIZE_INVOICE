object dm_marketprice: Tdm_marketprice
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 242
  Top = 105
  Height = 664
  Width = 1023
  object sq_productlengths: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ProductGroupNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.ProductLength PL '
      
        'Inner Join dbo.ProductGroupLengths PGL ON PGL.ProductLengthNo = ' +
        'PL.ProductLengthNo'
      'WHERE'
      'PGL.ProductGroupNo = :ProductGroupNo '
      'Order by PL.ActualLengthMM')
    SQLConnection = dmsConnector.SQLConnection
    Left = 792
    Top = 256
  end
  object dsp_productlengths: TDataSetProvider
    DataSet = sq_productlengths
    Left = 792
    Top = 304
  end
  object cds_productlengths: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_productlengths'
    Left = 792
    Top = 352
    object cds_productlengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_productlengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object cds_productlengthsNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object cds_productlengthsNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
    end
    object cds_productlengthsActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Size = 15
    end
    object cds_productlengthsPET: TIntegerField
      FieldName = 'PET'
    end
    object cds_productlengthsFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
    end
    object cds_productlengthsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_productlengthsModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_productlengthsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_productlengthsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object cds_productlengthsProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
    end
  end
  object ds_productlengths: TDataSource
    DataSet = cds_productlengths
    Left = 792
    Top = 400
  end
  object mtPrices: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterPost = mtPricesAfterPost
    OnFilterRecord = mtPricesFilterRecord
    Left = 568
    Top = 256
  end
  object dsPrices: TDataSource
    DataSet = mtPrices
    Left = 568
    Top = 304
  end
  object sq_LengthsForCOLS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TemplateNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.Nomina' +
        'lLengthMM, PL.NominalLengthFEET ,'
      'PL.ActualLengthINCH'
      
        'FROM   dbo.pricetemplaterow PGL INNER JOIN ProductLength PL ON P' +
        'L.ProductLengthNo = PGL.ProductLengthNo'
      'Where PGL.TemplateNo = :TemplateNo'
      'Order by PL.ActualLengthMM'
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 464
    Top = 256
    object sq_LengthsForCOLSProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_LengthsForCOLSActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object sq_LengthsForCOLSNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object sq_LengthsForCOLSNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
    end
    object sq_LengthsForCOLSActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Size = 15
    end
  end
  object sq_marketpricegrp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'templateno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.marketpricegrp'
      'WHERE templateno = :templateno'
      'Order By ValidFrom')
    SQLConnection = dmsConnector.SQLConnection
    Left = 568
    Top = 16
    object sq_marketpricegrpmid: TIntegerField
      FieldName = 'mid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_marketpricegrptemplateno: TIntegerField
      FieldName = 'templateno'
      ProviderFlags = [pfInUpdate]
    end
    object sq_marketpricegrpDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object sq_marketpricegrpModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_marketpricegrpValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
      ProviderFlags = [pfInUpdate]
    end
    object sq_marketpricegrpValidTo: TSQLTimeStampField
      FieldName = 'ValidTo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_marketpricegrpNotes: TMemoField
      FieldName = 'Notes'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_marketpricegrpWeekNo: TIntegerField
      FieldName = 'WeekNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_marketpricegrpPriceAdjustment: TFloatField
      FieldName = 'PriceAdjustment'
      ProviderFlags = [pfInUpdate]
    end
    object sq_marketpricegrpStatus: TIntegerField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_marketpricerow: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'mid'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.marketpricerow'
      'WHERE '
      'mid = :mid')
    SQLConnection = dmsConnector.SQLConnection
    Left = 680
    Top = 16
    object sq_marketpricerowmid: TIntegerField
      FieldName = 'mid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_marketpricerowproductno: TIntegerField
      FieldName = 'productno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_marketpricerowproductlengthno: TIntegerField
      FieldName = 'productlengthno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_marketpricerowprice: TFloatField
      FieldName = 'price'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_marketpricegrp: TDataSetProvider
    DataSet = sq_marketpricegrp
    UpdateMode = upWhereKeyOnly
    Left = 568
    Top = 64
  end
  object dsp_marketpricerow: TDataSetProvider
    DataSet = sq_marketpricerow
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 64
  end
  object cds_marketpricegrp: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'mid'
        DataType = ftInteger
      end
      item
        Name = 'templateno'
        DataType = ftInteger
      end
      item
        Name = 'DateModified'
        DataType = ftTimeStamp
      end
      item
        Name = 'ModifiedUser'
        DataType = ftInteger
      end
      item
        Name = 'ValidFrom'
        DataType = ftTimeStamp
      end
      item
        Name = 'ValidTo'
        DataType = ftTimeStamp
      end
      item
        Name = 'Notes'
        DataType = ftMemo
      end
      item
        Name = 'WeekNo'
        DataType = ftInteger
      end
      item
        Name = 'PriceAdjustment'
        DataType = ftFloat
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_marketpricegrpIndex1'
        Fields = 'ValidFrom'
      end>
    IndexName = 'cds_marketpricegrpIndex1'
    Params = <>
    ProviderName = 'dsp_marketpricegrp'
    StoreDefs = True
    AfterInsert = cds_marketpricegrpAfterInsert
    BeforePost = cds_marketpricegrpBeforePost
    AfterScroll = cds_marketpricegrpAfterScroll
    OnReconcileError = cds_marketpricegrpReconcileError
    Left = 568
    Top = 112
    object cds_marketpricegrpmid: TIntegerField
      FieldName = 'mid'
    end
    object cds_marketpricegrptemplateno: TIntegerField
      FieldName = 'templateno'
    end
    object cds_marketpricegrpDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
    end
    object cds_marketpricegrpModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_marketpricegrpValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
      OnChange = cds_marketpricegrpValidFromChange
    end
    object cds_marketpricegrpValidTo: TSQLTimeStampField
      FieldName = 'ValidTo'
    end
    object cds_marketpricegrpNotes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
    end
    object cds_marketpricegrpWeekNo: TIntegerField
      FieldName = 'WeekNo'
    end
    object cds_marketpricegrpPriceAdjustment: TFloatField
      FieldName = 'PriceAdjustment'
    end
    object cds_marketpricegrpStatus: TIntegerField
      FieldName = 'Status'
      OnChange = cds_marketpricegrpStatusChange
    end
  end
  object cds_marketpricerow: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'mid'
        DataType = ftInteger
      end
      item
        Name = 'productno'
        DataType = ftInteger
      end
      item
        Name = 'productlengthno'
        DataType = ftInteger
      end
      item
        Name = 'price'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'cds_marketpricerowIndex1'
        Fields = 'mid;productno;productlengthno'
      end>
    IndexName = 'cds_marketpricerowIndex1'
    Params = <>
    ProviderName = 'dsp_marketpricerow'
    StoreDefs = True
    OnReconcileError = cds_marketpricerowReconcileError
    Left = 680
    Top = 112
    object cds_marketpricerowmid: TIntegerField
      FieldName = 'mid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_marketpricerowproductno: TIntegerField
      FieldName = 'productno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_marketpricerowproductlengthno: TIntegerField
      FieldName = 'productlengthno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_marketpricerowprice: TFloatField
      FieldName = 'price'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_marketpricegrp: TDataSource
    DataSet = cds_marketpricegrp
    Left = 568
    Top = 160
  end
  object ds_marketpricerow: TDataSource
    DataSet = cds_marketpricerow
    Left = 680
    Top = 160
  end
  object sq_getperiods: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'fDate'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'fDate'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'fDate'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  DATEPART(week, :fDate) AS Week,'
      'DATEPART(Year, :fDate) AS Year,'
      'DATEPART(Month, :fDate) AS Month'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 400
    object sq_getperiodsWeek: TIntegerField
      FieldName = 'Week'
    end
    object sq_getperiodsYear: TIntegerField
      FieldName = 'Year'
    end
    object sq_getperiodsMonth: TIntegerField
      FieldName = 'Month'
    end
  end
  object sq_PriceHdr: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * FROM dbo.PriceTemplateHeader')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 16
    object sq_PriceHdrtemplateno: TIntegerField
      FieldName = 'templateno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PriceHdrPriceListName: TStringField
      FieldName = 'PriceListName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_PriceHdrCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceHdrPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceHdrDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceHdrModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceHdrSource: TStringField
      FieldName = 'Source'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_PriceHdrPriceatLocation: TStringField
      FieldName = 'PriceatLocation'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_PriceHdrAddOnPrice: TFloatField
      FieldName = 'AddOnPrice'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceHdrLengthUnitNo: TIntegerField
      FieldName = 'LengthUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceHdrTypeOfPriceList: TIntegerField
      FieldName = 'TypeOfPriceList'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceHdrDefaultPeriod: TIntegerField
      FieldName = 'DefaultPeriod'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_PriceHdr: TDataSetProvider
    DataSet = sq_PriceHdr
    Left = 40
    Top = 64
  end
  object cds_PriceHdr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PriceHdr'
    AfterInsert = cds_PriceHdrAfterInsert
    BeforePost = cds_PriceHdrBeforePost
    OnReconcileError = cds_PriceHdrReconcileError
    Left = 40
    Top = 112
    object cds_PriceHdrtemplateno: TIntegerField
      FieldName = 'templateno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_PriceHdrPriceListName: TStringField
      FieldName = 'PriceListName'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object cds_PriceHdrCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceHdrPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceHdrDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceHdrModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceHdrValuta: TStringField
      FieldKind = fkLookup
      FieldName = 'Valuta'
      LookupDataSet = cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'CurrencyNo'
      Size = 5
      Lookup = True
    end
    object cds_PriceHdrPrisenhet: TStringField
      FieldKind = fkLookup
      FieldName = 'Prisenhet'
      LookupDataSet = cds_PriceUnit
      LookupKeyFields = 'TemplateUnitNo'
      LookupResultField = 'TemplateUnitName'
      KeyFields = 'PriceUnitNo'
      Lookup = True
    end
    object cds_PriceHdrSource: TStringField
      FieldName = 'Source'
      Size = 50
    end
    object cds_PriceHdrPriceatLocation: TStringField
      FieldName = 'PriceatLocation'
      Size = 50
    end
    object cds_PriceHdrAddOnPrice: TFloatField
      FieldName = 'AddOnPrice'
    end
    object cds_PriceHdrLengthUnitNo: TIntegerField
      FieldName = 'LengthUnitNo'
    end
    object cds_PriceHdrTypeOfPriceList: TIntegerField
      FieldName = 'TypeOfPriceList'
    end
    object cds_PriceHdrDefaultPeriod: TIntegerField
      DisplayLabel = 'Standardperiod'
      FieldName = 'DefaultPeriod'
    end
  end
  object ds_PriceHdr: TDataSource
    DataSet = cds_PriceHdr
    Left = 40
    Top = 160
  end
  object sq_Currency: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Currency')
    SQLConnection = dmsConnector.SQLConnection
    Left = 272
    Top = 256
  end
  object dsp_Currency: TDataSetProvider
    DataSet = sq_Currency
    Left = 272
    Top = 304
  end
  object cds_Currency: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Currency'
    Left = 272
    Top = 352
    object cds_CurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
    object cds_CurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 5
    end
  end
  object ds_Currency: TDataSource
    DataSet = cds_Currency
    Left = 272
    Top = 400
  end
  object sq_PriceUnit: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from PackUnit')
    SQLConnection = dmsConnector.SQLConnection
    Left = 365
    Top = 256
  end
  object dsp_PriceUnit: TDataSetProvider
    DataSet = sq_PriceUnit
    Left = 368
    Top = 304
  end
  object cds_PriceUnit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PriceUnit'
    Left = 368
    Top = 352
    object cds_PriceUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
    end
    object cds_PriceUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
    end
  end
  object sq_AvailPG: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CurrentTemplateno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT pg.ProductGroupNo,'
      'pg.ActualThicknessMM AS "AT",  '
      'pg.ActualWidthMM AS AB,'
      'sc.SpeciesName AS TS ,'
      'sf.SurfacingName AS UT,'
      'pc.ProductCategoryName AS IMP, '
      'rtrim( pg.NominalThicknessINCH    ) AS TT,'
      'rtrim(   pg.NominalWidthINCH    ) AS TB'
      'FROM dbo.ProductGroup pg '
      ''
      
        'Inner JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo '
      'Inner JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo '
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'Inner JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo '
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE pg.Act = 1'
      'AND sc.Act = 1'
      'AND sf.Act = 1'
      'AND pc.Act = 1 '
      
        'AND pg.ProductGroupNo Not In (Select pg2.ProductGroupNo FROM dbo' +
        '.pricetemplategrp pg2'
      'WHERE pg2.templateno <> :CurrentTemplateno)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 112
    Top = 16
  end
  object dsp_AvailPG: TDataSetProvider
    DataSet = sq_AvailPG
    Left = 112
    Top = 64
  end
  object cds_AvailPG: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'dsp_AvailPG'
    OnFilterRecord = cds_AvailPGFilterRecord
    Left = 112
    Top = 112
    object cds_AvailPGProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cds_AvailPGAT: TFloatField
      FieldName = 'AT'
    end
    object cds_AvailPGAB: TFloatField
      FieldName = 'AB'
    end
    object cds_AvailPGTS: TStringField
      FieldName = 'TS'
      Size = 30
    end
    object cds_AvailPGUT: TStringField
      FieldName = 'UT'
      Size = 30
    end
    object cds_AvailPGIMP: TStringField
      FieldName = 'IMP'
    end
    object cds_AvailPGTT: TStringField
      FieldName = 'TT'
    end
    object cds_AvailPGTB: TStringField
      FieldName = 'TB'
    end
  end
  object ds_AvailPG: TDataSource
    DataSet = cds_AvailPG
    Left = 112
    Top = 160
  end
  object sq_SelectPG: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'templateno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ptg.templateno,'
      'ptg.ProductGroupNo,'
      ''
      'pg.ActualThicknessMM AS "AT",'
      'pg.ActualWidthMM AS AB,'
      'sc.SpeciesName AS TS ,'
      'sf.SurfacingName AS UT,'
      'pc.ProductCategoryName AS IMP,'
      'rtrim( pg.NominalThicknessINCH    ) AS TT,'
      'rtrim(   pg.NominalWidthINCH    ) AS TB,'
      'ptg.Modifieduser,'
      'ptg.Datemodified,'
      'ptg.SortorderNo,'
      'ptg.Act'
      'FROM dbo.pricetemplategrp ptg'
      
        'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = ptg.Produc' +
        'tGroupNo'
      ''
      
        'Inner JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      'Inner JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'Inner JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE ptg.templateno = :templateno'
      'Order By'
      'pg.ActualThicknessMM,'
      'pg.ActualWidthMM,'
      'sc.SpeciesName,'
      'sf.SurfacingName,'
      'pc.ProductCategoryName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 192
    Top = 16
    object sq_SelectPGtemplateno: TIntegerField
      FieldName = 'templateno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SelectPGProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SelectPGAT: TFloatField
      FieldName = 'AT'
      ProviderFlags = []
    end
    object sq_SelectPGAB: TFloatField
      FieldName = 'AB'
      ProviderFlags = []
    end
    object sq_SelectPGTS: TStringField
      FieldName = 'TS'
      ProviderFlags = []
      Size = 30
    end
    object sq_SelectPGUT: TStringField
      FieldName = 'UT'
      ProviderFlags = []
      Size = 30
    end
    object sq_SelectPGIMP: TStringField
      FieldName = 'IMP'
      ProviderFlags = []
    end
    object sq_SelectPGTT: TStringField
      FieldName = 'TT'
      ProviderFlags = []
    end
    object sq_SelectPGTB: TStringField
      FieldName = 'TB'
      ProviderFlags = []
    end
    object sq_SelectPGModifieduser: TIntegerField
      FieldName = 'Modifieduser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SelectPGDatemodified: TSQLTimeStampField
      FieldName = 'Datemodified'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SelectPGSortorderNo: TIntegerField
      FieldName = 'SortorderNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SelectPGAct: TIntegerField
      FieldName = 'Act'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_SelectPG: TDataSetProvider
    DataSet = sq_SelectPG
    OnGetTableName = dsp_SelectPGGetTableName
    Left = 192
    Top = 64
  end
  object cds_SelectPG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_SelectPG'
    AfterInsert = cds_SelectPGAfterInsert
    BeforePost = cds_SelectPGBeforePost
    Left = 192
    Top = 112
    object cds_SelectPGProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cds_SelectPGAT: TFloatField
      FieldName = 'AT'
    end
    object cds_SelectPGAB: TFloatField
      FieldName = 'AB'
    end
    object cds_SelectPGTS: TStringField
      FieldName = 'TS'
      Size = 30
    end
    object cds_SelectPGUT: TStringField
      FieldName = 'UT'
      Size = 30
    end
    object cds_SelectPGIMP: TStringField
      FieldName = 'IMP'
    end
    object cds_SelectPGTT: TStringField
      FieldName = 'TT'
    end
    object cds_SelectPGTB: TStringField
      FieldName = 'TB'
    end
    object cds_SelectPGtemplateno: TIntegerField
      FieldName = 'templateno'
    end
    object cds_SelectPGModifieduser: TIntegerField
      FieldName = 'Modifieduser'
    end
    object cds_SelectPGDatemodified: TSQLTimeStampField
      FieldName = 'Datemodified'
    end
    object cds_SelectPGSortorderNo: TIntegerField
      FieldName = 'SortorderNo'
    end
    object cds_SelectPGAct: TIntegerField
      FieldName = 'Act'
    end
  end
  object ds_SelectPG: TDataSource
    DataSet = cds_SelectPG
    Left = 192
    Top = 160
  end
  object sq_AvailProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Distinct G.GradeName, G.GradeNo FROM'
      'dbo.Product P'
      'Inner Join dbo.Grade G ON G.GradeNo = P.GradeNo'
      #9#9#9#9'AND G.LanguageCode = 1'
      'WHERE p.ProductGroupNo = 12345')
    SQLConnection = dmsConnector.SQLConnection
    Left = 280
    Top = 16
  end
  object dsp_AvailProd: TDataSetProvider
    DataSet = sq_AvailProd
    Left = 280
    Top = 64
  end
  object cds_AvailProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_AvailProd'
    OnFilterRecord = cds_AvailProdFilterRecord
    Left = 280
    Top = 112
    object cds_AvailProdGradeName: TStringField
      DisplayLabel = 'Kvalitet'
      FieldName = 'GradeName'
      FixedChar = True
      Size = 30
    end
    object cds_AvailProdGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
  end
  object ds_AvailProd: TDataSource
    DataSet = cds_AvailProd
    Left = 280
    Top = 160
  end
  object sq_SelectProd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'templateno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Distinct G.GradeName, G.GradeNo,'
      'ptp.templateno, ptp.Act'
      'FROM'
      'dbo.pricetemplateprod ptp'
      'Inner Join dbo.Product p ON p.ProductNo = ptp.ProductNo'
      'Inner Join dbo.Grade G ON G.GradeNo = p.GradeNo'
      #9#9#9#9'AND G.LanguageCode = 1'
      ' WHERE ptp.templateno = :templateno')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 16
  end
  object dsp_SelectProd: TDataSetProvider
    DataSet = sq_SelectProd
    OnGetTableName = dsp_SelectProdGetTableName
    Left = 368
    Top = 64
  end
  object cds_SelectProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_SelectProd'
    AfterInsert = cds_SelectProdAfterInsert
    Left = 368
    Top = 112
    object cds_SelectProdGradeName: TStringField
      DisplayLabel = 'Kvalitet'
      FieldName = 'GradeName'
      FixedChar = True
      Size = 30
    end
    object cds_SelectProdGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object cds_SelectProdtemplateno: TIntegerField
      FieldName = 'templateno'
    end
    object cds_SelectProdAct: TIntegerField
      FieldName = 'Act'
    end
  end
  object ds_SelectProd: TDataSource
    DataSet = cds_SelectProd
    Left = 368
    Top = 160
  end
  object sq_LengthGroups: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * FROM dbo.ProductLengthGroupName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 264
  end
  object dsp_LengthGroups: TDataSetProvider
    DataSet = sq_LengthGroups
    Left = 40
    Top = 312
  end
  object cds_LengthGroups: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LengthGroups'
    Left = 40
    Top = 360
    object cds_LengthGroupsGroupNo: TIntegerField
      FieldName = 'GroupNo'
    end
    object cds_LengthGroupsGroupName: TStringField
      FieldName = 'GroupName'
      FixedChar = True
    end
  end
  object ds_LengthGroups: TDataSource
    DataSet = cds_LengthGroups
    Left = 40
    Top = 408
  end
  object sq_AvailLengths: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select PL.ProductLengthNo,'
      'PL.ActualLengthMM AS ALMM,'
      'PL.NominalLengthFEET AS FOT,'
      'PL.ActualLengthINCH AS TUM'
      'FROM dbo.ProductLengthGroup  PGL'
      
        'Inner Join dbo.ProductLength PL ON PL.ProductLengthNo = PGL.Prod' +
        'uctLengthNo'
      'WHERE PL.ActualLengthMM > 0'
      'Order by PL.ActualLengthMM'
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 792
    Top = 16
  end
  object dsp_AvailLengths: TDataSetProvider
    DataSet = sq_AvailLengths
    Left = 792
    Top = 64
  end
  object cds_AvailLengths: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_AvailLengths'
    OnFilterRecord = cds_AvailLengthsFilterRecord
    Left = 792
    Top = 112
    object cds_AvailLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_AvailLengthsALMM: TFloatField
      FieldName = 'ALMM'
    end
    object cds_AvailLengthsFOT: TFloatField
      FieldName = 'FOT'
    end
    object cds_AvailLengthsTUM: TStringField
      FieldName = 'TUM'
      FixedChar = True
      Size = 15
    end
  end
  object ds_AvailLengths: TDataSource
    DataSet = cds_AvailLengths
    Left = 792
    Top = 160
  end
  object sq_SelectLengths: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'templateno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select PTR.templateno,'
      'PTR.ProductLengthNo, '
      'PL.ActualLengthMM AS ALMM, '
      'PL.NominalLengthFEET AS FOT, '
      'PL.ActualLengthINCH AS TUM,'
      'PTR.Act'
      'FROM dbo.pricetemplaterow  PTR'
      
        'Inner Join dbo.ProductLength PL ON PL.ProductLengthNo = PTR.Prod' +
        'uctLengthNo'
      'WHERE PTR.templateno = :templateno'
      'Order by PL.ActualLengthMM')
    SQLConnection = dmsConnector.SQLConnection
    Left = 888
    Top = 16
    object sq_SelectLengthstemplateno: TIntegerField
      FieldName = 'templateno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SelectLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SelectLengthsALMM: TFloatField
      FieldName = 'ALMM'
      ProviderFlags = []
    end
    object sq_SelectLengthsFOT: TFloatField
      FieldName = 'FOT'
      ProviderFlags = []
    end
    object sq_SelectLengthsTUM: TStringField
      FieldName = 'TUM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sq_SelectLengthsAct: TIntegerField
      FieldName = 'Act'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_SelectLengths: TDataSetProvider
    DataSet = sq_SelectLengths
    OnGetTableName = dsp_SelectLengthsGetTableName
    Left = 888
    Top = 64
  end
  object cds_SelectLengths: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_SelectLengths'
    AfterInsert = cds_SelectLengthsAfterInsert
    Left = 888
    Top = 112
    object cds_SelectLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_SelectLengthsALMM: TFloatField
      FieldName = 'ALMM'
    end
    object cds_SelectLengthsFOT: TFloatField
      FieldName = 'FOT'
    end
    object cds_SelectLengthsTUM: TStringField
      FieldName = 'TUM'
      FixedChar = True
      Size = 15
    end
    object cds_SelectLengthstemplateno: TIntegerField
      FieldName = 'templateno'
    end
    object cds_SelectLengthsAct: TIntegerField
      FieldName = 'Act'
    end
  end
  object ds_SelectLengths: TDataSource
    DataSet = cds_SelectLengths
    Left = 888
    Top = 160
  end
  object ds_SaveProd: TDataSource
    DataSet = cds_SaveProd
    Left = 464
    Top = 160
  end
  object cds_SaveProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_SaveProd'
    AfterInsert = cds_SaveProdAfterInsert
    Left = 464
    Top = 112
    object cds_SaveProdtemplateno: TIntegerField
      FieldName = 'templateno'
    end
    object cds_SaveProdproductno: TIntegerField
      FieldName = 'productno'
    end
    object cds_SaveProdproductGroupno: TIntegerField
      FieldName = 'productGroupno'
    end
    object cds_SaveProdAct: TIntegerField
      FieldName = 'Act'
    end
  end
  object dsp_SaveProd: TDataSetProvider
    DataSet = sq_SaveProd
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 64
  end
  object sq_SaveProd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'templateno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select ptp.templateno, ptp.productno, ptp.productGroupno, ptp.Ac' +
        't'
      'FROM'
      'dbo.pricetemplateprod ptp'
      'WHERE ptp.templateno = :templateno')
    SQLConnection = dmsConnector.SQLConnection
    Left = 464
    Top = 16
    object sq_SaveProdtemplateno: TIntegerField
      FieldName = 'templateno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SaveProdproductno: TIntegerField
      FieldName = 'productno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SaveProdproductGroupno: TIntegerField
      FieldName = 'productGroupno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SaveProdAct: TIntegerField
      FieldName = 'Act'
    end
  end
  object sq_GetProductNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'GradeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductGroupNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select ProductNo FROM dbo.Product'
      'WHERE GradeNo = :GradeNo'
      'AND ProductGroupNo = :ProductGroupNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 464
    Top = 304
    object sq_GetProductNoProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
  end
  object sq_GetGrades: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'templateno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Distinct G.GradeName, G.GradeNo,'
      'ptp.templateno, ptp.productno, ptp.productGroupno FROM'
      'dbo.pricetemplateprod ptp'
      'Inner Join dbo.Product p ON p.ProductNo = ptp.ProductNo'
      'Inner Join dbo.Grade G ON G.GradeNo = p.GradeNo'
      #9#9#9#9'AND G.LanguageCode = 1'
      'WHERE ptp.templateno = :templateno'
      ''
      'Order By G.GradeName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 800
    Top = 504
    object sq_GetGradesGradeName: TStringField
      FieldName = 'GradeName'
      FixedChar = True
      Size = 30
    end
    object sq_GetGradesGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object sq_GetGradestemplateno: TIntegerField
      FieldName = 'templateno'
    end
    object sq_GetGradesproductno: TIntegerField
      FieldName = 'productno'
    end
    object sq_GetGradesproductGroupno: TIntegerField
      FieldName = 'productGroupno'
    end
  end
  object sq_ChkName: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PriceListName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TemplateNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select PriceListName FROM dbo.PriceTemplateHeader'
      'WHERE'
      'PriceListName = :PriceListName'
      'AND TemplateNo <> :TemplateNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 208
    object StringField1: TStringField
      FieldName = 'PriceListName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object mtLengthFilter: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 192
    Top = 256
    object mtLengthFilterGroupNo: TIntegerField
      FieldName = 'GroupNo'
      OnChange = mtLengthFilterGroupNoChange
    end
    object mtLengthFilterGroupName: TStringField
      FieldKind = fkLookup
      FieldName = 'GroupName'
      LookupDataSet = cds_LengthGroups
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'GroupNo'
      Lookup = True
    end
  end
  object dsLengthFilter: TDataSource
    DataSet = mtLengthFilter
    Left = 192
    Top = 304
  end
  object sq_VerkPriceAdj: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * FROM dbo.VerkPriceAdj')
    SQLConnection = dmsConnector.SQLConnection
    Left = 904
    Top = 256
    object sq_VerkPriceAdjClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_VerkPriceAdjAdjPrice: TFloatField
      FieldName = 'FDjPrice'
      ProviderFlags = [pfInUpdate]
    end
    object sq_VerkPriceAdjDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_VerkPriceAdjCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_VerkPriceAdj: TDataSetProvider
    DataSet = sq_VerkPriceAdj
    UpdateMode = upWhereKeyOnly
    Left = 904
    Top = 304
  end
  object cds_VerkPriceAdj: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_VerkPriceAdj'
    BeforePost = cds_VerkPriceAdjBeforePost
    Left = 904
    Top = 352
    object cds_VerkPriceAdjClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_VerkPriceAdjAdjPrice: TFloatField
      DisplayLabel = 'Priskorrigering (sek/nm3)'
      FieldName = 'FDjPrice'
    end
    object cds_VerkPriceAdjDateCreated: TSQLTimeStampField
      DisplayLabel = #196'ndrad'
      FieldName = 'DateCreated'
    end
    object cds_VerkPriceAdjCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_VerkPriceAdjVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
  object ds_VerkPriceAdj: TDataSource
    DataSet = cds_VerkPriceAdj
    Left = 904
    Top = 400
  end
  object sq_vwcost: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * FROM dbo.vwcost')
    SQLConnection = dmsConnector.SQLConnection
    Left = 648
    Top = 256
    object sq_vwcostvwcost: TFloatField
      FieldName = 'vwcost'
      ProviderFlags = [pfInUpdate]
    end
    object sq_vwcostfom: TSQLTimeStampField
      FieldName = 'fom'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_vwcostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_vwcostModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_vwcost: TDataSetProvider
    DataSet = sq_vwcost
    UpdateMode = upWhereKeyOnly
    Left = 648
    Top = 304
  end
  object cds_vwcost: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_vwcost'
    AfterInsert = cds_vwcostAfterInsert
    BeforePost = cds_vwcostBeforePost
    Left = 648
    Top = 352
    object cds_vwcostvwcost: TFloatField
      DisplayLabel = 'Vida Wood kostnad'
      FieldName = 'vwcost'
    end
    object cds_vwcostfom: TSQLTimeStampField
      DisplayLabel = 'FOM'
      FieldName = 'fom'
    end
    object cds_vwcostDateCreated: TSQLTimeStampField
      DisplayLabel = #196'ndrad'
      FieldName = 'DateCreated'
    end
    object cds_vwcostModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object ds_vwcost: TDataSource
    DataSet = cds_vwcost
    Left = 648
    Top = 400
  end
end
