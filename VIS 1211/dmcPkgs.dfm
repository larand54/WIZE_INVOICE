object dmPkgs: TdmPkgs
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 212
  Top = 152
  Height = 571
  Width = 806
  object mtLoadPackages: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PRODUCT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'SUPP_CODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'M3_NET'
        DataType = ftFloat
      end
      item
        Name = 'PCS'
        DataType = ftInteger
      end
      item
        Name = 'M3_NOM'
        DataType = ftFloat
      end
      item
        Name = 'KVM'
        DataType = ftFloat
      end
      item
        Name = 'LOPM'
        DataType = ftFloat
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'INVENTORY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ON_STICKS'
        DataType = ftInteger
      end
      item
        Name = 'PCS_PER_LENGTH'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'OWNER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
      end
      item
        Name = 'LOG_INVENTORY_NO'
        DataType = ftInteger
      end
      item
        Name = 'BAR_CODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BARCODE_ID'
        DataType = ftInteger
      end
      item
        Name = 'GRADE_STAMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GRADESTAMPNO'
        DataType = ftInteger
      end
      item
        Name = 'PKG_HEIGHT'
        DataType = ftInteger
      end
      item
        Name = 'PKG_WIDTH'
        DataType = ftInteger
      end
      item
        Name = 'MINI_BUNDLE'
        DataType = ftInteger
      end
      item
        Name = 'SHRINK_WRAP'
        DataType = ftInteger
      end
      item
        Name = 'WRAP_TYPE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'WRAPTYPENO'
        DataType = ftInteger
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
      end
      item
        Name = 'Old_PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'NOOFPKG'
        DataType = ftInteger
      end
      item
        Name = 'ACTTHICK'
        DataType = ftFloat
      end
      item
        Name = 'ACTWIDTH'
        DataType = ftFloat
      end
      item
        Name = 'NOMTHICK'
        DataType = ftFloat
      end
      item
        Name = 'NOMWIDTH'
        DataType = ftFloat
      end
      item
        Name = 'ROWNO'
        DataType = ftInteger
      end>
    IndexName = 'mtLoadPackagesIndex6'
    IndexDefs = <
      item
        Name = 'mtLoadPackagesIndex5'
        Fields = 'PACKAGENO;SUPP_CODE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'mtLoadPackagesIndex6'
        Fields = 'ROWNO'
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
    AfterInsert = mtLoadPackagesAfterInsert
    Left = 48
    Top = 24
    object mtLoadPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object mtLoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object mtLoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object mtLoadPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadPackagesM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
    end
    object mtLoadPackagesM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesKVM: TFloatField
      DisplayLabel = 'M2'
      FieldName = 'KVM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesLOPM: TFloatField
      DisplayLabel = 'M1'
      FieldName = 'LOPM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLoadPackagesINVENTORY: TStringField
      DisplayLabel = 'Lager'
      FieldName = 'INVENTORY'
      Size = 50
    end
    object mtLoadPackagesPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object mtLoadPackagesOWNER: TStringField
      DisplayLabel = #196'gare'
      FieldName = 'OWNER'
      Size = 80
    end
    object mtLoadPackagesOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object mtLoadPackagesLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object mtLoadPackagesBAR_CODE: TStringField
      DisplayLabel = 'Streckkod'
      FieldName = 'BAR_CODE'
    end
    object mtLoadPackagesBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object mtLoadPackagesGRADE_STAMP: TStringField
      DisplayLabel = 'St'#228'mpel'
      FieldName = 'GRADE_STAMP'
    end
    object mtLoadPackagesGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object mtLoadPackagesSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object mtLoadPackagesOld_PackageTypeNo: TIntegerField
      FieldName = 'Old_PackageTypeNo'
    end
    object mtLoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtLoadPackagesPIP: TIntegerField
      FieldName = 'PIP'
    end
    object mtLoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadPackagesACTTHICK: TFloatField
      FieldName = 'ACTTHICK'
    end
    object mtLoadPackagesACTWIDTH: TFloatField
      FieldName = 'ACTWIDTH'
    end
    object mtLoadPackagesNOMTHICK: TFloatField
      FieldName = 'NOMTHICK'
    end
    object mtLoadPackagesNOMWIDTH: TFloatField
      FieldName = 'NOMWIDTH'
    end
    object mtLoadPackagesROWNO: TIntegerField
      FieldName = 'ROWNO'
    end
    object mtLoadPackagesStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtLoadPackagesStatusText: TStringField
      FieldName = 'StatusText'
      Size = 50
    end
    object mtLoadPackagesInvNr: TIntegerField
      FieldName = 'InvNr'
    end
  end
  object ds_LoadPackages: TDataSource
    DataSet = mtLoadPackages
    Left = 48
    Top = 72
  end
  object sp_DeletePackage: TSQLStoredProc
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
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_DeletePackage'
    Left = 192
    Top = 416
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
    BeforePost = mtPackagesBeforePost
    Left = 136
    Top = 24
  end
  object dsmtPackages: TDataSource
    DataSet = mtPackages
    Left = 136
    Top = 72
  end
  object sq_ProductLengths: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.Nomina' +
        'lLengthMM, PL.NominalLengthFEET ,'
      'PL.ActualLengthINCH '
      
        'FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL O' +
        'N PL.ProductLengthNo = PGL.ProductLengthNo'
      ''
      ''
      'Where PL.ActualLengthMM < 20000')
    SQLConnection = dmsConnector.SQLConnection
    Left = 240
    Top = 24
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
    Left = 240
    Top = 72
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
    Left = 480
    Top = 384
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
    Left = 368
    Top = 432
    object mtStandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
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
    Left = 480
    Top = 432
    object sp_StandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Required = True
    end
  end
  object sq_OnePkgDetailData: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'First_PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Last_PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserCompanyLoggedIn'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      '        Cy.CityName                     AS INVENTORY,'
      '        PT.OnSticks                     AS ONSTICKS,'
      '        PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '        C.ClientName                    AS OWNER,'
      '        PIP.OwnerNo                     AS OWNERNO,'
      '        PN.LogicalInventoryPointNo      AS LOG_INVENTORY_NO,'
      '        BC.BARCODE                      AS BAR_CODE,'
      '        PT.BarCodeID                    AS BARCODE_ID,'
      '        GS.GradeStamp                   AS GRADE_STAMP,'
      '        PT.GradeStamp                   AS GRADESTAMPNO,'
      '        PN.SupplierNo                   AS SUPPLIERNO,'
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      '        PG.SurfacingNo'
      ''
      ''
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      ''
      
        '        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.LogicalI' +
        'nventoryPointNo = PN.LogicalInventoryPointNo'
      ''
      
        '        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physica' +
        'lInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPointNa' +
        'meNo'
      '        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '        LEFT OUTER JOIN DBO.BARCODE BC ON BC.BarCodeNo = PT.BarC' +
        'odeID'
      
        '        LEFT OUTER JOIN DBO.GRADESTAMP GS ON GS.GradeStampNo = P' +
        'T.GradeStamp'
      ''
      ''
      'WHERE     PN.PackageNo >= :First_PackageNo'
      'AND PN.PackageNo <= :Last_PackageNo'
      'AND PN.Status = 1'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in'
      '(Select PhyInvPointNameNo from'
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)'
      'Order by PN.PackageNo'
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 48
    Top = 192
    object sq_OnePkgDetailDataPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OnePkgDetailDataPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OnePkgDetailDataSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OnePkgDetailDataM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OnePkgDetailDataPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OnePkgDetailDataM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OnePkgDetailDataKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OnePkgDetailDataLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OnePkgDetailDataPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_OnePkgDetailDataINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgDetailDataOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_OnePkgDetailDataOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_OnePkgDetailDataLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_OnePkgDetailDataBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_OnePkgDetailDataBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_OnePkgDetailDataGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_OnePkgDetailDataGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_OnePkgDetailDataSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_OnePkgDetailDataOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
    object sq_OnePkgDetailDataSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
  end
  object sp_PackageTypeDetail: TSQLStoredProc
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
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_PackageTypeDetail'
    Left = 480
    Top = 32
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
    Left = 712
    Top = 88
  end
  object sp_PackageTypes: TSQLStoredProc
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
    Left = 712
    Top = 32
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
    Left = 712
    Top = 136
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
    Left = 480
    Top = 264
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
    Left = 480
    Top = 88
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
    Left = 480
    Top = 320
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
  object sp_ChangePkg: TSQLStoredProc
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
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_ChangePackage_II'
    Left = 616
    Top = 88
  end
  object sq_GetPkgsByLONo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      '        Cy.CityName                     AS INVENTORY,'
      '        PT.OnSticks                     AS ONSTICKS,'
      '        PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '        C.ClientName                    AS OWNER,'
      '        PIP.OwnerNo                     AS OWNERNO,'
      '        PN.LogicalInventoryPointNo      AS LOG_INVENTORY_NO,'
      '        BC.BARCODE                      AS BAR_CODE,'
      '        PT.BarCodeID                    AS BARCODE_ID,'
      '        GS.GradeStamp                   AS GRADE_STAMP,'
      '        PT.GradeStamp                   AS GRADESTAMPNO,'
      '        PN.SupplierNo                   AS SUPPLIERNO,'
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      '        PG.SurfacingNo,'
      ''
      ''
      'LS.LoadNo,'
      'SSP.SupplierNo,'
      'LS.ShippingPlanNo,'
      'LD.PackageNo,'
      'LD.SupplierCode,'
      'SSP.CustomerNo,'
      'Supp.ClientName AS SUPPLIER,'
      'LocCust.ClientName AS LOC_CUST,'
      'SSP.ObjectType,'
      '-1 AS Avrop_CustomerNo,'
      'SSP.LoadingLocationNo,'
      'SSP.ShipToInvPointNo,'
      'Loading.CityName AS LOADING_LOCATION,'
      'ShipTo.CityName AS SHIP_TO'
      ''
      ''
      'FROM dbo.LoadShippingPlan LS'
      
        '        Inner Join dbo.Loads L                          ON      ' +
        'L.LoadNo = LS.LoadNo'
      
        '        Inner Join dbo.LoadDetail LD             ON LD.LoadNo = ' +
        'LS.LoadNo'
      #9#9#9#9#9'AND LD.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LS.ShippingPlanNo'
      '        '#9#9#9#9#9#9'AND '#9'SSP.SupplierNo = L.SupplierNo'
      
        '                                                        AND SSP.' +
        'LoadingLocationNo = LS.LoadingLocationNo'
      
        '                                                        AND SSP.' +
        'ShipToInvPointNo = LS.ShipToInvPointNo'
      ''
      
        #9'Inner Join dbo.City'#9'Loading'#9#9'ON Loading.CityNo = SSP.LoadingLoc' +
        'ationNo'
      
        #9'Inner Join dbo.City'#9'ShipTo'#9#9'ON ShipTo.CityNo = SSP.ShipToInvPoi' +
        'ntNo'
      ''
      
        #9'Inner Join dbo.Client'#9#9'Supp '#9'ON  '#9'Supp.ClientNo'#9'= SSP.SupplierN' +
        'o'
      
        #9'Inner Join dbo.Client'#9#9'LocCust'#9'ON  '#9'LocCust.ClientNo'#9'= SSP.Cust' +
        'omerNo'
      ''
      
        '        INNER JOIN dbo.PackageNumber             PN ON PN.Packag' +
        'eNo = LD.PackageNo '
      #9#9#9#9#9#9#9'AND PN.SupplierCode = LD.SupplierCode'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      ''
      
        '        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.LogicalI' +
        'nventoryPointNo = PN.LogicalInventoryPointNo'
      
        '        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physica' +
        'lInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPointNa' +
        'meNo'
      '        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '        LEFT OUTER JOIN DBO.BARCODE BC ON BC.BarCodeNo = PT.BarC' +
        'odeID'
      
        '        LEFT OUTER JOIN DBO.GRADESTAMP GS ON GS.GradeStampNo = P' +
        'T.GradeStamp'
      ''
      ''
      'WHERE'
      'LS.ShippingPlanNo = :LONo'
      'AND PIP.OwnerNo = :OwnerNo'
      'AND PT.ProductNo = :ProductNo'
      ''
      'AND LD.PackageNo IN'
      '(Select PN.PackageNo'
      ' From  dbo.PackageNumber PN'
      'WHERE'
      'PN.Status = 1'
      'AND PN.SupplierCode = LD.SupplierCode'
      ''
      ' )'
      ' '
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 48
    Top = 144
    object sq_GetPkgsByLONoPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_GetPkgsByLONoPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_GetPkgsByLONoPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_GetPkgsByLONoSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_GetPkgsByLONoM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_GetPkgsByLONoPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_GetPkgsByLONoM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_GetPkgsByLONoKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_GetPkgsByLONoLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_GetPkgsByLONoPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_GetPkgsByLONoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_GetPkgsByLONoPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_GetPkgsByLONoOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_GetPkgsByLONoOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_GetPkgsByLONoLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_GetPkgsByLONoBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_GetPkgsByLONoBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_GetPkgsByLONoGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_GetPkgsByLONoGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_GetPkgsByLONoSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_GetPkgsByLONoOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
    object sq_GetPkgsByLONoSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
  end
  object sq_OneUniquePkg: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserCompanyLoggedIn'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      '        Cy.CityName                     AS INVENTORY,'
      '        PT.OnSticks                     AS ONSTICKS,'
      '        PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '        C.ClientName                    AS OWNER,'
      '        PIP.OwnerNo                     AS OWNERNO,'
      '        PN.LogicalInventoryPointNo      AS LOG_INVENTORY_NO,'
      '        BC.BARCODE                      AS BAR_CODE,'
      '        PT.BarCodeID                    AS BARCODE_ID,'
      '        GS.GradeStamp                   AS GRADE_STAMP,'
      '        PT.GradeStamp                   AS GRADESTAMPNO,'
      ''
      '        PN.SupplierNo                   AS SUPPLIERNO,'
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      '        PIP.PhysicalInventoryPointNo    AS PIP,'
      '        Pg.SurfacingNo'
      ''
      ''
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      ''
      
        '        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.LogicalI' +
        'nventoryPointNo = PN.LogicalInventoryPointNo'
      
        '        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physica' +
        'lInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPointNa' +
        'meNo'
      '        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '        LEFT OUTER JOIN DBO.BARCODE BC ON BC.BarCodeNo = PT.BarC' +
        'odeID'
      
        '        LEFT OUTER JOIN DBO.GRADESTAMP GS ON GS.GradeStampNo = P' +
        'T.GradeStamp'
      ''
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'AND ((PN.Status = 1) or (PN.Status = :Status))'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in'
      '(Select PhyInvPointNameNo from'
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)'
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 48
    Top = 248
    object sq_OneUniquePkgPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OneUniquePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OneUniquePkgPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OneUniquePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OneUniquePkgM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OneUniquePkgPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OneUniquePkgM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OneUniquePkgKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OneUniquePkgLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OneUniquePkgPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_OneUniquePkgINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_OneUniquePkgPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OneUniquePkgOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_OneUniquePkgOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_OneUniquePkgLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_OneUniquePkgBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_OneUniquePkgBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_OneUniquePkgGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_OneUniquePkgGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_OneUniquePkgSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
    object sq_OneUniquePkgSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object sq_OneUniquePkgPIP: TIntegerField
      FieldName = 'PIP'
    end
  end
  object sp_RemovePackageFromInventory: TSQLStoredProc
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
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RunNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_RemovePkgFromInventory_IIII'
    Left = 192
    Top = 368
  end
  object sq_Prod_In_LO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PT.ProductNo                    AS PRODUCTNO'
      ''
      ''
      ''
      'FROM dbo.LoadShippingPlan LS'
      
        '        Inner Join dbo.Loads L                          ON      ' +
        'L.LoadNo = LS.LoadNo'
      
        '        Inner Join dbo.LoadDetail LD             ON LD.LoadNo = ' +
        'LS.LoadNo'
      #9#9#9#9#9'AND LD.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LS.ShippingPlanNo'
      '        '#9#9#9#9#9#9'AND '#9'SSP.SupplierNo = L.SupplierNo'
      
        '                                                        AND SSP.' +
        'LoadingLocationNo = LS.LoadingLocationNo'
      
        '                                                        AND SSP.' +
        'ShipToInvPointNo = LS.ShipToInvPointNo'
      ''
      
        #9'Inner Join dbo.City'#9'Loading'#9#9'ON Loading.CityNo = SSP.LoadingLoc' +
        'ationNo'
      
        #9'Inner Join dbo.City'#9'ShipTo'#9#9'ON ShipTo.CityNo = SSP.ShipToInvPoi' +
        'ntNo'
      ''
      
        #9'Inner Join dbo.Client'#9#9'Supp '#9'ON  '#9'Supp.ClientNo'#9'= SSP.SupplierN' +
        'o'
      
        #9'Inner Join dbo.Client'#9#9'LocCust'#9'ON  '#9'LocCust.ClientNo'#9'= SSP.Cust' +
        'omerNo'
      ''
      
        '        INNER JOIN dbo.PackageNumber             PN ON PN.Packag' +
        'eNo = LD.PackageNo'
      #9#9#9#9#9#9#9'AND PN.SupplierCode = LD.SupplierCode'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      ''
      
        '        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.LogicalI' +
        'nventoryPointNo = PN.LogicalInventoryPointNo'
      
        '        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physica' +
        'lInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPointNa' +
        'meNo'
      '        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '        LEFT OUTER JOIN DBO.BARCODE BC ON BC.BarCodeNo = PT.BarC' +
        'odeID'
      
        '        LEFT OUTER JOIN DBO.GRADESTAMP GS ON GS.GradeStampNo = P' +
        'T.GradeStamp'
      
        '        LEFT OUTER JOIN DBO.WrapType WT ON WT.WrapTypeNo = PT.Wr' +
        'apType'
      ''
      'WHERE'
      'LS.ShippingPlanNo = :LONo'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND LD.PackageNo IN'
      '(Select PN.PackageNo'
      ' From  dbo.PackageNumber PN'
      'WHERE'
      'PN.Status = 1'
      'AND PN.SupplierCode = LD.SupplierCode'
      ''
      ' )')
    SQLConnection = dmsConnector.SQLConnection
    Left = 160
    Top = 144
  end
  object dsp_Prod_In_LO: TDataSetProvider
    DataSet = sq_Prod_In_LO
    Left = 160
    Top = 192
  end
  object cds_Prod_In_LO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Prod_In_LO'
    ReadOnly = True
    Left = 160
    Top = 248
    object cds_Prod_In_LOPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object cds_Prod_In_LOPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
  end
  object ds_Prod_In_LO: TDataSource
    DataSet = cds_Prod_In_LO
    Left = 160
    Top = 296
  end
  object sp_Del_PkgProd: TSQLStoredProc
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
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'Vida_Del_PkgProd'
    Left = 616
    Top = 200
  end
  object sp_updateFelReg: TSQLStoredProc
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
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RunNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_updateFelReg_II'
    Left = 616
    Top = 256
  end
  object sp_MovePkg: TSQLStoredProc
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
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_MovePkg'
    Left = 616
    Top = 320
  end
  object sq_PkgInLoad: TSQLQuery
    MaxBlobSize = -1
    Params = <
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
    SQL.Strings = (
      'SELECT LD.LoadNo AS LastNr, LD.ShippingPlanNo AS LO'
      'FROM '
      'dbo.Loaddetail LD '
      'where LD.PackageNo = :PackageNo'
      'AND LD.SupplierCode = :SupplierCode')
    SQLConnection = dmsConnector.SQLConnection
    Left = 48
    Top = 328
    object sq_PkgInLoadLastNr: TIntegerField
      FieldName = 'LastNr'
    end
    object sq_PkgInLoadLO: TIntegerField
      FieldName = 'LO'
    end
  end
  object sp_PaRegPaket: TSQLStoredProc
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
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_PaRegistreraPaket'
    Left = 192
    Top = 464
  end
  object sq_OnePkg: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserCompanyLoggedIn'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      '        Cy.CityName                     AS INVENTORY,'
      '        PT.OnSticks                     AS ONSTICKS,'
      '        PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '        C.ClientName                    AS OWNER,'
      '        PIP.OwnerNo                     AS OWNERNO,'
      '        PN.LogicalInventoryPointNo      AS LOG_INVENTORY_NO,'
      '        BC.BARCODE                      AS BAR_CODE,'
      '        PT.BarCodeID                    AS BARCODE_ID,'
      '        GS.GradeStamp                   AS GRADE_STAMP,'
      '        PT.GradeStamp                   AS GRADESTAMPNO,'
      '        PT.PackageHeight                AS PKG_HEIGHT,'
      '        PT.PackageWidth                 AS PKGWIDTH,'
      '        PT.MiniBundled                  AS MINI_BUNDLE,'
      '        PT.ShrinkWrap                   AS SHRINK_WRAP,'
      '        WT.WrapType                     AS WRAP_TYPE,'
      '        PT.WrapType                     AS WRAPTYPENO,'
      '        PN.SupplierNo                   AS SUPPLIERNO,'
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO'
      ''
      ''
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.LogicalI' +
        'nventoryPointNo = PN.LogicalInventoryPointNo'
      
        '        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physica' +
        'lInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPointNa' +
        'meNo'
      '        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '        LEFT OUTER JOIN DBO.BARCODE BC ON BC.BarCodeNo = PT.BarC' +
        'odeID'
      
        '        LEFT OUTER JOIN DBO.GRADESTAMP GS ON GS.GradeStampNo = P' +
        'T.GradeStamp'
      
        '        LEFT OUTER JOIN DBO.WrapType WT ON WT.WrapTypeNo = PT.Wr' +
        'apType'
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in '
      '(Select PhyInvPointNameNo from '
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 48
    Top = 384
    object sq_OnePkgPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OnePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OnePkgPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OnePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OnePkgM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OnePkgPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OnePkgM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OnePkgKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OnePkgLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OnePkgPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_OnePkgINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_OnePkgONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
    end
    object sq_OnePkgPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_OnePkgOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_OnePkgLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_OnePkgBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_OnePkgBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_OnePkgGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_OnePkgGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_OnePkgPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
    end
    object sq_OnePkgPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
    end
    object sq_OnePkgMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
    end
    object sq_OnePkgSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
    end
    object sq_OnePkgWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Size = 15
    end
    object sq_OnePkgWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
    end
    object sq_OnePkgSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_OnePkgOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
  end
  object sp_changePkgInventering: TSQLStoredProc
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
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_changePkgInventering'
    Left = 616
    Top = 376
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
    Left = 48
    Top = 448
  end
  object sq_PkgNoAvail: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select PackageNo, SupplierCode, PackageTypeNo from dbo.PackageNu' +
        'mber '
      'where PackageTypeNo = :PackageTypeNo'
      'and LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'and Status = 1'
      'Order by DateCreated')
    SQLConnection = dmsConnector.SQLConnection
    Left = 352
    Top = 24
    object sq_PkgNoAvailPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object sq_PkgNoAvailSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object sq_PkgNoAvailPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
  end
  object sp_ExtMovePkg: TSQLStoredProc
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
        Name = 'NewLogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OldLogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OldSupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NewSupplierNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_ExtMovePkg'
    Left = 616
    Top = 432
  end
  object sq_PkgAvReg: TSQLQuery
    MaxBlobSize = -1
    Params = <
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
    SQL.Strings = (
      'SELECT     RP.RegPointName, PP.ProductionDate'
      'FROM         dbo.Package_Production pp'
      
        'Inner Join dbo.RegistrationPoint RP on RP.RegPointNo = PP.Produc' +
        'tionUnitNo'
      'WHERE PP.PackageNo = :PackageNo'
      'AND PP.SupplierCode = :SupplierCode'
      'AND RP.SequenceNo = 1'
      'AND Operation = 3')
    SQLConnection = dmsConnector.SQLConnection
    Left = 264
    Top = 144
    object sq_PkgAvRegRegPointName: TStringField
      FieldName = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object sq_PkgAvRegProductionDate: TSQLTimeStampField
      FieldName = 'ProductionDate'
    end
  end
end
