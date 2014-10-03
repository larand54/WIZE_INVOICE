object dm_PkgByPkgType: Tdm_PkgByPkgType
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 229
  Top = 109
  Height = 477
  Width = 703
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
    Left = 392
    Top = 16
  end
  object mtPackages: TkbmMemTable
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
      end
      item
        Name = 'Product'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'A_LE'
        DataType = ftFloat
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
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'NM3'
        DataType = ftFloat
      end
      item
        Name = 'PCS'
        DataType = ftInteger
      end
      item
        Name = 'MFBM'
        DataType = ftFloat
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
    AfterInsert = mtPackagesAfterInsert
    AfterPost = mtPackagesAfterPost
    BeforeDelete = mtPackagesBeforeDelete
    Left = 216
    Top = 16
    object mtPackagesPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPackagesSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtPackagesPKGCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'PKGCODE'
      LookupDataSet = cds_PC
      LookupKeyFields = 'PackageTypeNo'
      LookupResultField = 'PackageCodeNo'
      KeyFields = 'PackageTypeNo'
      Lookup = True
    end
    object mtPackagesProduct: TStringField
      FieldName = 'Product'
      Size = 100
    end
    object mtPackagesA_LE: TFloatField
      FieldName = 'A_LE'
    end
    object mtPackagesGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
    end
    object mtPackagesBARCODE: TStringField
      FieldName = 'BARCODE'
    end
    object mtPackagesPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      OnChange = mtPackagesPackageTypeNoChange
    end
    object mtPackagesAM3: TFloatField
      FieldName = 'AM3'
    end
    object mtPackagesNM3: TFloatField
      FieldName = 'NM3'
    end
    object mtPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object mtPackagesMFBM: TFloatField
      FieldName = 'MFBM'
    end
    object mtPackagesRecID: TIntegerField
      FieldName = 'RecID'
    end
  end
  object dsmtPackages: TDataSource
    DataSet = mtPackages
    Left = 216
    Top = 64
  end
  object mtDupPkgNo: TkbmMemTable
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
    Left = 128
    Top = 64
    object mtDupPkgNoPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtDupPkgNoSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
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
    Left = 128
    Top = 16
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
    Left = 128
    Top = 120
  end
  object sq_PkgCodes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'pcd.PackageMainCode ,'
      'pcd.PackageCodeNo ,'
      'pcd.LengthDescription ,'
      'pc.ProductCategoryName AS CATEGORY,'
      'pd.ProductDisplayName AS PRODUCT,'
      'pl.ActualLengthMM AS A_LE,'
      'pl.NominalLengthMM AS N_LE,'
      'pl.NominalLengthFEET AS FEET_LE,'
      'pl.ActualLengthINCH AS INCH_LE,'
      'pt.TotalNoOfPieces AS PCS,'
      'pt.TotalM3Actual AS AM3,'
      'pt.TotalM3Nominal AS NM3,'
      'pt.TotalMFBMNominal AS MFBM,'
      'gs.GradeStamp AS GRADESTAMP,'
      'bc.BarCode AS BARCODE,'
      ''
      'pg.ActualThicknessMM AS ATHICK,'
      'pg.ActualWidthMM AS AWIDTH,'
      'pg.NominalThicknessMM AS NTHICK,'
      'pg.NominalWidthMM AS NWIDTH,'
      'pcd.PackageTypeNo,'
      'PL.ProductLengthNo,'
      'pg.ProductGroupNo,'
      'pd.ProductNo,'
      'pg.NominalThicknessINCH AS INCHTHICK,'
      'pg.NominalWidthINCH AS INCHWIDTH,'
      'pt.BarCodeID,'
      'pt.GradeStamp AS GradeStampNo'
      ''
      'FROM'
      'dbo.PackageType pt'
      
        'INNER JOIN dbo.PackageTypeDetail ptd ON ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      'INNER JOIN dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'INNER JOIN dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      
        'LEFT OUTER JOIN dbo.ProductCategory pc ON pc.ProductCategoryNo =' +
        ' pg.ProductCategoryNo'
      
        'LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeS' +
        'tamp'
      'LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID'
      ''
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      'AND gd.LanguageCode = 1'
      ''
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      'AND sc.LanguageCode = 1'
      ''
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      'AND sf.LanguageCode = 1'
      ''
      
        'INNER JOIN dbo.ProductLength pl ON pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.PkgVarCode pcd ON pcd.PackageTypeNo = pt.PackageT' +
        'ypeNo'
      ''
      'WHERE'
      'PT.PackageTypeNo = :PackageTypeNo'
      
        'AND pd.Act = 1 AND  pg.Act = 1 AND sc.Act = 1 AND sf.Act = 1 AND' +
        ' gd.Act = 1'
      'AND (gs.Act = 1 or gs.Act is null)'
      'AND (bc.Act = 1 or bc.Act is null)'
      ''
      ''
      ''
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 536
    Top = 16
  end
  object dsp_PkgCodes: TDataSetProvider
    DataSet = sq_PkgCodes
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 72
  end
  object cds_PkgCodes: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PackageMainCode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PackageCodeNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LengthDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CATEGORY'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRODUCT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'A_LE'
        DataType = ftFloat
      end
      item
        Name = 'N_LE'
        DataType = ftFloat
      end
      item
        Name = 'FEET_LE'
        DataType = ftFloat
      end
      item
        Name = 'INCH_LE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PET_LE'
        DataType = ftInteger
      end
      item
        Name = 'FJ_LE'
        DataType = ftInteger
      end
      item
        Name = 'PCS'
        DataType = ftInteger
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'NM3'
        DataType = ftFloat
      end
      item
        Name = 'MFBM'
        DataType = ftFloat
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
        Name = 'ATHICK'
        DataType = ftFloat
      end
      item
        Name = 'AWIDTH'
        DataType = ftFloat
      end
      item
        Name = 'NTHICK'
        DataType = ftFloat
      end
      item
        Name = 'NWIDTH'
        DataType = ftFloat
      end
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'INCHTHICK'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INCHWIDTH'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BarCodeID'
        DataType = ftInteger
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_PkgCodesIndex1'
        Fields = 'PackageTypeNo'
      end>
    IndexName = 'cds_PkgCodesIndex1'
    Params = <>
    ProviderName = 'dsp_PkgCodes'
    StoreDefs = True
    Left = 536
    Top = 120
    object cds_PkgCodesPackageMainCode: TStringField
      FieldName = 'PackageMainCode'
    end
    object cds_PkgCodesPackageCodeNo: TStringField
      FieldName = 'PackageCodeNo'
    end
    object cds_PkgCodesLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 100
    end
    object cds_PkgCodesCATEGORY: TStringField
      FieldName = 'CATEGORY'
    end
    object cds_PkgCodesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object cds_PkgCodesA_LE: TFloatField
      FieldName = 'A_LE'
    end
    object cds_PkgCodesN_LE: TFloatField
      FieldName = 'N_LE'
    end
    object cds_PkgCodesFEET_LE: TFloatField
      FieldName = 'FEET_LE'
    end
    object cds_PkgCodesINCH_LE: TStringField
      FieldName = 'INCH_LE'
      Size = 15
    end
    object cds_PkgCodesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object cds_PkgCodesAM3: TFloatField
      FieldName = 'AM3'
    end
    object cds_PkgCodesNM3: TFloatField
      FieldName = 'NM3'
    end
    object cds_PkgCodesMFBM: TFloatField
      FieldName = 'MFBM'
    end
    object cds_PkgCodesGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
    end
    object cds_PkgCodesBARCODE: TStringField
      FieldName = 'BARCODE'
    end
    object cds_PkgCodesATHICK: TFloatField
      FieldName = 'ATHICK'
    end
    object cds_PkgCodesAWIDTH: TFloatField
      FieldName = 'AWIDTH'
    end
    object cds_PkgCodesNTHICK: TFloatField
      FieldName = 'NTHICK'
    end
    object cds_PkgCodesNWIDTH: TFloatField
      FieldName = 'NWIDTH'
    end
    object cds_PkgCodesPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object cds_PkgCodesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object cds_PkgCodesProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cds_PkgCodesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_PkgCodesINCHTHICK: TStringField
      FieldName = 'INCHTHICK'
    end
    object cds_PkgCodesINCHWIDTH: TStringField
      FieldName = 'INCHWIDTH'
    end
    object cds_PkgCodesBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
    end
    object cds_PkgCodesGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
  end
  object ds_PkgCodes: TDataSource
    DataSet = cds_PkgCodes
    Left = 536
    Top = 168
  end
  object sq_PC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Distinct'
      'pcd.PackageCodeNo ,'
      'pcd.LengthDescription ,'
      'pcd.PackageTypeNo'
      'FROM'
      ' dbo.PkgVarCode pcd'
      
        ' INNER JOIN dbo.PackageType pt ON pt.PackageTypeNo = pcd.Package' +
        'TypeNo'
      ' INNER JOIN dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        ' INNER JOIN dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Produc' +
        'tGroupNo'
      
        ' LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.Grade' +
        'Stamp'
      ' LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID'
      ''
      ' INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      ' AND gd.LanguageCode = 1'
      ''
      ' INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      ' AND sc.LanguageCode = 1'
      ''
      
        ' INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfaci' +
        'ngNo'
      ' AND sf.LanguageCode = 1'
      ''
      ''
      'WHERE'
      
        'pd.Act = 1 AND  pg.Act = 1 AND sc.Act = 1 AND sf.Act = 1 AND gd.' +
        'Act = 1'
      'AND (gs.Act = 1 or gs.Act is null)'
      'AND (bc.Act = 1 or bc.Act is null)'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 536
    Top = 224
  end
  object dsp_PC: TDataSetProvider
    DataSet = sq_PC
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 272
  end
  object cds_PC: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PackageCodeNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LengthDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_PkgCodesIndex1'
        Fields = 'PackageTypeNo'
      end>
    IndexName = 'cds_PkgCodesIndex1'
    Params = <>
    ProviderName = 'dsp_PC'
    StoreDefs = True
    Left = 536
    Top = 320
    object cds_PCPackageCodeNo: TStringField
      FieldName = 'PackageCodeNo'
    end
    object cds_PCLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 100
    end
    object cds_PCPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
  end
  object ds_PC: TDataSource
    DataSet = cds_PC
    Left = 536
    Top = 368
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
    Top = 16
  end
end
