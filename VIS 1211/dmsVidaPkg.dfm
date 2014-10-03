object dmsPkg: TdmsPkg
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 230
  Top = 108
  Height = 649
  Width = 1020
  object sp_PackageType2: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_PackageType'
    Left = 824
    Top = 312
  end
  object provPackageType2: TDataSetProvider
    DataSet = sp_PackageType2
    Left = 824
    Top = 360
  end
  object sp_ProductGroups2: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_ProductGroups'
    Left = 832
    Top = 152
  end
  object provProductGroups2: TDataSetProvider
    DataSet = sp_ProductGroups2
    Left = 832
    Top = 200
  end
  object sp_ProductGroupDesc2: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ProductGroupNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Description'
        ParamType = ptInputOutput
        Size = 80
      end
      item
        DataType = ftFloat
        Name = 'Thickness'
        ParamType = ptInputOutput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'Width'
        ParamType = ptInputOutput
        Size = 8
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_ProductGroupDesc'
    Left = 832
    Top = 248
  end
  object sp_Packages2: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'LogInvPtNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PhysInvPtNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Packages'
    Left = 824
    Top = 408
  end
  object provPackages2: TDataSetProvider
    DataSet = sp_Packages2
    Left = 824
    Top = 456
  end
  object sp_ProductLengths2: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_ProductLengths'
    Left = 832
    Top = 96
  end
  object sp_PackageTypes: TSQLStoredProc
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
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BarCodeID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GradeStamp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TotalPieces'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vis_PkgType'
    Left = 280
    Top = 24
  end
  object sp_PackageTypeDetail: TSQLStoredProc
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
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_PackageTypeDetail'
    Left = 280
    Top = 72
  end
  object sp_NewPackageType: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BarCodeID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GradeStamp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TotalNoOfPieces'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProdInstruNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vis_NewPkgType'
    Left = 280
    Top = 120
  end
  object sp_NewPackageDetail: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductLengthNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NoOfPieces'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_NewPackageDetail'
    Left = 280
    Top = 168
  end
  object sp_NewPackageNo: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CreatedOfPkgStr'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProducerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RunNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_NewPackageNo_II'
    Left = 280
    Top = 216
  end
  object sp_OnePackageNo: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_OnePackageNo'
    Left = 40
    Top = 224
  end
  object sp_PackageTotals: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PkgNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_PackageTotals'
    Left = 280
    Top = 264
  end
  object sp_StandardLengths: TSQLStoredProc
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
        Name = 'LengthGroupNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_StandardLengths'
    Left = 400
    Top = 224
    object sp_StandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Required = True
    end
  end
  object mtPackages: TkbmMemTable
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
    BeforeInsert = mtPackagesBeforeInsert
    AfterInsert = mtPackagesAfterInsert
    BeforePost = mtPackagesBeforePost
    AfterPost = mtPackagesAfterPost
    BeforeDelete = mtPackagesBeforeDelete
    AfterDelete = mtPackagesAfterDelete
    Left = 688
    Top = 128
  end
  object sq_ProductLengths: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.Nomina' +
        'lLengthMM, PL.NominalLengthFEET ,'
      'PL.ActualLengthINCH'
      
        'FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL O' +
        'N PL.ProductLengthNo = PGL.ProductLengthNo'
      'Where PL.ActualLengthMM < 20000')
    SQLConnection = dmsConnector.SQLConnection
    Left = 400
    Top = 168
    object sq_ProductLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
  end
  object mtProdSpecificLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'ProductGroupNo'
    IndexName = 'mtProdSpecificLengthsIndex1'
    IndexDefs = <
      item
        Name = 'mtProdSpecificLengthsIndex1'
        Fields = 'ProductGroupNo'
      end
      item
        Name = 'mtProdSpecificLengthsIndex2'
        Fields = 'ProductGroupNo;ProductLengthNo'
      end>
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
    Top = 120
    object mtProdSpecificLengthsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtProdSpecificLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object sp_ProdLeng: TSQLStoredProc
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
        Name = 'ProductGroupNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'VIDA_ProdLeng'
    Left = 496
    Top = 168
    object sp_ProdLengProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Required = True
    end
  end
  object mtStandardLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'ProductLengthNo'
    IndexName = 'mtStandardLengthsIndex1'
    IndexDefs = <
      item
        Name = 'mtStandardLengthsIndex1'
        Fields = 'ProductLengthNo'
      end>
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
    Left = 400
    Top = 272
    object mtStandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object sq_ProdLength: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * FROM dbo.ProductLength')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 24
    object sq_ProdLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ProdLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProdLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProdLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProdLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object sq_ProdLengthCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProdLengthModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProdLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProdLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProdLengthProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_ProdLengthAct: TIntegerField
      FieldName = 'Act'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_ProductGroupLength: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select *'
      'FROM'
      'dbo.ProductGroupLengths')
    SQLConnection = dmsConnector.SQLConnection
    Left = 160
    Top = 24
  end
  object dsp_ProdLength: TDataSetProvider
    DataSet = sq_ProdLength
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 72
  end
  object dsp_ProductGroupLength: TDataSetProvider
    DataSet = sq_ProductGroupLength
    Left = 160
    Top = 72
  end
  object cds_ProdLength: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'ActualLengthMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalLengthMM'
        DataType = ftFloat
      end
      item
        Name = 'NominalLengthFEET'
        DataType = ftFloat
      end
      item
        Name = 'ActualLengthINCH'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PET'
        DataType = ftInteger
      end
      item
        Name = 'FingerJoint'
        DataType = ftInteger
      end
      item
        Name = 'CreatedUser'
        DataType = ftSmallint
      end
      item
        Name = 'ModifiedUser'
        DataType = ftSmallint
      end
      item
        Name = 'DateCreated'
        DataType = ftTimeStamp
      end
      item
        Name = 'SequenceNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'Act'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_ProdLengthIndex1'
        Fields = 'ActualLengthMM;NominalLengthMM'
      end>
    IndexName = 'cds_ProdLengthIndex1'
    Params = <>
    ProviderName = 'dsp_ProdLength'
    StoreDefs = True
    AfterInsert = cds_ProdLengthAfterInsert
    OnReconcileError = cds_ProdLengthReconcileError
    Left = 40
    Top = 120
    object cds_ProdLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_ProdLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object cds_ProdLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object cds_ProdLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
    end
    object cds_ProdLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Size = 15
    end
    object cds_ProdLengthCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_ProdLengthModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_ProdLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_ProdLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object cds_ProdLengthAct: TIntegerField
      FieldName = 'Act'
    end
  end
  object cds_ProductGroupLength: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'CreatedUser'
        DataType = ftInteger
      end
      item
        Name = 'ModifiedUser'
        DataType = ftInteger
      end
      item
        Name = 'DateCreated'
        DataType = ftTimeStamp
      end>
    IndexDefs = <
      item
        Name = 'cds_ProductGroupLengthIndex1'
        Fields = 'ProductGroupNo;ProductLengthNo'
      end>
    IndexName = 'cds_ProductGroupLengthIndex1'
    Params = <>
    ProviderName = 'dsp_ProductGroupLength'
    StoreDefs = True
    OnReconcileError = cds_ProductGroupLengthReconcileError
    Left = 160
    Top = 120
    object cds_ProductGroupLengthProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cds_ProductGroupLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_ProductGroupLengthCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_ProductGroupLengthModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_ProductGroupLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object mtDupPkgNo: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PackageNo'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end>
    IndexFieldNames = 'PackageNo;SupplierCode'
    IndexName = 'mtDupPkgNoIndex1'
    IndexDefs = <
      item
        Name = 'mtDupPkgNoIndex1'
        Fields = 'PackageNo;SupplierCode'
        Options = [ixPrimary]
      end>
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
    Left = 400
    Top = 24
    object mtDupPkgNoPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtDupPkgNoSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
  end
  object sq_NewPackageType2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BarCodeID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GradeStamp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WrapType'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageHeight'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageWidth'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Minibundled'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShrinkWrap'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OnSticks'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TotalNoOfPieces'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TotalM3Actual'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'INSERT'
      'INTO    dbo.PackageType'
      '        ('
      '          PackageTypeNo,'
      '          ProductNo,'
      '          BarCodeID,'
      '          GradeStamp,'
      '          WrapType,'
      '          PackageHeight,'
      '          PackageWidth,'
      '          Minibundled,'
      '          ShrinkWrap,'
      '          OnSticks,'
      '          TotalNoOfPieces,'
      '          TotalM3Actual,'
      '          CreatedUser,'
      '          ModifiedUser,'
      '          DateCreated'
      '        )'
      ''
      ' VALUES ('
      '          :PackageTypeNo,'
      '          :ProductNo,'
      '          :BarCodeID,'
      '          :GradeStamp,'
      '          :WrapType,'
      '          :PackageHeight,'
      '          :PackageWidth,'
      '          :Minibundled,'
      '          :ShrinkWrap,'
      '          :OnSticks,'
      '          :TotalNoOfPieces,'
      '          :TotalM3Actual,'
      '          :UserID,'
      '          :UserID,'
      '          :DateCreated'
      '          )'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 832
    Top = 40
  end
  object sp_Populate_One_PkgTypeLengths: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SearchPackageTypeNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Populate_One_PackageTypeLengths'
    Left = 280
    Top = 320
  end
  object mtProd_Records: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCTDESCRIPTION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ACT_THICK'
        DataType = ftFloat
      end
      item
        Name = 'ACT_WIDTH'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
      end
      item
        Name = 'NOM_THICK'
        DataType = ftFloat
      end
      item
        Name = 'NOM_WIDTH'
        DataType = ftFloat
      end
      item
        Name = 'PKGWIDTH'
        DataType = ftInteger
      end
      item
        Name = 'PKGHEIGHT'
        DataType = ftInteger
      end
      item
        Name = 'MINIBUNDLE'
        DataType = ftInteger
      end
      item
        Name = 'SHRINKWRAP'
        DataType = ftInteger
      end
      item
        Name = 'GRADESTAMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BARCODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'WRAPTYPE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarcodeID'
        DataType = ftInteger
      end
      item
        Name = 'WrapTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'ShrinkWrapNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'ProductNo'
    IndexName = 'mtProd_RecordsIndex3'
    IndexDefs = <
      item
        Name = 'mtProd_RecordsIndex3'
        Fields = 'ProductNo'
      end>
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
    Top = 24
    object mtProd_RecordsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtProd_RecordsPRODUCTDESCRIPTION: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object mtProd_RecordsACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
    end
    object mtProd_RecordsACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
    end
    object mtProd_RecordsPRODUCTGROUPNO: TIntegerField
      FieldName = 'PRODUCTGROUPNO'
    end
    object mtProd_RecordsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object mtProd_RecordsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object mtProd_RecordsPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
    end
    object mtProd_RecordsPKGHEIGHT: TIntegerField
      FieldName = 'PKGHEIGHT'
    end
    object mtProd_RecordsMINIBUNDLE: TIntegerField
      FieldName = 'MINIBUNDLE'
    end
    object mtProd_RecordsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtProd_RecordsBarcodeID: TIntegerField
      FieldName = 'BarcodeID'
    end
    object mtProd_RecordsWrapTypeNo: TIntegerField
      FieldName = 'WrapTypeNo'
    end
    object mtProd_RecordsShrinkWrapNo: TIntegerField
      FieldName = 'ShrinkWrapNo'
    end
    object mtProd_RecordsLOPP: TStringField
      DisplayLabel = 'Streckkod'
      FieldKind = fkLookup
      FieldName = 'LOPP'
      LookupDataSet = dmsSystem.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarcodeID'
      Lookup = True
    end
    object mtProd_RecordsPWrap: TStringField
      DisplayLabel = 'PAPER WRAP'
      FieldKind = fkLookup
      FieldName = 'PWrap'
      LookupDataSet = dmsSystem.cdsPaperWraps
      LookupKeyFields = 'WrapTypeNo'
      LookupResultField = 'WrapType'
      KeyFields = 'WrapTypeNo'
      Size = 15
      Lookup = True
    end
    object mtProd_RecordsGStamps: TStringField
      DisplayLabel = 'St'#228'mpel'
      FieldKind = fkLookup
      FieldName = 'GStamps'
      LookupDataSet = dmsSystem.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtProd_RecordsOnSticks: TIntegerField
      FieldName = 'OnSticks'
    end
    object mtProd_RecordsINCH_THICK: TFloatField
      FieldName = 'INCH_THICK'
    end
    object mtProd_RecordsINCH_WIDTH: TFloatField
      FieldName = 'INCH_WIDTH'
    end
    object mtProd_RecordsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
  end
  object ds_Prod_Records: TDataSource
    DataSet = mtProd_Records
    Left = 496
    Top = 72
  end
  object sp_PkgInfo: TSQLStoredProc
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
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_OnePackage_Info'
    Left = 40
    Top = 168
    object sp_PkgInfoCREATED: TSQLTimeStampField
      FieldName = 'CREATED'
      Required = True
    end
    object sp_PkgInfoCREATED_BY: TStringField
      FieldName = 'CREATED_BY'
      Required = True
    end
    object sp_PkgInfoOWNER: TStringField
      FieldName = 'OWNER'
      Required = True
      Size = 80
    end
    object sp_PkgInfoPKG_STATUS: TIntegerField
      FieldName = 'PKG_STATUS'
      Required = True
    end
    object sp_PkgInfoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Required = True
      Size = 50
    end
  end
  object ds_mtDupPkgNo: TDataSource
    DataSet = mtDupPkgNo
    Left = 400
    Top = 72
  end
  object mtProps: TkbmMemTable
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
    Left = 40
    Top = 312
    object mtPropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtPropsOwnerNoChange
    end
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtPropsPIPNoChange
    end
    object mtPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPropsInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtPropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtPropsRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtPropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtPropsRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtPropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      OnChange = mtPropsProducerNoChange
    end
    object mtPropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtPropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtPropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtPropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtPropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtPropsLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtPropsLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtPropsPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtPropsOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtPropsVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object mtPropsRoleType: TIntegerField
      FieldName = 'RoleType'
    end
  end
  object sq_verk: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6))'
      ''
      'Order by C.clientName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 408
  end
  object dsp_verk: TDataSetProvider
    DataSet = sq_verk
    Left = 40
    Top = 456
  end
  object cds_Verk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_verk'
    Left = 40
    Top = 504
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Size = 80
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 40
    Top = 552
  end
  object sq_Producer: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 2'
      ''
      'Order by C.clientName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 120
    Top = 408
  end
  object dsp_producer: TDataSetProvider
    DataSet = sq_Producer
    Left = 120
    Top = 456
  end
  object cds_producer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_verk'
    Left = 120
    Top = 504
    object cds_producerClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_producerClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cds_producerSearchName: TStringField
      FieldName = 'SearchName'
      Size = 80
    end
  end
  object ds_Producer: TDataSource
    DataSet = cds_producer
    Left = 120
    Top = 552
  end
  object sq_PIP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LegoOwnerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS PIPNAME'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY, ClientRole CR'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND CR.ClientNo = PH.OwnerNo'
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 208
    Top = 409
  end
  object sq_LIP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PIPNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1')
    SQLConnection = dmsConnector.SQLConnection
    Left = 296
    Top = 409
  end
  object dsp_PIP: TDataSetProvider
    DataSet = sq_PIP
    Left = 208
    Top = 456
  end
  object dsp_LIP: TDataSetProvider
    DataSet = sq_LIP
    Left = 296
    Top = 456
  end
  object cds_PIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PIP'
    Left = 208
    Top = 504
    object cds_PIPPIPNO: TIntegerField
      FieldName = 'PIPNO'
    end
    object cds_PIPPIPNAME: TStringField
      FieldName = 'PIPNAME'
      Size = 50
    end
  end
  object cds_LIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LIP'
    Left = 296
    Top = 504
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object cds_LIPLIPName: TStringField
      FieldName = 'LIPName'
      Size = 50
    end
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 208
    Top = 552
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 296
    Top = 552
  end
  object sq_RegPoint: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT   Distinct RP.RegPointName AS ProductionUnitName,'
      'PU.RegistrationPointNo'
      'FROM dbo.ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      'WHERE'
      ' PU.ClientNo = :ClientNo'
      'ORDER BY RP.RegPointName'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 376
    Top = 408
  end
  object dsp_RegPoint: TDataSetProvider
    DataSet = sq_RegPoint
    Left = 376
    Top = 456
  end
  object cds_RegPoint: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_RegPoint'
    Left = 376
    Top = 504
    object cds_RegPointProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      FixedChar = True
      Size = 30
    end
    object cds_RegPointRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
    end
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 376
    Top = 552
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 40
    Top = 360
  end
  object sq_LengthGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT  Distinct GroupNo, GroupName '
      'FROM dbo.ProductLengthGroupName '
      'ORDER BY GroupName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 472
    Top = 408
  end
  object dsp_LengthGroup: TDataSetProvider
    DataSet = sq_LengthGroup
    Exported = False
    Left = 472
    Top = 456
  end
  object cds_LengthGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LengthGroup'
    Left = 472
    Top = 504
    object cds_LengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
    end
    object cds_LengthGroupGroupName: TStringField
      FieldName = 'GroupName'
      FixedChar = True
    end
  end
  object ds_LengthGroup: TDataSource
    DataSet = cds_LengthGroup
    Left = 472
    Top = 552
  end
  object sq_Props: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Form'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    SQLConnection = dmsConnector.SQLConnection
    Left = 624
    Top = 312
    object sq_PropsUserID: TIntegerField
      FieldName = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PropsForm: TStringField
      FieldName = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsInputOption: TIntegerField
      FieldName = 'InputOption'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsRunNo: TIntegerField
      FieldName = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sq_PropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_Props: TDataSetProvider
    DataSet = sq_Props
    UpdateMode = upWhereKeyOnly
    Left = 624
    Top = 360
  end
  object cds_Props: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Props'
    OnReconcileError = cds_PropsReconcileError
    Left = 624
    Top = 408
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object cds_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object cds_PropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object cds_PropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object cds_PropsInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object cds_PropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object cds_PropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
    end
    object cds_PropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object cds_PropsRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object cds_PropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object cds_PropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object cds_PropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object cds_PropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object cds_PropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object cds_PropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 624
    Top = 456
  end
  object sq_GetPkgTypeNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PcsPerLength'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BarCodeID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GradeStamp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TotalNoOfPieces'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select pt.PackageTypeNo FROM'
      'dbo.PackageType pt'
      
        'Inner Join dbo.PackageTypeLengths ptl on  ptl.PackageTypeNo = pt' +
        '.PackageTypeNo'
      'WHERE ptl.PcsPerLength = :PcsPerLength'
      'AND pt.ProductNo = :ProductNo'
      'AND pt.BarCodeID = :BarCodeID'
      'AND pt.GradeStamp = :GradeStamp'
      'AND pt.TotalNoOfPieces = :TotalNoOfPieces')
    SQLConnection = dmsConnector.SQLConnection
    Left = 616
    Top = 32
    object sq_GetPkgTypeNoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
  end
  object mtPcsPerLength: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexFieldNames = 'ALMM'
    IndexName = 'mtPcsPerLengthIndex1'
    IndexDefs = <
      item
        Name = 'mtPcsPerLengthIndex1'
        Fields = 'ALMM'
      end>
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
    Left = 624
    Top = 240
    object mtPcsPerLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtPcsPerLengthProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtPcsPerLengthNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object mtPcsPerLengthUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtPcsPerLengthALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
end
