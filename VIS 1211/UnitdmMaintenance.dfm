object dmMaintenance: TdmMaintenance
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 276
  Top = 114
  Height = 553
  Width = 725
  object sq_SetNomSize: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NomThickMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NomWidthMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ActThickMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ActWidthMM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update dbo.ProductGroup'
      
        'set  NominalThicknessMM = :NomThickMM, NominalWidthMM = :NomWidt' +
        'hMM'
      'from dbo.ProductGroup'
      'where ActualThicknessMM = :ActThickMM'
      'and ActualWidthMM = :ActWidthMM')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 16
  end
  object sq_SetIntPriceGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InteralPriceGroupNo'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NomThickMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NomWidthMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ActThickMM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ActWidthMM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SpeciesNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SurfacingNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GradeNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update dbo.Product '
      'SET InteralPriceGroupNo = :InteralPriceGroupNo'
      'from dbo.ProductGroup pg, dbo.Product P'
      'where '
      'pg.NominalThicknessMM = :NomThickMM'
      'and pg.NominalWidthMM = :NomWidthMM'
      'and pg.ActualThicknessMM = :ActThickMM'
      'and pg.ActualWidthMM = :ActWidthMM'
      'and pg.SpeciesNo = :SpeciesNo'
      'and pg.SurfacingNo = :SurfacingNo'
      ''
      'and p.ProductGroupNo = pg.ProductGroupNo'
      'and p.GradeNo = :GradeNo'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 72
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
    Left = 248
    Top = 16
  end
  object dsp_Grades: TDataSetProvider
    DataSet = sq_Grades
    Left = 248
    Top = 64
  end
  object cdsGrades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Grades'
    Left = 248
    Top = 112
  end
  object sq_IntPriceGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select InteralPriceGroupNo, PriceGroupName'
      'From InteralPriceGroup')
    SQLConnection = dmsConnector.SQLConnection
    Left = 328
    Top = 16
  end
  object dspIntPriceGroup: TDataSetProvider
    DataSet = sq_IntPriceGroup
    Left = 328
    Top = 64
  end
  object cdsIntPriceGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIntPriceGroup'
    Left = 328
    Top = 112
  end
  object sq_ProductGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select distinct ProductGroupNo'
      'From ProductGroup')
    SQLConnection = dmsConnector.SQLConnection
    Left = 440
    Top = 16
    object sq_ProductGroupProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
  end
  object sp_CalcPackageType: TSQLStoredProc
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
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_Inv_CalcPackageType'
    Left = 248
    Top = 200
  end
  object sq_NoOfProductGroups: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select count(ProductGroupNo) as NoOfRecords'
      'From ProductGroup')
    SQLConnection = dmsConnector.SQLConnection
    Left = 440
    Top = 64
    object sq_NoOfProductGroupsNoOfRecords: TIntegerField
      FieldName = 'NoOfRecords'
    end
  end
  object sq_MarketRegions: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT C.ClientNo,     -- Integer'
      '       C.ClientName,    -- VarChar 80'
      ''
      #9'C.MarketRegionNo'
      ''
      ''
      'FROM   dbo.Client        C'
      ''
      
        '--Left Outer join'#9'dbo.MarketRegion MR ON'#9'MR.MarketRegionNo = C.M' +
        'arketRegionNo'
      ''
      ''
      'order by C.ClientName'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 168
    Top = 304
    object sq_MarketRegionsClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_MarketRegionsClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object sq_MarketRegionsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
  end
  object dsp_MarketRegions: TDataSetProvider
    DataSet = sq_MarketRegions
    UpdateMode = upWhereChanged
    Left = 168
    Top = 352
  end
  object cdsMarketRegions: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_MarketRegions'
    OnReconcileError = cdsMarketRegionsReconcileError
    Left = 168
    Top = 400
    object cdsMarketRegionsClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cdsMarketRegionsClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cdsMarketRegionsMarket: TStringField
      FieldKind = fkLookup
      FieldName = 'Market'
      LookupDataSet = cdsMR_Names
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      Size = 10
      Lookup = True
    end
    object cdsMarketRegionsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
  end
  object dsMarketRegions: TDataSource
    DataSet = cdsMarketRegions
    OnDataChange = dsMarketRegionsDataChange
    Left = 168
    Top = 448
  end
  object sq_MR_Names: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MR.MarketRegionNo, MR.MarketRegionName'
      ''
      ''
      'FROM   dbo.MarketRegion MR'
      ''
      ''
      'order by MR.MarketRegionName'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 272
    Top = 304
    object sq_MR_NamesMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object sq_MR_NamesMarketRegionName: TStringField
      FieldName = 'MarketRegionName'
      Size = 10
    end
  end
  object dspMR_Names: TDataSetProvider
    DataSet = sq_MR_Names
    UpdateMode = upWhereChanged
    Left = 272
    Top = 352
  end
  object cdsMR_Names: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMR_Names'
    OnReconcileError = cdsMR_NamesReconcileError
    Left = 272
    Top = 400
    object cdsMR_NamesMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object cdsMR_NamesMarketRegionName: TStringField
      FieldName = 'MarketRegionName'
      Size = 10
    end
  end
  object dsMR_Names: TDataSource
    DataSet = cdsMR_Names
    Left = 272
    Top = 448
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
    Left = 128
    Top = 16
  end
  object dspSpecies: TDataSetProvider
    DataSet = sq_Species
    Left = 128
    Top = 64
  end
  object cdsSpecies: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSpecies'
    Left = 128
    Top = 112
  end
  object sq_Surfacing: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select SurfacingName, SurfacingNo'
      'From Surfacing'
      'where LanguageCode = 1'
      'Order by SurfacingName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 128
    Top = 160
  end
  object dspSurfacing: TDataSetProvider
    DataSet = sq_Surfacing
    Left = 128
    Top = 208
  end
  object cdsSurfacing: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSurfacing'
    Left = 128
    Top = 256
  end
  object sq_ResPkgs: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select PackageNo, SupplierCode, UserID, UserName, DateCreated,'
      'RTRIM(CONVERT(varchar(30), PackageNo))+'
      'RTRIM(CONVERT(varchar(30), SupplierCode))  AS UniqueKey'
      ''
      'FROM dbo.Pkgs_Res')
    SQLConnection = dmsConnector.SQLConnection
    Left = 32
    Top = 304
    object sq_ResPkgsPackageNo: TIntegerField
      FieldName = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ResPkgsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object sq_ResPkgsUserID: TIntegerField
      FieldName = 'UserID'
    end
    object sq_ResPkgsUserName: TStringField
      FieldName = 'UserName'
    end
    object sq_ResPkgsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_ResPkgsUniqueKey: TStringField
      FieldName = 'UniqueKey'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsp_ResPkgs: TDataSetProvider
    DataSet = sq_ResPkgs
    Left = 32
    Top = 352
  end
  object cds_ResPkgs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ResPkgs'
    Left = 32
    Top = 400
    object cds_ResPkgsPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cds_ResPkgsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object cds_ResPkgsUserID: TIntegerField
      FieldName = 'UserID'
    end
    object cds_ResPkgsUserName: TStringField
      FieldName = 'UserName'
    end
    object cds_ResPkgsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_ResPkgsUniqueKey: TStringField
      FieldName = 'UniqueKey'
      Size = 60
    end
  end
  object ds_ResPkgs: TDataSource
    DataSet = cds_ResPkgs
    Left = 32
    Top = 448
  end
  object sq_ClientTrpBrev: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from dbo.ClientText')
    SQLConnection = dmsConnector.SQLConnection
    Left = 392
    Top = 304
    object sq_ClientTrpBrevClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_ClientTrpBrevTRP_BREV_Text: TMemoField
      FieldName = 'TRP_BREV_Text'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
  end
  object dsp_ClientTrpBrev: TDataSetProvider
    DataSet = sq_ClientTrpBrev
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 352
  end
  object cds_ClientTrpBrev: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ClientTrpBrev'
    AfterInsert = cds_ClientTrpBrevAfterInsert
    Left = 392
    Top = 400
    object cds_ClientTrpBrevClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_ClientTrpBrevTRP_BREV_Text: TMemoField
      FieldName = 'TRP_BREV_Text'
      BlobType = ftMemo
    end
  end
  object ds_ClientTrpBrev: TDataSource
    DataSet = cds_ClientTrpBrev
    Left = 392
    Top = 448
  end
end
