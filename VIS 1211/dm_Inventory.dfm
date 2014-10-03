object dmInventory: TdmInventory
  OldCreateOrder = False
  Left = 216
  Top = 108
  Height = 590
  Width = 783
  object sq_Temp_Inventory: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmsConnector.SQLConnection
    Left = 56
    Top = 24
  end
  object sq_Grades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select GradeName, GradeNo'
      'From Grade'
      'where LanguageCode = 1'
      'Order by GradeName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 56
    Top = 120
  end
  object sq_Species: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select SpeciesName, SpeciesNo'
      'From Species'
      'where LanguageCode = 1'
      'Order by SpeciesName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 56
    Top = 168
  end
  object sq_LogInvByOwnerCity: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CityNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select LIP.LogicalInventoryName, LIP.LogicalInventoryPointNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP '
      
        '        Inner Join dbo.LogicalInventoryPoint LIP ON  LIP.Physica' +
        'lInventoryPointNo = PIP.PhysicalInventoryPointNo'
      '        '
      ''
      'WHERE'
      ' PIP.OwnerNo = :OwnerNo'
      'AND PIP.PhyInvPointNameNo = :CityNo'
      'AND PIP.SequenceNo = 1'
      'AND LIP.SequenceNo = 1')
    SQLConnection = dmsConnector.SQLConnection
    Left = 56
    Top = 72
    object sq_LogInvByOwnerCityLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object sq_LogInvByOwnerCityLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
  end
  object sq_Specie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select  S.SpeciesNo,'
      'CASE WHEN s.speciescode is null then'
      'S.speciesName'
      'ELSE'
      'S.speciescode+'#39' - '#39'+S.speciesName'
      'END AS speciesName'
      'From dbo.Species S'
      'where S.LanguageCode = 1'
      'Order by S.speciescode')
    SQLConnection = dmsConnector.SQLConnection
    Left = 344
    Top = 24
  end
  object dspSpecies: TDataSetProvider
    DataSet = sq_Specie
    Left = 344
    Top = 72
  end
  object cdsSpecies: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSpecies'
    Left = 344
    Top = 120
    object cdsSpeciesSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Size = 30
    end
    object cdsSpeciesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
  end
  object sq_Surfacing: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select  S.SurfacingNo,'
      'CASE WHEN s.Surfacingcode is null then'
      'S.SurfacingName'
      'ELSE'
      'S.Surfacingcode+'#39' - '#39'+S.SurfacingName'
      'END AS SurfacingName'
      ''
      'From dbo.Surfacing S'
      'where S.LanguageCode = 1'
      'Order by S.Surfacingcode, S.SurfacingName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 584
    Top = 24
  end
  object dspSurfacing: TDataSetProvider
    DataSet = sq_Surfacing
    Left = 584
    Top = 72
  end
  object cdsSurfacing: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSurfacing'
    Left = 584
    Top = 120
    object cdsSurfacingSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Size = 30
    end
    object cdsSurfacingSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
  end
  object sq_Grade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select '
      'CASE WHEN g.gradecode is null then'
      'G.GradeName'
      'ELSE'
      'g.gradecode+'#39' - '#39'+G.GradeName'
      'END AS GradeName,'
      'G.GradeNo, g.gradecode'
      'From dbo.Grade G'
      'where g.LanguageCode = 1'
      'Order by g.gradecode , G.GradeName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 496
    Top = 24
  end
  object dsp_Grades: TDataSetProvider
    DataSet = sq_Grade
    Left = 496
    Top = 72
  end
  object cdsGrades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Grades'
    Left = 496
    Top = 120
    object cdsGradesGradeName: TStringField
      FieldName = 'GradeName'
      Size = 30
    end
    object cdsGradesGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
  end
  object mtSpecies: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 344
    Top = 184
    object mtSpeciesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object mtSpeciesSpeciesName: TStringField
      FieldKind = fkLookup
      FieldName = 'SpeciesName'
      LookupDataSet = cdsSpecies
      LookupKeyFields = 'SpeciesNo'
      LookupResultField = 'SpeciesName'
      KeyFields = 'SpeciesNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_Species: TDataSource
    DataSet = mtSpecies
    OnDataChange = ds_SpeciesDataChange
    Left = 344
    Top = 232
  end
  object mtGrade: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 496
    Top = 184
    object mtGradeGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object mtGradeGradeName: TStringField
      FieldKind = fkLookup
      FieldName = 'GradeName'
      LookupDataSet = cdsGrades
      LookupKeyFields = 'GradeNo'
      LookupResultField = 'GradeName'
      KeyFields = 'GradeNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_Grade: TDataSource
    DataSet = mtGrade
    OnDataChange = ds_SpeciesDataChange
    Left = 496
    Top = 232
  end
  object mtSurfacing: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 584
    Top = 176
    object mtSurfacingSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtSurfacingSurfacingName: TStringField
      FieldKind = fkLookup
      FieldName = 'SurfacingName'
      LookupDataSet = cdsSurfacing
      LookupKeyFields = 'SurfacingNo'
      LookupResultField = 'SurfacingName'
      KeyFields = 'SurfacingNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_Surfacing: TDataSource
    DataSet = mtSurfacing
    OnDataChange = ds_SpeciesDataChange
    Left = 584
    Top = 224
  end
  object mtActThick: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 672
    Top = 168
    object mtActThickThickness: TFloatField
      FieldName = 'Thickness'
    end
  end
  object sq_AThickMM: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Distinct ActualThicknessMM'
      'From ProductGroup'
      'Order by ActualThicknessMM'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 672
    Top = 16
  end
  object dsp_AThickMM: TDataSetProvider
    DataSet = sq_AThickMM
    Left = 672
    Top = 64
  end
  object cds_AThickMM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_AThickMM'
    Left = 672
    Top = 112
    object cds_AThickMMActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
  end
  object ds_AThickMM: TDataSource
    DataSet = mtActThick
    OnDataChange = ds_SpeciesDataChange
    Left = 672
    Top = 216
  end
  object mtAWidthMM: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 672
    Top = 272
    object mtAWidthMMWidth: TFloatField
      FieldName = 'Width'
    end
  end
  object ds_AWidthMM: TDataSource
    DataSet = mtAWidthMM
    OnDataChange = ds_SpeciesDataChange
    Left = 672
    Top = 320
  end
  object mtActLengthMM: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 672
    Top = 368
    object mtActLengthMMActLengthMM: TFloatField
      FieldName = 'ActLengthMM'
    end
  end
  object ds_ActLength: TDataSource
    DataSet = mtActLengthMM
    OnDataChange = ds_SpeciesDataChange
    Left = 672
    Top = 416
  end
  object sq_MainGrade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Distinct mg.MainGradeName, mg.MainGradeNo'
      'From dbo.MainGrade mg'
      'Inner Join dbo.Grade g on g.mainGradeNo = mg.MainGradeNo'
      'where g.LanguageCode = 1'
      'Order by mg.MainGradeName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 416
    Top = 24
  end
  object dsp_MainGrades: TDataSetProvider
    DataSet = sq_MainGrade
    Left = 416
    Top = 72
  end
  object cdsMainGrades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_MainGrades'
    Left = 416
    Top = 120
    object cdsMainGradesMainGradeName: TStringField
      FieldName = 'MainGradeName'
      Size = 30
    end
    object cdsMainGradesMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
    end
  end
  object mtMainGrade: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 416
    Top = 176
    object mtMainGradeGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
    end
    object mtMainGradeGradeName: TStringField
      FieldKind = fkLookup
      FieldName = 'MainGradeName'
      LookupDataSet = cdsMainGrades
      LookupKeyFields = 'MainGradeNo'
      LookupResultField = 'MainGradeName'
      KeyFields = 'MainGradeNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_MainGrade: TDataSource
    DataSet = mtMainGrade
    OnDataChange = ds_MainGradeDataChange
    Left = 416
    Top = 232
  end
  object sq_BarCode: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select BarCodeNo, BarCode FROM dbo.BarCode'
      'Order by BarCode')
    SQLConnection = dmsConnector.SQLConnection
    Left = 272
    Top = 24
  end
  object dsp_BarCode: TDataSetProvider
    DataSet = sq_BarCode
    Left = 272
    Top = 72
  end
  object cds_BarCode: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_BarCode'
    Left = 272
    Top = 120
    object cds_BarCodeBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object cds_BarCodeBarCode: TStringField
      FieldName = 'BarCode'
    end
  end
  object mt_BarCode: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'BarCodeNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 272
    Top = 184
    object BarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object BarCodeName: TStringField
      FieldKind = fkLookup
      FieldName = 'BarCodeName'
      LookupDataSet = cds_BarCode
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_BarCode: TDataSource
    DataSet = mt_BarCode
    OnDataChange = ds_BarCodeDataChange
    Left = 272
    Top = 232
  end
  object sq_GradeStamp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select GradeStampNo, GradeStamp FROM dbo.GradeStamp'
      'Order by GradeStamp')
    SQLConnection = dmsConnector.SQLConnection
    Left = 184
    Top = 24
  end
  object dsp_GradeStamp: TDataSetProvider
    DataSet = sq_GradeStamp
    Left = 184
    Top = 72
  end
  object cds_GradeStamp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_GradeStamp'
    Left = 184
    Top = 120
    object cds_GradeStampGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object cds_GradeStampGradeStamp: TStringField
      FieldName = 'GradeStamp'
    end
  end
  object mt_GradeStamp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 184
    Top = 184
    object GradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object GradeStampName: TStringField
      FieldKind = fkLookup
      FieldName = 'GradeStampName'
      LookupDataSet = cds_GradeStamp
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_GradeStamp: TDataSource
    DataSet = mt_GradeStamp
    OnDataChange = ds_GradeStampDataChange
    Left = 184
    Top = 232
  end
  object mtIMP: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 184
    Top = 288
    object mtIMPImpNo: TIntegerField
      FieldName = 'ImpNo'
    end
    object mtIMPIMP: TStringField
      FieldKind = fkLookup
      FieldName = 'IMP'
      LookupDataSet = cds_Imp
      LookupKeyFields = 'ProductCategoryNo'
      LookupResultField = 'Imp'
      KeyFields = 'ImpNo'
      Size = 28
      Lookup = True
    end
  end
  object dsIMP: TDataSource
    DataSet = mtIMP
    OnDataChange = ds_SpeciesDataChange
    Left = 184
    Top = 336
  end
  object sq_Imp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select  S.ProductCategoryNo,'
      'CASE WHEN s.ImpCode is null then'
      'S.ProductCategoryName'
      'ELSE'
      'S.ImpCode+'#39' - '#39'+S.ProductCategoryName'
      'END AS Imp'
      'From dbo.ProductCategory S'
      ''
      'Order by S.ImpCode')
    SQLConnection = dmsConnector.SQLConnection
    Left = 184
    Top = 392
  end
  object dsp_Imp: TDataSetProvider
    DataSet = sq_Imp
    Left = 184
    Top = 440
  end
  object cds_Imp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_imp'
    Left = 184
    Top = 488
    object cds_ImpProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
    end
    object cds_ImpImp: TStringField
      FieldName = 'Imp'
      Size = 28
    end
  end
  object sq_RunNos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RegPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Operation'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Distinct '
      '(Select MIN(pp2.ProductionDate) FROM dbo.Package_Production PP2 '
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PP.ProductionUnitNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      ') AS K'#246'rdatum,'
      ''
      'pp.RunNo AS K'#246'rNr,'
      'pd.ProductDisplayName AS Produkt,'
      'pp.Operation'
      'FROM  dbo.Package_Production PP'
      'Inner Join dbo.PackageNumber pn '#9'ON pn.PackageNo = PP.PackageNo'
      'AND pn.SupplierCode = PP.SupplierCode'
      
        '--Inner Join RegistrationPoint PU ON PU.RegPointNo = PP.Producti' +
        'onUnitNo'
      '--Inner Join Client Verk ON Verk.ClientNo = PP.SupplierNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = PP.PackageT' +
        'ypeNo'
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      ''
      'WHERE pp.ProductionDate >= '#39'2008-01-01 00:00:00'#39
      'AND PP.ProductionUnitNo = :RegPointNo'
      'AND PP.SupplierNo = :ClientNo'
      'and PP.Operation = :Operation'
      'and pp.RunNo > 0')
    SQLConnection = dmsConnector.SQLConnection
    Left = 336
    Top = 304
  end
  object dsp_RunNos: TDataSetProvider
    DataSet = sq_RunNos
    Left = 336
    Top = 352
  end
  object cds_RunNos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_RunNos'
    Left = 336
    Top = 400
    object cds_RunNosKrdatum: TSQLTimeStampField
      FieldName = 'K'#246'rdatum'
    end
    object cds_RunNosKrNr: TIntegerField
      FieldName = 'K'#246'rNr'
    end
    object cds_RunNosProdukt: TStringField
      DisplayLabel = 'Produkt (R'#229'vara)'
      FieldName = 'Produkt'
      Size = 100
    end
    object cds_RunNosOperation: TIntegerField
      FieldName = 'Operation'
    end
  end
  object ds_RunNos: TDataSource
    DataSet = cds_RunNos
    Left = 336
    Top = 456
  end
end
