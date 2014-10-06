object dmsSystem: TdmsSystem
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 827
  Width = 1234
  object dsrcBarCodes: TDataSource
    DataSet = cdsBarCodes
    Left = 128
    Top = 72
  end
  object dsrcGradeStamps: TDataSource
    DataSet = cdsGradeStamps
    Left = 216
    Top = 72
  end
  object dsrcPaperWraps: TDataSource
    DataSet = cdsPaperWraps
    Left = 304
    Top = 64
  end
  object dsrcPkgsByInvOwner: TDataSource
    DataSet = cdsPkgsByInvOwner
    Left = 416
    Top = 72
  end
  object dsrcPkgsByInvOwner_II: TDataSource
    DataSet = cdsPksByInvOwner_II
    Left = 232
    Top = 664
  end
  object ds_pkgLog: TDataSource
    DataSet = cds_pkgLog
    Left = 528
    Top = 72
  end
  object ds_PksByInventoryPlace: TDataSource
    DataSet = cds_PksByInventoryPlace
    Left = 640
    Top = 72
  end
  object ds_Grade_SV: TDataSource
    DataSet = cds_Grade_SV
    Left = 256
    Top = 184
  end
  object ds_Surfacing_SV: TDataSource
    DataSet = cds_Surfacing_SV
    Left = 432
    Top = 184
  end
  object ds_PkgsByInventering: TDataSource
    Left = 352
    Top = 664
  end
  object mtSelectedPkgNo: TkbmMemTable
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
    AfterInsert = mtSelectedPkgNoAfterInsert
    BeforePost = mtSelectedPkgNoBeforePost
    Left = 1120
    Top = 24
    object mtSelectedPkgNoPAKETNR: TIntegerField
      FieldName = 'PAKETNR'
    end
    object mtSelectedPkgNoLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Size = 3
    end
    object mtSelectedPkgNoSTYCKPERLNGD: TStringField
      FieldName = 'STYCKPERL'#196'NGD'
      Size = 255
    end
    object mtSelectedPkgNoAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '###,###,###.000'
    end
    object mtSelectedPkgNoSTYCK: TIntegerField
      FieldName = 'STYCK'
    end
    object mtSelectedPkgNoREGISTRERAT: TSQLTimeStampField
      FieldName = 'REGISTRERAT'
    end
    object mtSelectedPkgNoNOOFLENGTHS: TIntegerField
      FieldName = 'NOOFLENGTHS'
    end
    object mtSelectedPkgNoProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtSelectedPkgNoMARKERAD: TIntegerField
      FieldName = 'MARKERAD'
    end
    object mtSelectedPkgNoProdukt: TStringField
      DisplayLabel = 'PRODUKT'
      FieldName = 'Produkt'
      Size = 100
    end
    object mtSelectedPkgNoHTFStatus: TStringField
      FieldName = 'HTFStatus'
    end
    object mtSelectedPkgNoLagergrupp: TStringField
      FieldName = 'Lagergrupp'
      Size = 50
    end
  end
  object ds_LoadPlanDest: TDataSource
    DataSet = cds_LoadPlanDest
    Left = 40
    Top = 496
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 480
    Top = 496
  end
  object ds_PriceList: TDataSource
    DataSet = cds_PriceList
    Left = 400
    Top = 496
  end
  object mtLengthFormat: TkbmMemTable
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
    Left = 1120
    Top = 192
    object mtLengthFormatLengthFormatNo: TSmallintField
      FieldName = 'LengthFormatNo'
    end
    object mtLengthFormatLengthFormat: TStringField
      FieldName = 'LengthFormat'
    end
  end
  object mtSizeFormat: TkbmMemTable
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
    Left = 1120
    Top = 96
    object mtSizeFormatSizeFormatNo: TSmallintField
      FieldName = 'SizeFormatNo'
    end
    object mtSizeFormatSizeFormat: TStringField
      FieldName = 'SizeFormat'
      Size = 15
    end
  end
  object ds_SizeFormat: TDataSource
    DataSet = mtSizeFormat
    Left = 1120
    Top = 144
  end
  object ds_LengthFormat: TDataSource
    DataSet = mtLengthFormat
    Left = 1120
    Top = 240
  end
  object ds_PkgImp: TDataSource
    DataSet = cds_PkgImp
    Left = 768
    Top = 672
  end
  object ds_FtpParam: TDataSource
    DataSet = cds_FtpParam
    Left = 312
    Top = 496
  end
  object dsLenaRapporter: TDataSource
    Left = 672
    Top = 184
  end
  object dsClientPrefDocs: TDataSource
    DataSet = cdsClientPrefDocs
    Left = 1088
    Top = 496
  end
  object mtReportTypes: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ReportType'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DocType'
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
    Left = 1120
    Top = 288
    object mtReportTypesReportType: TStringField
      FieldName = 'ReportType'
    end
    object mtReportTypesDocType: TIntegerField
      FieldName = 'DocType'
    end
  end
  object dsRptNames: TDataSource
    DataSet = cdsRptNames
    Left = 744
    Top = 496
  end
  object spAccessRights: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_UserRights_V4'
    Left = 48
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserName'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 3
        Name = '@UserPswd'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@Company'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 6
        Name = '@InvSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@IntOrdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 8
        Name = '@ProdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 9
        Name = '@CliSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 10
        Name = '@OrdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 11
        Name = '@BaseSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 12
        Name = '@fAvropSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 13
        Name = '@fARSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 14
        Name = '@fSkeppInstrSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 15
        Name = '@fKP_ListaSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 16
        Name = '@fUtlastningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 17
        Name = '@fFakturaSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 18
        Name = '@fAvrakningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 19
        Name = '@fFrakt_AvrakningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 20
        Name = '@fAdd_packagesSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 21
        Name = '@fAsk_packagesSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 22
        Name = '@fReport_AvropSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 23
        Name = '@EditLoadOrder'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 24
        Name = '@ShowPrice'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object cds_Grade_SV: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * From  dbo.Grade_SV G'
      'WHERE G.GradeNo Not in '
      '(Select GradeNo FROM dbo.GradeCode)'
      'Order by GradeName')
    Left = 256
    Top = 136
    object cds_Grade_SVGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_Grade_SVGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object cds_Surfacing_SV: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * From  dbo.Surfacing S'
      'WHERE S.LanguageCode = 1'
      'AND S.SurfacingNo Not in '
      '(Select SurfacingNo FROM dbo.SurfacingCode)'
      'Order by S.SurfacingName'
      '')
    Left = 432
    Top = 136
    object cds_Surfacing_SVSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Surfacing_SVSurfacingName: TStringField
      DisplayLabel = 'Utf'#246'rande'
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_Surfacing_SVLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Surfacing_SVSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_Surfacing_SVCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_Surfacing_SVModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_Surfacing_SVDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_Surfacing_SVAct: TIntegerField
      DisplayLabel = 'Aktiv'
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_Surfacing_SVSurfacingCode: TStringField
      DisplayLabel = 'Utf'#246'rande ID'
      FieldName = 'SurfacingCode'
      Origin = 'SurfacingCode'
      Size = 5
    end
    object cds_Surfacing_SVDKCode: TStringField
      DisplayLabel = 'DK ID'
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
  end
  object ds_Species_SV: TDataSource
    DataSet = cds_Species_SV
    Left = 335
    Top = 184
  end
  object cds_Species_SV: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * From  dbo.Species S'
      'WHERE S.LanguageCode = 1'
      'AND S.SpeciesNo Not in '
      '(Select SpeciesNo FROM dbo.SpeciesCode)'
      'Order by S.SpeciesName'
      '')
    Left = 336
    Top = 136
    object cds_Species_SVSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Species_SVSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_Species_SVLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Species_SVSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_Species_SVCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_Species_SVModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_Species_SVDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_Species_SVAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_Species_SVSpeciesCode: TStringField
      FieldName = 'SpeciesCode'
      Origin = 'SpeciesCode'
      Size = 5
    end
    object cds_Species_SVSpeciesShortName: TStringField
      FieldName = 'SpeciesShortName'
      Origin = 'SpeciesShortName'
      Size = 10
    end
    object cds_Species_SVDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
  end
  object ds_grade: TDataSource
    DataSet = cds_grade
    Left = 510
    Top = 184
  end
  object cds_grade: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select G.*,'
      ''
      'CASE WHEN g.gradecode is null then'
      'G.GradeName'
      'ELSE'
      'g.gradecode+'#39' - '#39'+G.GradeName'
      'END AS GradeCodeName'
      ''
      'FROM dbo.Grade G'
      ''
      'Order By g.gradecode, G.GradeName'
      '')
    Left = 512
    Top = 136
    object cds_gradeGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_gradeLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_gradeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_gradeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_gradeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_gradeMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
    end
    object cds_gradeAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_gradeGradeCode: TStringField
      FieldName = 'GradeCode'
      Origin = 'GradeCode'
      Size = 5
    end
    object cds_gradeDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_gradeGradeCodeName: TStringField
      FieldName = 'GradeCodeName'
      Origin = 'GradeCodeName'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object cds_gradeSPRAK: TStringField
      FieldKind = fkLookup
      FieldName = 'SPRAK'
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      Lookup = True
    end
  end
  object sp_OneLoad: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_OneLoad'
    Left = 40
    Top = 616
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_OneLoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      Required = True
    end
    object sp_OneLoadLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
    object sp_OneLoadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object sp_OneLoadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
    end
    object sp_OneLoadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object sp_OneLoadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      Origin = 'PackageEntryOption'
    end
    object sp_OneLoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sp_OneLoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sp_OneLoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sp_OneLoadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      Origin = 'LocalDestinationNo'
    end
    object sp_OneLoadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      Origin = 'LocalShippingCompanyNo'
    end
    object sp_OneLoadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      Origin = 'LocalLoadingLocation'
    end
    object sp_OneLoadFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object sp_OneLoadConfirmed: TIntegerField
      FieldName = 'Confirmed'
      Origin = 'Confirmed'
      ReadOnly = True
    end
    object sp_OneLoadInvoiced: TIntegerField
      FieldName = 'Invoiced'
      Origin = 'Invoiced'
      ReadOnly = True
    end
    object sp_OneLoadNotering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      BlobType = ftMemo
    end
  end
  object sp_Delete_Res_Pkgs: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Del_Pkg_ResModul'
    Left = 40
    Top = 664
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
        Name = '@Modul'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object cdsBarCodes: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_BarCodes'
    Left = 128
    Top = 16
  end
  object sp_Pkg_Res: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_Pkg_ResModul'
    Left = 40
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
        Name = '@Asking_Modul'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Asking_UserName'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@UserName'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 20
      end
      item
        Position = 8
        Name = '@Modul'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 20
      end>
  end
  object sp_DelUserResPkgs: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Del_UserResPkgs'
    Left = 40
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_CopyPOLoadToSales: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CopyPOLoadToSalesII'
    Left = 48
    Top = 256
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
        Name = '@OriginalLoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@NewLoadNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@Insert_Confirmed_Load'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_lencolpcspkgtypeno: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_lencolpcspkgtypeno'
    Left = 152
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
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_lencolm3pkgtypeno: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_lencolm3pkgtypeno'
    Left = 152
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
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_GridSettings: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.GridSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID')
    Left = 768
    Top = 64
    ParamData = <
      item
        Name = 'VIEWNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GridSettingsViewName: TStringField
      FieldName = 'ViewName'
      Origin = 'ViewName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_GridSettingsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GridSettingsSets: TBlobField
      FieldName = 'Sets'
      Origin = 'Sets'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsPkgsByInvOwner: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM  dbo.PackageNumber PN'
      
        '       INNER       JOIN  dbo.LogicalInventoryPoint  LI ON  LI.Lo' +
        'gicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      
        '       INNER       JOIN  dbo.Client                 Cl ON  PN.Su' +
        'pplierNo               = Cl.ClientNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PI ON  LI.Ph' +
        'ysicalInventoryPointNo = PI.PhysicalInventoryPointNo'
      ''
      'WHERE  '#9'PN.PackageNo = :PkgNo'
      
        'AND '#9'((PN.Status = 1) or ( (PN.Status = 0) and (LI.AvRegByPkg = ' +
        '1) ) )'
      'AND    '#9'PI.OwnerNo   = :InvOwner'
      'AND '#9'PI.PhyInvPointNameNo IN'
      '(Select PhyInvPointNameNo'
      'FROM dbo.PHYSICALINVENTORYPOINT'
      'WHERE'
      'OwnerNo = :UserCompanyLoggedOn)'
      ''
      '')
    Left = 416
    Top = 24
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDON'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_ProductLength: TFDQuery
    AfterInsert = cds_ProductLengthAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'ProductLength'
    SQL.Strings = (
      'Select * FROM dbo.ProductLength where ProductLengthNo = -1')
    Left = 1006
    Top = 24
    object cds_ProductLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_ProductLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_ProductLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object cds_ProductLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_GetPkgPos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select C.ClientCode, C.PktNrLevKod, C.PaketNoPos, C.PaketNoLengt' +
        'h,'
      'C.SupplierCodePos, C.SupplierCodeLength'
      'FROM dbo.client C'
      ''
      'Where C.ClientNo = :ClientNo')
    Left = 992
    Top = 496
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgPosClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetPkgPosPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object sq_GetPkgPosPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object sq_GetPkgPosPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object sq_GetPkgPosSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object sq_GetPkgPosSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
  end
  object sq_GetInventoryNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT PH.PhysicalInventoryPointNo'
      'FROM'
      'PHYSICALINVENTORYPOINT PH'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND PH.PhyInvPointNameNo = :PhyInvPointNameNo')
    Left = 992
    Top = 448
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PHYINVPOINTNAMENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetInventoryNoPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsGradeStamps: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_GradeStamps'
    Left = 216
    Top = 16
  end
  object cdsPaperWraps: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_PaperWraps'
    Left = 304
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end>
  end
  object cdsPksByInvOwner_II: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      ''
      'SELECT PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM         dbo.PackageNumber          PN'
      ''
      
        '       INNER        JOIN  dbo.LogicalInventoryPoint  LI ON  LI.L' +
        'ogicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      ''
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      ''
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      ''
      
        '       INNER       JOIN  dbo.Client                 Cl ON  PN.Su' +
        'pplierNo               = Cl.ClientNo'
      ''
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PIP ON  LI.P' +
        'hysicalInventoryPointNo = PIP.PhysicalInventoryPointNo'
      ''
      'WHERE  PN.PackageNo = :PkgNo'
      '')
    Left = 232
    Top = 616
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_pkgLog: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'Vida_PkgLogII'
    Left = 528
    Top = 24
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
      end>
    object cds_pkgLogOperationNo: TIntegerField
      FieldName = 'OperationNo'
      Origin = 'OperationNo'
    end
    object cds_pkgLogLIPNO: TIntegerField
      FieldName = 'LIPNO'
      Origin = 'LIPNO'
    end
    object cds_pkgLogDB_Bokfrd: TSQLTimeStampField
      FieldName = 'DB_Bokf'#246'rd'
      Origin = '[DB_Bokf'#246'rd]'
      Required = True
    end
    object cds_pkgLogOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      ReadOnly = True
      Size = 21
    end
    object cds_pkgLogMtpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      Origin = '[M'#228'tpunkt]'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object cds_pkgLogAnvndare: TStringField
      FieldName = 'Anv'#228'ndare'
      Origin = '[Anv'#228'ndare]'
      Required = True
    end
    object cds_pkgLogLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object cds_pkgLoggare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object cds_pkgLogProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object cds_pkgLogAntalperlngd: TStringField
      FieldName = 'Antal per l'#228'ngd'
      Origin = '[Antal per l'#228'ngd]'
      Size = 255
    end
    object cds_pkgLogAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object cds_pkgLogStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
    end
    object cds_pkgLogPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_pkgLogPktTypSkapad: TSQLTimeStampField
      FieldName = 'PktTypSkapad'
      Origin = 'PktTypSkapad'
    end
    object cds_pkgLogRegistrerad: TSQLTimeStampField
      FieldName = 'Registrerad'
      Origin = 'Registrerad'
      Required = True
    end
    object cds_pkgLogShiftNo: TIntegerField
      FieldName = 'ShiftNo'
      Origin = 'ShiftNo'
    end
  end
  object cds_PksByInventoryPlace: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      ''
      'SELECT PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM         dbo.PackageNumber          PN'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      ''
      
        '       INNER        JOIN  dbo.LogicalInventoryPoint  LI ON  LI.L' +
        'ogicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PIP ON  PIP.' +
        'PhysicalInventoryPointNo = LI.PhysicalInventoryPointNo'
      ''
      
        '       INNER       JOIN  dbo.Client                 Cl ON  Cl.Cl' +
        'ientNo = PN.SupplierNo'
      ''
      ''
      ''
      'WHERE  PN.PackageNo = :PkgNo'
      'AND PN.Status = 1'
      'AND    PIP.OwnerNo   = :InvOwner'
      'AND PIP.PhysicalInventoryPointNo = :InventoryPlaceNo'
      ' '
      '')
    Left = 640
    Top = 24
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVENTORYPLACENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PksByInventoryPlacePackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PksByInventoryPlaceSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PksByInventoryPlaceSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_PksByInventoryPlaceLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ReadOnly = True
      Size = 255
    end
    object cds_PksByInventoryPlaceProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_PksByInventoryPlaceProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object sq_GetRPName: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from ReportNames'
      'WHERE ReportNo = :ReportNo')
    Left = 584
    Top = 136
    ParamData = <
      item
        Name = 'REPORTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetRPNameReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
    end
    object sq_GetRPNameDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
    end
    object sq_GetRPNameReportName: TStringField
      FieldName = 'ReportName'
      Origin = 'ReportName'
      Size = 100
    end
    object sq_GetRPNameBeskrivning: TStringField
      FieldName = 'Beskrivning'
      Origin = 'Beskrivning'
      Size = 100
    end
  end
  object cds_LastLoadNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.LastUsedLoadNo'
      'WHERE UserID = :UserID')
    Left = 1064
    Top = 624
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LastLoadNoUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LastLoadNoLastLoadNo: TStringField
      FieldName = 'LastLoadNo'
      Origin = 'LastLoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
  end
  object sq_DelLastLoadUsed: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete FROM dbo.LastUsedLoadNo'
      'WHERE UserID = :UserID'
      '')
    Left = 1064
    Top = 672
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Article: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select a.ArticleNo, a.ArticleName FROM dbo.FS_Article a')
    Left = 856
    Top = 24
    object cds_ArticleArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ArticleArticleName: TStringField
      FieldName = 'ArticleName'
      Origin = 'ArticleName'
      Size = 50
    end
  end
  object cds_GridSets: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.GridSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID'
      'AND Form = :Form')
    Left = 768
    Top = 16
    ParamData = <
      item
        Name = 'VIEWNAME'
        DataType = ftString
        ParamType = ptInput
      end
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
    object cds_GridSetsViewName: TStringField
      FieldName = 'ViewName'
      Origin = 'ViewName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_GridSetsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GridSetsSets: TBlobField
      FieldName = 'Sets'
      Origin = 'Sets'
    end
    object cds_GridSetsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 50
    end
    object cds_GridSetsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      Size = 50
    end
  end
  object cdsClientPrefDocs: TFDQuery
    AfterInsert = cdsClientPrefDocsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.ClientPrefDoc'
      'WHERE ClientNo = :ClientNo'
      'AND RoleType = :RoleType')
    Left = 1088
    Top = 448
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ROLETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsClientPrefDocsClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsNoOfCopy: TIntegerField
      FieldName = 'NoOfCopy'
      Origin = 'NoOfCopy'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientPrefDocspromptUser: TIntegerField
      FieldName = 'promptUser'
      Origin = 'promptUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientPrefDocscollated: TIntegerField
      FieldName = 'collated'
      Origin = 'collated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientPrefDocsPrinterSetup: TIntegerField
      FieldName = 'PrinterSetup'
      Origin = 'PrinterSetup'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientPrefDocsReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsRapport: TStringField
      FieldKind = fkLookup
      FieldName = 'Rapport'
      LookupDataSet = cdsRptNames
      LookupKeyFields = 'ReportNo'
      LookupResultField = 'ReportName'
      KeyFields = 'ReportNo'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object cdsClientPrefDocsTYPAVRAPPORT: TStringField
      FieldKind = fkLookup
      FieldName = 'TYP AV RAPPORT'
      LookupDataSet = mtReportTypes
      LookupKeyFields = 'DocType'
      LookupResultField = 'ReportType'
      KeyFields = 'DocType'
      ProviderFlags = []
      Lookup = True
    end
  end
  object cds_PkgsByInventering: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT Distinct PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM         dbo.PackageNumber          PN'
      
        #9'INNER JOIN dbo.InvControlrow ICR ON ICR.PackageNo = PN.PackageN' +
        'o'
      #9#9#9#9'AND ICR.SupplierCode = PN.SupplierCode'
      ''
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      ''
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      ''
      'WHERE  PN.PackageNo = :PkgNo'
      'AND PN.Status = 1'
      'AND ICR.IC_GrpNo = :IC_GrpNo'
      '')
    Left = 352
    Top = 616
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgsByInventeringPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgsByInventeringSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgsByInventeringSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_PkgsByInventeringLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ReadOnly = True
      Size = 255
    end
    object cds_PkgsByInventeringProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_PkgsByInventeringProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object cds_LO_Lengths: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select PLG.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthM' +
        'M'
      'FROM'
      'dbo.ProductLengthGroup PLG'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PLG.Prod' +
        'uctLengthNo'
      ''
      'WHERE PLG.GroupNo =:ProductLengthGroupNo'
      '')
    Left = 568
    Top = 616
    ParamData = <
      item
        Name = 'PRODUCTLENGTHGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LO_LengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LO_LengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_LO_LengthsNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
  end
  object cdsLenaRapporter: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.ClientPrefDoc cpd'
      'Inner Join dbo.ReportNames rn on rn.ReportNo = cpd.ReportNo'
      'WHERE cpd.ClientNo = :ClientNo'
      'AND ((cpd.DocType = :DocType) or (-1 = :DocType)) '
      '')
    Left = 672
    Top = 136
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOCTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOCTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsLenaRapporterClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLenaRapporterRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLenaRapporterDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLenaRapporterNoOfCopy: TIntegerField
      FieldName = 'NoOfCopy'
      Origin = 'NoOfCopy'
    end
    object cdsLenaRapporterpromptUser: TIntegerField
      FieldName = 'promptUser'
      Origin = 'promptUser'
    end
    object cdsLenaRapportercollated: TIntegerField
      FieldName = 'collated'
      Origin = 'collated'
    end
    object cdsLenaRapporterPrinterSetup: TIntegerField
      FieldName = 'PrinterSetup'
      Origin = 'PrinterSetup'
    end
    object cdsLenaRapporterReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLenaRapporterReportNo_1: TIntegerField
      FieldName = 'ReportNo_1'
      Origin = 'ReportNo'
    end
    object cdsLenaRapporterDocType_1: TIntegerField
      FieldName = 'DocType_1'
      Origin = 'DocType'
    end
    object cdsLenaRapporterReportName: TStringField
      FieldName = 'ReportName'
      Origin = 'ReportName'
      Size = 100
    end
    object cdsLenaRapporterBeskrivning: TStringField
      FieldName = 'Beskrivning'
      Origin = 'Beskrivning'
      Size = 100
    end
  end
  object sq_GetXRate: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select top 1 IsNull(EX.ExChangeRate, 0) as ExchangeRate'
      'FROM ExChangeRate EX, Currency C'
      'WHERE'
      'C.CurrencyNo = :CurrencyNo'
      'AND EX.CurrencyNo = C.CurrencyNo'
      'AND EX.ValidFrom <= GetDate()'
      'group by EX.ValidFrom, EX.ExChangeRate'
      'Order by EX.ValidFrom DESC')
    Left = 768
    Top = 136
    ParamData = <
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetXRateExchangeRate: TFloatField
      FieldName = 'ExchangeRate'
      Origin = 'ExchangeRate'
      ReadOnly = True
      Required = True
    end
  end
  object sq_LastInvDate: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Top 1 icg.MaxDatum, '
      'icg.Inventeringsdatum, '
      'icg.IC_grpno,'
      'icg.Status'
      'FROM dbo.InvControlGrp icg'
      'Inner Join dbo.InvCtrlMetod icm on icm.IC_grpno = icg.IC_grpno'
      'Where icm.LogicalInventoryPointNo = :LIPNo'
      ''
      'Order By icg.MaxDatum desc'
      '')
    Left = 768
    Top = 184
    ParamData = <
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LastInvDateMaxDatum: TSQLTimeStampField
      FieldName = 'MaxDatum'
      Origin = 'MaxDatum'
    end
    object sq_LastInvDateInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
      Origin = 'Inventeringsdatum'
    end
    object sq_LastInvDateIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      Origin = 'IC_grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_LastInvDateStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
  end
  object sp_LoadAR: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_LoadAR'
    Left = 840
    Top = 136
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_LoadARLoadAR: TIntegerField
      FieldName = 'LoadAR'
      Origin = 'LoadAR'
    end
  end
  object cds_LoadPlanDest: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select LPH.Status,'
      'LPH.LoadingNo,'
      'LPD.LoadPlanDestRowNo,'
      'C.ClientName AS F'#246'rs'#228'ljningsregion,'
      'CY.CITYNAME+'#39', '#39'+LIP.LogicalInventoryName AS LAGER_DEST,'
      'CY2.CITYNAME+'#39', '#39'+LIP2.LogicalInventoryName AS LAGER,'
      'LPD.SalesRegionNo,'
      'V.CarrierName AS B'#197'T,'
      'LPH.ETD'
      ''
      'FROM dbo.LoadPlanHdr LPH'
      'Inner Join dbo.LoadPlanDest LPD on LPD.LoadingNo = LPH.LoadingNo'
      'Inner Join dbo.Client C ON'#9'C.ClientNo = LPD.SalesRegionNo'
      
        'Inner Join dbo.PHYSICALINVENTORYPOINT PH ON PH.PhysicalInventory' +
        'PointNo = LPD.PIPNo'
      'Inner Join dbo.CITY CY ON'#9'CY.CITYNO = PH.PhyInvPointNameNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = LPD.LIPNo'
      ''
      
        'Inner Join dbo.PHYSICALINVENTORYPOINT PH2 ON PH2.PhysicalInvento' +
        'ryPointNo = LPH.PIPNo'
      'Inner Join dbo.CITY CY2 ON'#9'CY2.CITYNO = PH2.PhyInvPointNameNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP2 on LIP2.LogicalInvento' +
        'ryPointNo = LPH.LIPNo'
      'Left Outer Join dbo.Carrier v on v.CarrierNo = LPH.VesselNo'
      'WHERE LPH.Status = 1'
      '')
    Left = 40
    Top = 448
    object cds_LoadPlanDestStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_LoadPlanDestLoadingNo: TIntegerField
      FieldName = 'LoadingNo'
      Origin = 'LoadingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadPlanDestLoadPlanDestRowNo: TIntegerField
      FieldName = 'LoadPlanDestRowNo'
      Origin = 'LoadPlanDestRowNo'
      Required = True
    end
    object cds_LoadPlanDestFrsljningsregion: TStringField
      FieldName = 'F'#246'rs'#228'ljningsregion'
      Origin = '[F'#246'rs'#228'ljningsregion]'
      Size = 80
    end
    object cds_LoadPlanDestLAGER_DEST: TStringField
      FieldName = 'LAGER_DEST'
      Origin = 'LAGER_DEST'
      ReadOnly = True
      Size = 102
    end
    object cds_LoadPlanDestLAGER: TStringField
      FieldName = 'LAGER'
      Origin = 'LAGER'
      ReadOnly = True
      Size = 102
    end
    object cds_LoadPlanDestSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_LoadPlanDestBT: TStringField
      FieldName = 'B'#197'T'
      Origin = '[B'#197'T]'
      FixedChar = True
      Size = 50
    end
    object cds_LoadPlanDestETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
  end
  object cds_LengthGroup: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT GroupNo, GroupName '
      'FROM dbo.ProductLengthGroupName '
      'ORDER BY GroupName')
    Left = 1008
    Top = 128
    object cds_LengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthGroupGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
  end
  object cds_Language: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.Language')
    Left = 144
    Top = 448
    object cds_LanguageLanguageNo: TIntegerField
      FieldName = 'LanguageNo'
      Origin = 'LanguageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LanguageLanguageName: TStringField
      FieldName = 'LanguageName'
      Origin = 'LanguageName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object cds_LanguageSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LanguageDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LanguageCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LanguageModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_Language: TDataSource
    DataSet = cds_Language
    Left = 144
    Top = 496
  end
  object cds_PkgImp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT TOP 1'
      '       PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM  dbo.PackageNumber PN'
      
        '       INNER       JOIN  dbo.LogicalInventoryPoint  LI ON  LI.Lo' +
        'gicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      
        '       INNER       JOIN  dbo.Client                 Cl ON  PN.Su' +
        'pplierNo               = Cl.ClientNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PI ON  LI.Ph' +
        'ysicalInventoryPointNo = PI.PhysicalInventoryPointNo'
      ''
      'WHERE  '#9'PN.PackageNo = :PkgNo'
      'AND '#9'  PN.Status = 1 '
      'AND    '#9'PI.OwnerNo   = :InvOwner'
      'AND '#9'PI.PhyInvPointNameNo IN'
      '(Select PhyInvPointNameNo'
      'FROM dbo.PHYSICALINVENTORYPOINT'
      'WHERE'
      'OwnerNo = :UserCompanyLoggedOn)'
      ''
      
        'AND Pr.ProductNo in (Select SSP.ProductNo FROM dbo.SupplierShipp' +
        'ingPlan SSP'
      'WHERE SSP.ShippingPlanNo = :LONo'
      'AND SSP.ProductNo = Pr.ProductNo)'
      '')
    Left = 768
    Top = 616
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDON'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgImpPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgImpSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgImpSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_PkgImpLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ReadOnly = True
      Size = 255
    end
    object cds_PkgImpProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_PkgImpProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object cds_FtpParam: TFDQuery
    AfterInsert = cds_FtpParamAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.FtpParam'
      'WHERE UserID = :UserID')
    Left = 312
    Top = 448
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_FtpParamConnectionName: TStringField
      DisplayLabel = 'Namn'
      FieldName = 'ConnectionName'
      Origin = 'ConnectionName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_FtpParamConnectionNo: TIntegerField
      FieldName = 'ConnectionNo'
      Origin = 'ConnectionNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_FtpParamHost: TStringField
      FieldName = 'Host'
      Origin = 'Host'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_FtpParamPort: TIntegerField
      FieldName = 'Port'
      Origin = 'Port'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamUserName: TStringField
      DisplayLabel = 'User'
      FieldName = 'UserName'
      Origin = 'UserName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_FtpParamPassword: TStringField
      FieldName = 'Password'
      Origin = 'Password'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_FtpParamStartDir: TStringField
      DisplayLabel = 'Remote dir'
      FieldName = 'StartDir'
      Origin = 'StartDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_FtpParamPassiveMode: TIntegerField
      DisplayLabel = 'Passive mode'
      FieldName = 'PassiveMode'
      Origin = 'PassiveMode'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamAsciiMode: TIntegerField
      DisplayLabel = 'Ascii mode'
      FieldName = 'AsciiMode'
      Origin = 'AsciiMode'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamCompanyNo: TIntegerField
      FieldName = 'CompanyNo'
      Origin = 'CompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamLocalDir: TStringField
      DisplayLabel = 'Local dir'
      FieldName = 'LocalDir'
      Origin = 'LocalDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_FtpParamStartDirUpload: TStringField
      FieldName = 'StartDirUpload'
      Origin = 'StartDirUpload'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object cds_PriceList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select templateno, PriceListName FROM dbo.PriceTemplateHeader')
    Left = 400
    Top = 448
    object cds_PriceListtemplateno: TIntegerField
      FieldName = 'templateno'
      Origin = 'templateno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PriceListPriceListName: TStringField
      FieldName = 'PriceListName'
      Origin = 'PriceListName'
      Required = True
      Size = 30
    end
  end
  object cds_Props: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userDir'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 480
    Top = 448
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
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object cds_PropsImportDir: TStringField
      FieldName = 'ImportDir'
      Origin = 'ImportDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsExportDir: TStringField
      FieldName = 'ExportDir'
      Origin = 'ExportDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsDeliveryMessageWood_XSD: TStringField
      FieldName = 'DeliveryMessageWood_XSD'
      Origin = 'DeliveryMessageWood_XSD'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsMyEmailAddress: TStringField
      FieldName = 'MyEmailAddress'
      Origin = 'MyEmailAddress'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_PropsUserDir: TStringField
      FieldName = 'UserDir'
      Origin = 'UserDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsExcelDir: TStringField
      FieldName = 'ExcelDir'
      Origin = 'ExcelDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsLODir: TStringField
      FieldName = 'LODir'
      Origin = 'LODir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsLastUsedLOTemplate: TStringField
      FieldName = 'LastUsedLOTemplate'
      Origin = 'LastUsedLOTemplate'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsLastUsedFragaAvropTemplate: TStringField
      FieldName = 'LastUsedFragaAvropTemplate'
      Origin = 'LastUsedFragaAvropTemplate'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsWoodXDir: TStringField
      FieldName = 'WoodXDir'
      Origin = 'WoodXDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsImportUSA_Faktura_Dir: TStringField
      FieldName = 'ImportUSA_Faktura_Dir'
      Origin = 'ImportUSA_Faktura_Dir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object cds_PkgTypeLengths: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select PTD.ProductLengthNo, PL.ActualLengthMM AS ALMM'
      'FROM'
      'dbo.PackageTypeDetail PTD'
      
        'Inner JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE'
      'PTD.PackageTypeNo = :PackageTypeNo '
      '')
    Left = 1008
    Top = 80
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgTypeLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgTypeLengthsALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
  end
  object qryExec: TFDQuery
    Connection = dmsConnector.FDConnection1
    Left = 1120
    Top = 352
  end
  object sq_ConfirmedLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select IsNull(NewLoadNo, 0) AS NewLoadNo, NewShippingPlanNo'
      'From dbo.Confirmed_Load Where Confirmed_LoadNo = :LoadNo')
    Left = 128
    Top = 616
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ConfirmedLoadNewLoadNo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NewLoadNo'
      Origin = ' B{'#0#0#0#0#0#8364'x{'#0#12'w'#0#11'H8'#8225#1'Dw'#0#11'&'#0#0#0#1#0
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object sq_ConfirmedLoadNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
    end
  end
  object sq_dbProps: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.dbProps_v2')
    Left = 560
    Top = 448
    object sq_dbPropsHostName: TStringField
      FieldName = 'HostName'
      Origin = 'HostName'
      Size = 50
    end
    object sq_dbPropsDatabas: TStringField
      FieldName = 'Databas'
      Origin = 'Databas'
      Size = 50
    end
    object sq_dbPropsUserName: TStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Size = 50
    end
    object sq_dbPropsPassword: TStringField
      FieldName = 'Password'
      Origin = 'Password'
      Size = 50
    end
    object sq_dbPropsCRPath: TStringField
      FieldName = 'CRPath'
      Origin = 'CRPath'
      Size = 255
    end
    object sq_dbPropsintsec: TIntegerField
      FieldName = 'intsec'
      Origin = 'intsec'
    end
  end
  object sq_GetLoadPlanPkgs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select LPR.LoadingNo, LPR.PackageTypeNo, LPR.NoOfPkgsLoaded, pvc' +
        '.PackageCodeNo, LPR.LoadPlanDestRowNo, LPH.LIPNo,'
      'CY.CITYNAME+'#39', '#39'+LIP.LogicalInventoryName AS LAGER'
      'FROM dbo.LoadPlanRow LPR'
      'Inner Join dbo.LoadPlanHdr LPH on LPH.LoadingNo = LPR.LoadingNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = LPH.LIPNo'
      
        'Inner Join dbo.PHYSICALINVENTORYPOINT PH ON PH.PhysicalInventory' +
        'PointNo = LPH.PIPNo'
      'Inner Join dbo.CITY CY ON'#9'CY.CITYNO = PH.PhyInvPointNameNo'
      
        'Inner Join dbo.PkgVarCode pvc on pvc.PkgCodePPNo = LPR.PackageTy' +
        'peNo'
      ''
      'WHERE pvc.MarketRegionNo = LPH.MarketRegionNo'
      'AND LPR.LoadPlanDestRowNo = :LoadPlanDestRowNo'
      'AND LPR.LoadingNo = :LoadingNo'
      'AND LPR.NoOfPkgsLoaded > 0'
      ' '
      '')
    Left = 464
    Top = 624
    ParamData = <
      item
        Name = 'LOADPLANDESTROWNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLoadPlanPkgsLoadingNo: TIntegerField
      FieldName = 'LoadingNo'
      Origin = 'LoadingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetLoadPlanPkgsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetLoadPlanPkgsNoOfPkgsLoaded: TIntegerField
      FieldName = 'NoOfPkgsLoaded'
      Origin = 'NoOfPkgsLoaded'
    end
    object sq_GetLoadPlanPkgsPackageCodeNo: TStringField
      FieldName = 'PackageCodeNo'
      Origin = 'PackageCodeNo'
      Required = True
      Size = 40
    end
    object sq_GetLoadPlanPkgsLoadPlanDestRowNo: TIntegerField
      FieldName = 'LoadPlanDestRowNo'
      Origin = 'LoadPlanDestRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetLoadPlanPkgsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object sq_GetLoadPlanPkgsLAGER: TStringField
      FieldName = 'LAGER'
      Origin = 'LAGER'
      ReadOnly = True
      Size = 102
    end
  end
  object cdsRptNames: TFDQuery
    AfterInsert = cdsRptNamesAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.ReportNames')
    Left = 744
    Top = 448
    object cdsRptNamesReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRptNamesDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRptNamesReportName: TStringField
      DisplayLabel = 'Crystal rapport'
      FieldName = 'ReportName'
      Origin = 'ReportName'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsRptNamesBeskrivning: TStringField
      FieldName = 'Beskrivning'
      Origin = 'Beskrivning'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsRptNamesDocTypeName: TStringField
      DisplayLabel = 'Typ av rapport'
      FieldKind = fkLookup
      FieldName = 'DocTypeName'
      LookupDataSet = mtReportTypes
      LookupKeyFields = 'DocType'
      LookupResultField = 'ReportType'
      KeyFields = 'DocType'
      ProviderFlags = []
      Lookup = True
    end
  end
  object sq_DoLog: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.DoLog(ProgramName, CreatedDate, UserID, LogText)'
      'Select :ProgramName, GetDate(), :UserID, :LogText')
    Left = 560
    Top = 496
    ParamData = <
      item
        Name = 'PROGRAMNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGTEXT'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object cds_PkgImpNoLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT TOP 1'
      '       PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM  dbo.PackageNumber PN'
      
        '       INNER       JOIN  dbo.LogicalInventoryPoint  LI ON  LI.Lo' +
        'gicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      
        '       INNER       JOIN  dbo.Client                 Cl ON  PN.Su' +
        'pplierNo               = Cl.ClientNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PI ON  LI.Ph' +
        'ysicalInventoryPointNo = PI.PhysicalInventoryPointNo'
      ''
      'WHERE  '#9'PN.PackageNo = :PkgNo'
      'AND '#9'  PN.Status = 1 '
      'AND    '#9'PI.OwnerNo   = :InvOwner'
      'AND '#9'PI.PhyInvPointNameNo IN'
      '(Select PhyInvPointNameNo'
      'FROM dbo.PHYSICALINVENTORYPOINT'
      'WHERE'
      'OwnerNo = :UserCompanyLoggedOn)')
    Left = 664
    Top = 616
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDON'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_ProdLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct LRR.NomLength'
      'FROM dbo.LengthRuleRow LRR'
      
        'Inner Join dbo.LengthRuleGrp LRG ON LRG.LengthRuleNo = LRR.Lengt' +
        'hRuleNo'
      'WHERE'
      'LRG.ClientNo = 741'
      'AND LRG.MinNTmm <= :MinNTmm'
      'AND LRG.MaxNTmm >= :MaxNTmm'
      'AND ((LRG.SurfacingNo = :SurfacingNo)'
      'or ((LRG.SurfacingNo = 0)'
      
        'AND (:SurfacingNo not in (Select LRG2.SurfacingNo from dbo.Lengt' +
        'hRuleGrp LRG2'
      
        'Inner Join dbo.LengthRuleRow LRR2 ON LRR2.LengthRuleNo = LRG2.Le' +
        'ngthRuleNo'
      'WHERE'
      'LRG2.MinNTmm <= :MinNTmm'
      'AND LRG2.MaxNTmm >= :MaxNTmm )) ))'
      'AND LRR.MinActLength <= :ALMM'
      'AND LRR.MaxActLength >= :ALMM'
      '')
    Left = 1008
    Top = 184
    ParamData = <
      item
        Name = 'MINNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'MAXNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'SURFACINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SURFACINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'MINNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'MAXNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
        ParamType = ptInput
      end>
    object cds_ProdLengthNomLength: TFloatField
      FieldName = 'NomLength'
      Origin = 'NomLength'
    end
  end
  object cds_Currency: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.Currency')
    Left = 456
    Top = 248
    object cds_CurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      Required = True
      Size = 5
    end
    object cds_CurrencyDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CurrencyCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_CurrencyModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_CurrencySequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object dsPaymentTerm: TDataSource
    DataSet = cdsPaymentTerm
    Left = 256
    Top = 304
  end
  object ds_PaymentText: TDataSource
    DataSet = cds_PaymentText
    Left = 360
    Top = 304
  end
  object cdsPaymentTerm: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'select pt.PaymentTermsNo,  pt.PaymentTermName, pt.Discount1, pt.' +
        'FreightInDiscount, '
      'pt.FreightInCommission, pt.CommissionPaidByCustomer,'
      'ptd.Description, ptd.LanguageCode, pt.NoOfDaysDiscount2'
      'from dbo.PaymentTerms pt'
      
        'inner join dbo.PaymentTermDesc ptd on ptd.PaymentTermsNo = pt.Pa' +
        'ymentTermsNo'
      'where'
      'ptd.LanguageCode = :LanguageCode'
      '')
    Left = 256
    Top = 248
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPaymentTermPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentTermPaymentTermName: TStringField
      FieldName = 'PaymentTermName'
      Origin = 'PaymentTermName'
      Size = 50
    end
    object cdsPaymentTermDiscount1: TFloatField
      FieldName = 'Discount1'
      Origin = 'Discount1'
    end
    object cdsPaymentTermFreightInDiscount: TSmallintField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
    object cdsPaymentTermFreightInCommission: TSmallintField
      FieldName = 'FreightInCommission'
      Origin = 'FreightInCommission'
    end
    object cdsPaymentTermCommissionPaidByCustomer: TSmallintField
      FieldName = 'CommissionPaidByCustomer'
      Origin = 'CommissionPaidByCustomer'
    end
    object cdsPaymentTermDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object cdsPaymentTermLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      Required = True
    end
    object cdsPaymentTermNoOfDaysDiscount2: TIntegerField
      FieldName = 'NoOfDaysDiscount2'
      Origin = 'NoOfDaysDiscount2'
    end
  end
  object cds_PaymentText: TFDQuery
    AfterInsert = cds_PaymentTextAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from '
      'dbo.PaymentTextII'
      'where'
      'CurrencyNo = :CurrencyNo')
    Left = 360
    Top = 248
    ParamData = <
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PaymentTextCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PaymentTextLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PaymentTextPaymentText: TMemoField
      FieldName = 'PaymentText'
      Origin = 'PaymentText'
      BlobType = ftMemo
    end
    object cds_PaymentTextCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PaymentTextModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PaymentTextDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PaymentTextCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ds_Currency: TDataSource
    DataSet = cds_Currency
    OnDataChange = ds_CurrencyDataChange
    Left = 456
    Top = 304
  end
  object ds_ExchangeRate: TDataSource
    DataSet = cds_ExchangeRate
    Left = 560
    Top = 304
  end
  object cds_ExchangeRate: TFDQuery
    AfterInsert = cds_ExchangeRateAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From DBO.ExchangeRate'
      'WHERE CurrencyNo = :CurrencyNo')
    Left = 560
    Top = 248
    ParamData = <
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ExchangeRateCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ExchangeRateExchangeRateNo: TIntegerField
      FieldName = 'ExchangeRateNo'
      Origin = 'ExchangeRateNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ExchangeRateExchangeRate: TFloatField
      FieldName = 'ExchangeRate'
      Origin = 'ExchangeRate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ExchangeRateValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
      Origin = 'ValidFrom'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ExchangeRateCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ExchangeRateModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ExchangeRateDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsCarrier: TFDQuery
    AfterInsert = cdsCarrierAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select *'
      'From dbo.Carrier'
      'Order By CarrierName')
    Left = 816
    Top = 448
    object cdsCarrierCarrierNo: TIntegerField
      FieldName = 'CarrierNo'
      Origin = 'CarrierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCarrierCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object cdsCarrierSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCarrierCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCarrierModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCarrierDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsCarrier: TDataSource
    DataSet = cdsCarrier
    Left = 816
    Top = 496
  end
  object dsBookingType: TDataSource
    DataSet = cdsBookingType
    Left = 896
    Top = 496
  end
  object cdsBookingType: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from BookingType')
    Left = 896
    Top = 448
    object cdsBookingTypeBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBookingTypeBookingType: TStringField
      FieldName = 'BookingType'
      Origin = 'BookingType'
      FixedChar = True
      Size = 30
    end
    object cdsBookingTypeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsBookingTypeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsBookingTypeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsBookingTypeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object sq_PkgType_InvoiceByCSD: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
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
      'LinealMeterNominalLength)'
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      '-1,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE '
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
      ' As decimal(10,3)),3) '
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
      'WHERE '
      
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
      'WHERE '
      
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
      'END AS NM1'
      ''
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD '#9'ON PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      ''
      'WHERE'
      'LO.LoadNo = :LoadNo')
    Left = 1008
    Top = 256
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelPkgType: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1')
    Left = 1008
    Top = 312
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgType_InvoiceByLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
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
      'LinealMeterNominalLength)'
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      '-1,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE '
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
      ' As decimal(10,3)),3) '
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
      'WHERE '
      
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
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
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
        ' decimal(10,3)),3) '
      ''
      'END AS NM1'
      ''
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD '#9'ON PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      
        'Inner Join dbo.SupplierShippingPlan ssp on ssp.SupplierShipPlanO' +
        'bjectNo = LD.DefSspNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = ssp.CustShipPlanDetailObjectNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      ''
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      ''
      ''
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      ''
      'WHERE'
      'LO.LoadNo = :LoadNo')
    Left = 1008
    Top = 368
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetPackagetypeTotalPcs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select pt.TotalNoOfPieces, pn.PackageTypeNo, pt.ProductNo,'
      '(Select Max(pl.ActualLengthMM) from dbo.PackageTypeDetail PTD'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE'
      'PTD.PackageTypeNo = PT.PackageTypeNo) AS ALMM'
      ''
      'From dbo.PackageNumber pn'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      ''
      'WHERE pn.PackageNo = :PackageNo'
      'and pn.SupplierCode = :SupplierCode ')
    Left = 896
    Top = 616
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
    object sq_GetPackagetypeTotalPcsTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
    end
    object sq_GetPackagetypeTotalPcsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object sq_GetPackagetypeTotalPcsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sq_GetPackagetypeTotalPcsALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
    end
  end
  object sq_InsTempPkg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.SortingOrderMarkedPkgs(UserID, PackageNo, Suppli' +
        'erCode)'
      'Select :UserID, :PackageNo, :SupplierCode')
    Left = 664
    Top = 328
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
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
  end
  object sp_NewCSDLoad: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.Vis_newLoad_cds'
    Left = 664
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SupplierNo'
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
      end
      item
        Position = 5
        Name = '@LoadID'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 6
        Name = '@FS'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sq_DelTempPkg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.SortingOrderMarkedPkgs'
      'Where UserID = :UserID')
    Left = 664
    Top = 280
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsLoad_Imp: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Insert into dbo.Load_Imp(TempLoadNo, DateCreated, CreatedUser,'
      'LoadNo, LONo, AntalPaket)'
      'Select :TempLoadNo, :DateCreated, :CreatedUser,'
      ':LoadNo, :LONo, :AntalPaket')
    Left = 760
    Top = 272
    ParamData = <
      item
        Name = 'TEMPLOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'CREATEDUSER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ANTALPAKET'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Load_Imp: TFDQuery
    AfterInsert = cds_Load_ImpAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.Load_Imp'
      'WHERE CreatedUser = :UserID')
    Left = 760
    Top = 328
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Load_ImpTempLoadNo: TIntegerField
      FieldName = 'TempLoadNo'
      Origin = 'TempLoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Load_ImpDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Load_ImpCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Load_ImpLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
    end
    object cds_Load_ImpLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object cds_Load_ImpAntalPaket: TIntegerField
      FieldName = 'AntalPaket'
      Origin = 'AntalPaket'
    end
  end
  object ds_Load_Imp: TDataSource
    DataSet = cds_Load_Imp
    Left = 760
    Top = 376
  end
  object sq_GetProductNoByProductCode: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select p.ProductNo'
      'From dbo.Product p'
      'WHERE p.ProductCode = :ProductCode')
    Left = 896
    Top = 664
    ParamData = <
      item
        Name = 'PRODUCTCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetProductNoByProductCodeProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_SetMallAsStd: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.userprops'
      'Set LOObjectType = 0'
      'WHERE UserID = :UserID'
      'AND Name = :Name'
      ''
      ''
      'Update dbo.userprops'
      'Set LOObjectType = 1'
      'WHERE UserID = :UserID'
      'AND Name = :Name'
      'AND Form = :Form')
    Left = 864
    Top = 224
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
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sp_PopLengthSpecII: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PopLengthSpecII'
    Left = 48
    Top = 736
  end
  object sp_Load_Res: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_Load_Res'
    Left = 40
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Asking_UserName'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = '@ResUserName'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 50
      end>
  end
  object sp_DelLoad_Res: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_DelLoad_Res'
    Left = 40
    Top = 384
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
        Name = '@ResUserName'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object sq_Get_NoOfDaysDiscount2: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'select pt.PaymentTermsNo,  pt.PaymentTermName, pt.Discount1, pt.' +
        'FreightInDiscount, '
      
        'pt.FreightInCommission, pt.CommissionPaidByCustomer, pt.NoOfDays' +
        'Discount2'
      'from dbo.PaymentTerms pt'
      'where'
      'pt.PaymentTermsNo = :PaymentTermsNo'
      '')
    Left = 256
    Top = 360
    ParamData = <
      item
        Name = 'PAYMENTTERMSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_Get_NoOfDaysDiscount2NoOfDaysDiscount2: TIntegerField
      FieldName = 'NoOfDaysDiscount2'
      Origin = 'NoOfDaysDiscount2'
    end
  end
  object sp_Vis_Upd_ProdCodeInfo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_Upd_ProdCodeInfo'
    Left = 232
    Top = 736
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
        Name = '@StatCodeIncl'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_LoadWeigth: TDataSource
    DataSet = cds_LoadWeigth
    Left = 456
    Top = 768
  end
  object cds_LoadWeigth: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select LDW.LoadNo, LDW.Reference, LDW.LoadWeightKG'
      #9'FROM dbo.LoadWeight LDW '
      #9'WHERE LDW.LoadNo = :LoadNo')
    Left = 456
    Top = 720
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadWeigthLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadWeigthReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 80
    end
    object cds_LoadWeigthLoadWeightKG: TFloatField
      DisplayLabel = 'Vikt, kg'
      FieldName = 'LoadWeightKG'
      Origin = 'LoadWeightKG'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_GenerateLoadWeight: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.LoadWeight'
      ''
      'Select distinct L.LoadNo, Ship_ADR.AddressName, 0'
      'FROM dbo.Loads'#9'L'
      
        'Inner Join dbo.LoadShippingPlan              LS   ON    LS.LoadN' +
        'o          = L.LoadNo'
      
        'Inner Join dbo.LoadDetail                    LD   ON    LD.LoadN' +
        'o          = LS.LoadNo'
      
        'LEFT OUTER JOIN dbo.SupplierShippingPlan          SP   '#9'ON    SP' +
        '.SupplierShipPlanObjectNo  = LD.DefsspNo'
      
        'inner join dbo.CustomerShippingPlanDetails CSD on CSD.CustShipPl' +
        'anDetailObjectNo = SP.CustShipPlanDetailObjectNo'
      ''
      'LEFT OUTER JOIN dbo.ShippingPlan_ShippingAddress ST'
      
        'INNER JOIN dbo.Address Ship_ADR ON Ship_ADR.AddressNo = ST.Addre' +
        'ssNo'
      'ON ST.ShippingPlanNo'#9'='#9'CSD.ShippingPlanNo '
      'AND ST.Reference'#9'='#9'CSD.Reference '#9#9
      #9
      'WHERE L.LoadNo = :LoadNo'
      ''
      'and Not exists (Select LW.LoadNo FROM dbo.LoadWeight LW'
      'WHERE '
      'LW.LoadNo = L.LoadNo'
      'and LW.Reference = Ship_ADR.AddressName)')
    Left = 568
    Top = 720
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_MovePkgToInvFromLoad: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_MovePkgToInvFromLoad_II'
    Left = 136
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LoadNo'
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
  object sp_Kontraktsnr: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_KontraktNrs'
    Left = 40
    Top = 72
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
      end>
  end
  object sp_GetOrderData: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_GetOrderData'
    Left = 768
    Top = 728
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
      end>
  end
end
