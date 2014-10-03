object dmLoadEntryCSDTemp: TdmLoadEntryCSDTemp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 605
  Width = 893
  object ds_LoadHead: TDataSource
    DataSet = cds_LoadHead
    Left = 32
    Top = 32
  end
  object dsrcPkgsByInvOwner: TDataSource
    DataSet = cdsPkgsByInvOwner
    Left = 584
    Top = 80
  end
  object ds_LO_LookUp: TDataSource
    DataSet = cds_LO_LookUp
    Left = 448
    Top = 80
  end
  object mtPkgNos: TkbmMemTable
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
        Name = 'productno'
        DataType = ftInteger
      end
      item
        Name = 'productlengthno'
        DataType = ftInteger
      end>
    IndexFieldNames = 'PackageNo;SupplierCode'
    IndexName = 'mtPkgNosIndex1'
    IndexDefs = <
      item
        Name = 'mtPkgNosIndex1'
        Fields = 'PackageNo;SupplierCode'
        Options = [ixPrimary, ixUnique]
      end>
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
    Left = 288
    Top = 232
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtPkgNosproductno: TIntegerField
      FieldName = 'productno'
    end
    object mtPkgNosproductlengthno: TIntegerField
      FieldName = 'productlengthno'
    end
  end
  object ds_LoadPackages2: TDataSource
    DataSet = cds_LoadPackages
    OnDataChange = ds_LoadPackages2DataChange
    Left = 288
    Top = 32
  end
  object dsLORows: TDataSource
    DataSet = cdsLORows
    Left = 192
    Top = 32
  end
  object ds_LSP: TDataSource
    DataSet = cds_LSP
    OnDataChange = ds_LSPDataChange
    Left = 120
    Top = 32
  end
  object mtLoadPackages: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LONo'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
      end
      item
        Name = 'NOOFPKG'
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
        Name = 'PKG_OK'
        DataType = ftWord
      end
      item
        Name = 'PKGLOG'
        DataType = ftString
        Size = 50
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
        Name = 'DefaultCustShipObjectNo'
        DataType = ftInteger
      end
      item
        Name = 'PcsPerLength'
        DataType = ftString
        Size = 250
      end>
    IndexFieldNames = 'PACKAGENO;SUPP_CODE'
    IndexName = 'mtLoadPackagesIndex2'
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
    Left = 288
    Top = 184
    object mtLoadPackagesLONo: TIntegerField
      FieldName = 'LONo'
    end
    object mtLoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object mtLoadPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadPackagesChanged: TBooleanField
      FieldName = 'Changed'
    end
    object mtLoadPackagesSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
    end
    object mtLoadPackagesCustcdsNo: TIntegerField
      FieldName = 'CustcdsNo'
    end
  end
  object mtLoadShippingPlan: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'CUSTOMER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'SHIPPER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'READYDATE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VESSEL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ETD'
        DataType = ftTimeStamp
      end
      item
        Name = 'ETA'
        DataType = ftTimeStamp
      end
      item
        Name = 'SHIPPER_REF'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SHIPPERID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SHIPPERS_SHIPDATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SHIPPERS_SHIPTIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'ORDERNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDERTYPE'
        DataType = ftString
        Size = 8
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
      end
      item
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'ShippingPlanNo'
    IndexName = 'mtLoadShippingPlanIndex1'
    IndexDefs = <
      item
        Name = 'mtLoadShippingPlanIndex1'
        Fields = 'ShippingPlanNo'
        Options = [ixPrimary, ixUnique]
      end>
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
    Left = 592
    Top = 243
    object mtLoadShippingPlanLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object mtLoadShippingPlanCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtLoadShippingPlanShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object mtLoadShippingPlanCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object mtLoadShippingPlanSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object mtLoadShippingPlanREADYDATE: TStringField
      FieldName = 'READYDATE'
      Size = 30
    end
    object mtLoadShippingPlanVESSEL: TStringField
      FieldName = 'VESSEL'
      Size = 50
    end
    object mtLoadShippingPlanETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object mtLoadShippingPlanETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object mtLoadShippingPlanSHIPPER_REF: TStringField
      FieldName = 'SHIPPER_REF'
      Size = 50
    end
    object mtLoadShippingPlanSHIPPERID: TStringField
      FieldName = 'SHIPPERID'
    end
    object mtLoadShippingPlanSHIPPERS_SHIPDATE: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPDATE'
    end
    object mtLoadShippingPlanSHIPPERS_SHIPTIME: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPTIME'
    end
    object mtLoadShippingPlanORDERNO: TStringField
      FieldName = 'ORDERNO'
    end
    object mtLoadShippingPlanORDERTYPE: TStringField
      FieldName = 'ORDERTYPE'
      Size = 8
    end
    object mtLoadShippingPlanCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object mtLoadShippingPlanModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object mtLoadShippingPlanDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object mtLoadShippingPlanSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtLoadShippingPlanFunction: TIntegerField
      FieldName = 'Function'
    end
  end
  object sq_GetLO_Records: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'CSH.CustomerNo,'
      'CSD.CustShipPlanDetailObjectNo,'
      'CSH.ShippingPlanNo'#9#9#9'                AS LO_NUMBER,'
      'OL.PackageCode'#9#9#9#9'                  AS PKGCODE,'
      'CSD.ProductNo,'
      'P.ProductDisplayName                    AS INTERNPRODDESC,'
      'CSD.LengthDescription'#9#9#9'              AS LENGTHDESC,'
      'CSD.NoOfUnits'#9#9#9#9'                    AS NOOFUNITS,'
      'UN.VolumeUnitName'#9#9#9'                  AS VOLUNIT,'
      'OL.Price'#9#9#9#9'                        AS PRICE,'
      'PU.TemplateUnitName'#9#9#9'                AS PRICEUNIT,'
      ''
      'OL.MinActualLengthMM'#9#9#9'              AS MIN_LENGTH,'
      'OL.MaxActualLengthMM'#9#9#9'              AS MAX_LENGTH,'
      ''
      'PG.ActualThicknessMM'#9#9#9'              AS ACT_THICK,'
      'PG.ActualWidthMM'#9#9#9'                  AS ACT_WIDTH,'
      'PL.ActualLengthMM'#9#9#9'                  AS ACT_LENGTH,'
      'CSD.Reference'#9#9#9#9'                    AS REFERENCE,'
      ''
      'CSD.ProductLengthNo,'
      ''
      'CSH.ETDYearWeek'#9#9#9#9'                  AS LEV_PERIOD_START,'
      'CSH.ETDWeekEnd'#9#9#9#9'                  AS LEV_PERIOD_END,'
      ''
      ''
      'OH.OrderNoText'#9#9#9#9'                  AS ORDERNO,'
      ''
      'PIN.FOHCpercent'#9#9#9#9'                  AS FOHC,'
      'PIN.MiniBundleHeight'#9#9#9'              AS MINIBUNDLEHEIGHT,'
      'PIN.MiniBundlewidth'#9#9#9'                AS MINIBUNDLEWIDTH,'
      'PIN.MinNoOfSticks'#9#9#9'                  AS NOOFSTICKS,'
      'PIN.NoOfStraps'#9#9#9#9'                  AS NOOFSTRAPS,'
      'PIN.CornerProtection'#9#9#9'              AS CORNERPROT,'
      'PIN.PackageWidth'#9#9#9'                  AS PKGWIDTH,'
      'PIN.PackageHeight'#9#9#9'                  AS PKGHEIGHT,'
      'PIN.PET'#9#9#9#9#9'                        AS PET,'
      'PIN.MiniBundle'#9#9#9#9'                  AS MINIBUNDLE,'
      'PIN.StressGrade'#9#9#9#9'                  AS STRESSGRADE,'
      'PIN.FingerJoint'#9#9#9#9'                  AS FJ,'
      'PIN.PackageCut'#9#9#9#9'                  AS PKGCUT,'
      'PIN.PET_Tolerance'#9#9#9'                  AS PET_TOL,'
      'PIN.PackageType'#9#9#9#9'                  AS PKGTYPE,'
      'PIN.Note'#9#9#9#9'                        AS NOTE,'
      'PIN.ShrinkWrap'#9#9#9#9'                  AS SHRINKWRAP,'
      'PIN.PiecesPerMiniBundle'#9#9#9'            AS PCSPERMINIBUNDLE,'
      'OL.Reference                            AS KR_Ref,'
      'GS.GradeStamp'#9#9#9#9'                    AS GRADESTAMP,'
      'BC.BarCode'#9#9#9#9'                      AS BARCODE,'
      'WT.WrapType'#9#9#9#9'                      AS WRAPTYPE,'
      'PressT.ProductCategoryName'#9'            AS PRESSURE_TREAT,'
      'Ptag.PackageLogLayoutName'#9#9'            AS PKG_TAG,'
      'OL.PcsPerPkg'#9#9#9#9'                    AS PCSPERPKG,'
      'PG.ProductGroupNo                       AS PRODUCTGROUPNO,'
      'PIN.Stamp                               AS GradeStampNo,'
      'PIN.BarCodeID                           AS BarcodeID,'
      'PIN.WrapType                            AS WrapTypeNo,'
      'PIN.ShrinkWrap                          AS ShrinkWrapNo,'
      'OL.OrderLineDescription'#9#9#9'            AS PRODUCTDESCRIPTION,'
      'PG.NominalThicknessMM                   AS NOM_THICK,'
      'PG.NominalWidthMM                       AS NOM_WIDTH,'
      ''
      'PL.ProductLengthGroupNo,'
      'PG.NominalThicknessINCH                 AS INCH_THICK,'
      'PG.NominalWidthINCH                     AS INVCH_WIDTH,'
      'PG.SurfacingNo,'
      'PG.SpeciesNo,'
      'G.GradeNo                               AS MainGradeNo,'
      ''
      'OL.PackageTypeNo                        AS PackageTypeNo,'
      'isNull(OL.OverrideRL, 1) AS OverrideRL,'
      'PG.ProductCategoryNo,'
      'CSD.CustShipPlanDetailObjectNo AS defsspno,'
      'PG.SequenceNo AS VaruSlag'
      ''
      'FROM  dbo.CustomerShippingPlanHeader CSH'
      
        #9'Inner JOIN dbo.CustomerShippingPlanDetails  CSD '#9'ON CSD.Shippin' +
        'gPlanNo = CSH.ShippingPlanNo'
      
        #9'Inner JOIN dbo.OrderLine '#9#9'                OL'#9'  ON '#9'OL.OrderLin' +
        'eNo'#9#9'= CSD.OrderLineNo'
      
        #9#9#9#9#9#9#9'                                      AND'#9'OL.OrderNo'#9#9'= C' +
        'SD.OrderNo'
      
        #9'INNER JOIN dbo.Product P                          ON '#9'P.Product' +
        'No = OL.ProductNo'
      
        #9'INNER JOIN dbo.Grade G                            ON '#9'G.GradeNo' +
        ' = P.GradeNo'
      
        '                                                    AND G.Langua' +
        'geCode = 1'
      ''
      
        #9'INNER JOIN dbo.ProductLength PL                   ON '#9'PL.Produc' +
        'tLengthNo = CSD.ProductLengthNo'
      
        #9'INNER JOIN dbo.ProductGroup PG                    ON  PG.Produc' +
        'tGroupNo = P.ProductGroupNo'
      ''
      
        #9'INNER JOIN dbo.Client '#9#9#9'C'#9'                    ON '#9'C.ClientNo'#9#9 +
        '= CSH.CustomerNo'
      ''
      
        #9'Inner JOIN dbo.Orders '#9#9#9'OH'#9'                  ON '#9'OH.OrderNo'#9#9'=' +
        ' CSH.OrderNo'
      
        #9'Left Outer JOIN dbo.Users'#9' '#9#9'US'#9'                ON'#9'US.UserID '#9#9 +
        '= OH.ResponsibleSeller'
      ''
      
        #9'INNER JOIN dbo.UnitName '#9#9'UN'#9'                  ON '#9'UN.VolumeUni' +
        't_No '#9'= OL.VolumeUnitNo'
      
        #9'INNER JOIN dbo.PackUnit '#9#9'PU'#9'                  ON '#9'PU.TemplateU' +
        'nitNo '#9'= OL.PriceUnitNo'
      ''
      ''
      #9'LEFT OUTER JOIN dbo.ProdInstru'#9#9'PIN'
      
        #9'LEFT OUTER JOIN dbo.GradeStamp'#9#9'GS'#9'          ON'#9'GS.GradeStampNo' +
        #9#9'= PIN.Stamp'
      
        #9'LEFT OUTER JOIN dbo.BarCode'#9#9#9'BC'#9'            ON'#9'BC.BarCodeNo'#9#9'=' +
        ' PIN.BarCodeID'
      
        #9'LEFT OUTER JOIN dbo.WrapType'#9#9#9'WT'#9'          ON'#9'WT.WrapTypeNo'#9#9'=' +
        ' PIN.WrapType'
      '                AND WT.LanguageCode = 1'
      
        #9'LEFT OUTER JOIN dbo.ProductCategory'#9#9'PressT'#9'  ON'#9'PressT.Product' +
        'CategoryNo = PIN.PressureTreated'
      '                AND PressT.LanguageCode = 1  '
      
        #9'LEFT OUTER JOIN dbo.PackageLogLayout'#9#9'Ptag'#9'  ON'#9'Ptag.PackageLog' +
        'LayoutNo'#9'= PIN.PackageTagLayout'
      
        #9#9#9#9#9#9#9'                                    ON'#9'PIN.ProdInstruNo'#9'=' +
        ' OL.ProdInstructNo'
      ''
      'WHERE CSH.ShippingPlanNo = :ShippingPlanNo'
      'AND CSH.CustomerNo = :CustomerNo')
    Left = 192
    Top = 136
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
    object sq_GetLO_RecordsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object sq_GetLO_RecordsCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      Required = True
    end
    object sq_GetLO_RecordsLO_NUMBER: TIntegerField
      FieldName = 'LO_NUMBER'
      Origin = 'LO_NUMBER'
      Required = True
    end
    object sq_GetLO_RecordsPKGCODE: TStringField
      FieldName = 'PKGCODE'
      Origin = 'PKGCODE'
      FixedChar = True
    end
    object sq_GetLO_RecordsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_GetLO_RecordsPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Origin = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object sq_GetLO_RecordsLENGTHDESC: TStringField
      FieldName = 'LENGTHDESC'
      Origin = 'LENGTHDESC'
      FixedChar = True
      Size = 100
    end
    object sq_GetLO_RecordsNOOFUNITS: TFloatField
      FieldName = 'NOOFUNITS'
      Origin = 'NOOFUNITS'
    end
    object sq_GetLO_RecordsVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Origin = 'VOLUNIT'
      Required = True
      Size = 10
    end
    object sq_GetLO_RecordsPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object sq_GetLO_RecordsPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
      Origin = 'PRICEUNIT'
      Required = True
    end
    object sq_GetLO_RecordsMIN_LENGTH: TFloatField
      FieldName = 'MIN_LENGTH'
      Origin = 'MIN_LENGTH'
    end
    object sq_GetLO_RecordsMAX_LENGTH: TFloatField
      FieldName = 'MAX_LENGTH'
      Origin = 'MAX_LENGTH'
    end
    object sq_GetLO_RecordsACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
      Origin = 'ACT_THICK'
    end
    object sq_GetLO_RecordsACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
      Origin = 'ACT_WIDTH'
    end
    object sq_GetLO_RecordsACT_LENGTH: TFloatField
      FieldName = 'ACT_LENGTH'
      Origin = 'ACT_LENGTH'
      Required = True
    end
    object sq_GetLO_RecordsREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object sq_GetLO_RecordsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      Required = True
    end
    object sq_GetLO_RecordsLEV_PERIOD_START: TIntegerField
      FieldName = 'LEV_PERIOD_START'
      Origin = 'LEV_PERIOD_START'
    end
    object sq_GetLO_RecordsLEV_PERIOD_END: TIntegerField
      FieldName = 'LEV_PERIOD_END'
      Origin = 'LEV_PERIOD_END'
    end
    object sq_GetLO_RecordsORDERNO: TStringField
      FieldName = 'ORDERNO'
      Origin = 'ORDERNO'
      Required = True
    end
    object sq_GetLO_RecordsKR_Ref: TStringField
      FieldName = 'KR_Ref'
      Origin = 'KR_Ref'
      Size = 50
    end
    object sq_GetLO_RecordsPCSPERPKG: TIntegerField
      FieldName = 'PCSPERPKG'
      Origin = 'PCSPERPKG'
    end
    object sq_GetLO_RecordsPRODUCTGROUPNO: TIntegerField
      FieldName = 'PRODUCTGROUPNO'
      Origin = 'PRODUCTGROUPNO'
      Required = True
    end
    object sq_GetLO_RecordsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
      Origin = 'NOM_THICK'
    end
    object sq_GetLO_RecordsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
      Origin = 'NOM_WIDTH'
    end
    object sq_GetLO_Recordsdefsspno: TIntegerField
      FieldName = 'defsspno'
      Origin = 'defsspno'
      Required = True
    end
    object sq_GetLO_RecordsProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
    end
    object sq_GetLO_RecordsINVCH_WIDTH: TStringField
      FieldName = 'INVCH_WIDTH'
      Origin = 'INVCH_WIDTH'
    end
    object sq_GetLO_RecordsINCH_THICK: TStringField
      FieldName = 'INCH_THICK'
      Origin = 'INCH_THICK'
    end
    object sq_GetLO_RecordsOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
      ReadOnly = True
      Required = True
    end
    object sq_GetLO_RecordsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sq_GetLO_RecordsSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object sq_GetLO_RecordsMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
      Required = True
    end
    object sq_GetLO_RecordsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object sq_GetLO_RecordsFOHC: TFloatField
      FieldName = 'FOHC'
      Origin = 'FOHC'
    end
    object sq_GetLO_RecordsINTERNPRODDESC: TStringField
      FieldName = 'INTERNPRODDESC'
      Origin = 'INTERNPRODDESC'
      Size = 100
    end
    object sq_GetLO_RecordsProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object sq_GetLO_RecordsVaruSlag: TIntegerField
      FieldName = 'VaruSlag'
      Origin = 'VaruSlag'
    end
    object sq_GetLO_RecordsMINIBUNDLEHEIGHT: TIntegerField
      FieldName = 'MINIBUNDLEHEIGHT'
      Origin = 'MINIBUNDLEHEIGHT'
    end
    object sq_GetLO_RecordsMINIBUNDLEWIDTH: TIntegerField
      FieldName = 'MINIBUNDLEWIDTH'
      Origin = 'MINIBUNDLEWIDTH'
    end
    object sq_GetLO_RecordsNOOFSTICKS: TIntegerField
      FieldName = 'NOOFSTICKS'
      Origin = 'NOOFSTICKS'
    end
    object sq_GetLO_RecordsNOOFSTRAPS: TIntegerField
      FieldName = 'NOOFSTRAPS'
      Origin = 'NOOFSTRAPS'
    end
    object sq_GetLO_RecordsCORNERPROT: TStringField
      FieldName = 'CORNERPROT'
      Origin = 'CORNERPROT'
      Size = 50
    end
    object sq_GetLO_RecordsPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
      Origin = 'PKGWIDTH'
    end
    object sq_GetLO_RecordsPKGHEIGHT: TIntegerField
      FieldName = 'PKGHEIGHT'
      Origin = 'PKGHEIGHT'
    end
    object sq_GetLO_RecordsPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object sq_GetLO_RecordsMINIBUNDLE: TIntegerField
      FieldName = 'MINIBUNDLE'
      Origin = 'MINIBUNDLE'
    end
    object sq_GetLO_RecordsSTRESSGRADE: TIntegerField
      FieldName = 'STRESSGRADE'
      Origin = 'STRESSGRADE'
    end
    object sq_GetLO_RecordsFJ: TIntegerField
      FieldName = 'FJ'
      Origin = 'FJ'
    end
    object sq_GetLO_RecordsPKGCUT: TIntegerField
      FieldName = 'PKGCUT'
      Origin = 'PKGCUT'
    end
    object sq_GetLO_RecordsPET_TOL: TStringField
      FieldName = 'PET_TOL'
      Origin = 'PET_TOL'
      FixedChar = True
      Size = 10
    end
    object sq_GetLO_RecordsPKGTYPE: TIntegerField
      FieldName = 'PKGTYPE'
      Origin = 'PKGTYPE'
    end
    object sq_GetLO_RecordsNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      BlobType = ftMemo
    end
    object sq_GetLO_RecordsSHRINKWRAP: TIntegerField
      FieldName = 'SHRINKWRAP'
      Origin = 'SHRINKWRAP'
    end
    object sq_GetLO_RecordsPCSPERMINIBUNDLE: TIntegerField
      FieldName = 'PCSPERMINIBUNDLE'
      Origin = 'PCSPERMINIBUNDLE'
    end
    object sq_GetLO_RecordsGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
      Origin = 'GRADESTAMP'
      FixedChar = True
    end
    object sq_GetLO_RecordsBARCODE: TStringField
      FieldName = 'BARCODE'
      Origin = 'BARCODE'
      FixedChar = True
    end
    object sq_GetLO_RecordsWRAPTYPE: TStringField
      FieldName = 'WRAPTYPE'
      Origin = 'WRAPTYPE'
      FixedChar = True
      Size = 15
    end
    object sq_GetLO_RecordsPRESSURE_TREAT: TStringField
      FieldName = 'PRESSURE_TREAT'
      Origin = 'PRESSURE_TREAT'
    end
    object sq_GetLO_RecordsPKG_TAG: TStringField
      FieldName = 'PKG_TAG'
      Origin = 'PKG_TAG'
      FixedChar = True
    end
    object sq_GetLO_RecordsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
    end
    object sq_GetLO_RecordsBarcodeID: TIntegerField
      FieldName = 'BarcodeID'
      Origin = 'BarcodeID'
    end
    object sq_GetLO_RecordsWrapTypeNo: TIntegerField
      FieldName = 'WrapTypeNo'
      Origin = 'WrapTypeNo'
    end
    object sq_GetLO_RecordsShrinkWrapNo: TIntegerField
      FieldName = 'ShrinkWrapNo'
      Origin = 'ShrinkWrapNo'
    end
  end
  object cdsLORows: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsLORows_Index01'
        Fields = 'CustShipPlanDetailObjectNo'
      end>
    IndexName = 'cdsLORows_Index01'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'L.LoadNo,'
      'LS.ShippingPlanNo,'
      'LS.LoadingLocationNo,'
      'LS.ShipToInvPointNo,'
      ''
      'CSH.CustomerNo,'
      'CSD.CustShipPlanDetailObjectNo,'
      
        'OL.PackageCode                                           AS PKGC' +
        'ODE,'
      'CSD.ProductNo,'
      'P.ProductDisplayName                          AS INTERNPRODDESC,'
      'CSD.LengthDescription'#9#9#9'                    AS LENGTHDESC,'
      'CSD.NoOfUnits'#9#9#9#9'                          AS NOOFUNITS,'
      'UN.VolumeUnitName'#9#9#9'                        AS VOLUNIT,'
      'OL.Price'#9#9#9#9'                              AS PRICE,'
      'PU.TemplateUnitName'#9#9#9'                      AS PRICEUNIT,'
      ''
      'OL.MinActualLengthMM'#9#9#9'                    AS MIN_LENGTH,'
      'OL.MaxActualLengthMM'#9#9#9'                    AS MAX_LENGTH,'
      ''
      'PG.ActualThicknessMM'#9#9#9'                    AS ACT_THICK,'
      'PG.ActualWidthMM'#9#9#9'                        AS ACT_WIDTH,'
      'PL.ActualLengthMM'#9#9#9'                        AS ACT_LENGTH,'
      'CSD.Reference'#9#9#9#9'                          AS REFERENCE,'
      ''
      'CSD.ProductLengthNo,'
      ''
      'CSH.ETDYearWeek'#9#9#9'                    AS LEV_PERIOD_START,'
      'CSH.ETDWeekEnd'#9#9#9'                      AS LEV_PERIOD_END,'
      ''
      ''
      'OH.OrderNoText'#9#9#9#9'                        AS ORDERNO,'
      ''
      ''
      'OL.Reference                                  AS KR_Ref,'
      'OL.PcsPerPkg'#9#9#9#9'                          AS PCSPERPKG,'
      'OL.ProductGroupNo                            AS PRODUCTGROUPNO,'
      ''
      
        'OL.OrderLineDescription'#9#9#9'                  AS PRODUCTDESCRIPTIO' +
        'N,'
      'PG.NominalThicknessMM                         AS NOM_THICK,'
      'PG.NominalWidthMM                             AS NOM_WIDTH,'
      ''
      'PL.ProductLengthGroupNo,'
      'PG.NominalThicknessINCH                       AS INCH_THICK,'
      'PG.NominalWidthINCH                           AS INVCH_WIDTH,'
      'PG.SurfacingNo,'
      'PG.SpeciesNo,'
      'G.GradeNo,'
      ''
      'OL.PackageTypeNo                              AS PackageTypeNo,'
      ''
      '0 AS MATCH,'
      'isNull(OL.OverrideRL, 1) AS OverrideRL,'
      'PG.ProductCategoryNo,'
      'CSD.CustShipPlanDetailObjectNo AS SupplierShipPlanObjectNo,'
      'PG.SequenceNo AS VaruSlag'
      ''
      'FROM  '#9'dbo.Loads L'
      #9'Inner Join dbo.LoadShippingPlan LS ON LS.LoadNo = L.LoadNo'
      
        #9'INNER JOIN dbo.CustomerShippingPlanHeader CSH ON CSH.ShippingPl' +
        'anNo = LS.ShippingPlanNo'
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD ON CSD.ShippingP' +
        'lanNo = CSH.ShippingPlanNo'
      ''
      ''
      
        #9'Inner JOIN dbo.OrderLine '#9#9'OL'#9'              ON OL.OrderLineNo'#9#9 +
        '= CSD.OrderLineNo'
      #9#9#9#9#9#9#9'            '#9'AND'#9'OL.OrderNo'#9#9'= CSD.OrderNo'
      
        #9'Inner JOIN dbo.Orders '#9#9#9'OH'#9'              ON OH.OrderNo'#9#9'= CSH.' +
        'OrderNo'
      
        #9'INNER JOIN dbo.Users'#9' '#9#9'US'#9'                ON US.UserID '#9#9'= OH.' +
        'ResponsibleSeller'
      
        #9'INNER JOIN dbo.Client '#9#9#9'C'#9'                ON C.ClientNo'#9#9'= CSH' +
        '.CustomerNo'
      '                                                '
      ''
      
        #9'INNER JOIN dbo.Product P                      ON P.ProductNo = ' +
        'OL.ProductNo'
      
        #9'INNER JOIN dbo.Grade G                        ON G.GradeNo = P.' +
        'GradeNo'
      
        '                                                '#9'AND G.LanguageC' +
        'ode = 1'
      ''
      
        #9'INNER JOIN dbo.ProductLength PL               ON PL.ProductLeng' +
        'thNo = CSD.ProductLengthNo'
      
        #9'INNER JOIN dbo.ProductGroup PG                ON PG.ProductGrou' +
        'pNo = P.ProductGroupNo'
      ''
      
        #9'INNER JOIN dbo.UnitName '#9#9'UN'#9'              ON UN.VolumeUnit_No ' +
        #9'= OL.VolumeUnitNo'
      
        #9'INNER JOIN dbo.PackUnit '#9#9'PU'#9'              ON PU.TemplateUnitNo' +
        ' '#9'= OL.PriceUnitNo'
      ''
      ''
      'WHERE L.LoadNo = :LoadNo')
    Left = 192
    Top = 80
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsLORowsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cdsLORowsCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      Required = True
    end
    object cdsLORowsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object cdsLORowsPKGCODE: TStringField
      DisplayLabel = 'Paketkod'
      FieldName = 'PKGCODE'
      Origin = 'PKGCODE'
      FixedChar = True
    end
    object cdsLORowsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object cdsLORowsPRODUCTDESCRIPTION: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCTDESCRIPTION'
      Origin = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object cdsLORowsLENGTHDESC: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LENGTHDESC'
      Origin = 'LENGTHDESC'
      FixedChar = True
      Size = 100
    end
    object cdsLORowsNOOFUNITS: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'NOOFUNITS'
      Origin = 'NOOFUNITS'
    end
    object cdsLORowsVOLUNIT: TStringField
      DisplayLabel = 'Enhet'
      FieldName = 'VOLUNIT'
      Origin = 'VOLUNIT'
      Required = True
      Size = 10
    end
    object cdsLORowsPRICE: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object cdsLORowsPRICEUNIT: TStringField
      DisplayLabel = 'Prisenhet'
      FieldName = 'PRICEUNIT'
      Origin = 'PRICEUNIT'
      Required = True
    end
    object cdsLORowsMIN_LENGTH: TFloatField
      FieldName = 'MIN_LENGTH'
      Origin = 'MIN_LENGTH'
    end
    object cdsLORowsMAX_LENGTH: TFloatField
      FieldName = 'MAX_LENGTH'
      Origin = 'MAX_LENGTH'
    end
    object cdsLORowsACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
      Origin = 'ACT_THICK'
    end
    object cdsLORowsACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
      Origin = 'ACT_WIDTH'
    end
    object cdsLORowsACT_LENGTH: TFloatField
      FieldName = 'ACT_LENGTH'
      Origin = 'ACT_LENGTH'
      Required = True
    end
    object cdsLORowsREFERENCE: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object cdsLORowsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      Required = True
    end
    object cdsLORowsLEV_PERIOD_START: TIntegerField
      DisplayLabel = 'Lev.period start'
      FieldName = 'LEV_PERIOD_START'
      Origin = 'LEV_PERIOD_START'
    end
    object cdsLORowsLEV_PERIOD_END: TIntegerField
      DisplayLabel = 'Lev.period slut'
      FieldName = 'LEV_PERIOD_END'
      Origin = 'LEV_PERIOD_END'
    end
    object cdsLORowsORDERNO: TStringField
      DisplayLabel = 'Ordernr'
      FieldName = 'ORDERNO'
      Origin = 'ORDERNO'
      Required = True
    end
    object cdsLORowsKR_Ref: TStringField
      DisplayLabel = 'KR-referens'
      FieldName = 'KR_Ref'
      Origin = 'KR_Ref'
      Size = 50
    end
    object cdsLORowsPCSPERPKG: TIntegerField
      DisplayLabel = 'PPP'
      FieldName = 'PCSPERPKG'
      Origin = 'PCSPERPKG'
    end
    object cdsLORowsPRODUCTGROUPNO: TIntegerField
      FieldName = 'PRODUCTGROUPNO'
      Origin = 'PRODUCTGROUPNO'
    end
    object cdsLORowsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
      Origin = 'NOM_THICK'
    end
    object cdsLORowsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
      Origin = 'NOM_WIDTH'
    end
    object cdsLORowsSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
    end
    object cdsLORowsProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
    end
    object cdsLORowsINVCH_WIDTH: TStringField
      FieldName = 'INVCH_WIDTH'
      Origin = 'INVCH_WIDTH'
    end
    object cdsLORowsINCH_THICK: TStringField
      FieldName = 'INCH_THICK'
      Origin = 'INCH_THICK'
    end
    object cdsLORowsOverrideRL: TIntegerField
      DisplayLabel = 'Till'#229't alla l'#228'ngder'
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
    end
    object cdsLORowsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cdsLORowsSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cdsLORowsGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
    end
    object cdsLORowsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cdsLORowsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cdsLORowsShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object cdsLORowsINTERNPRODDESC: TStringField
      DisplayLabel = 'Produktbesk.(intern)'
      FieldName = 'INTERNPRODDESC'
      Origin = 'INTERNPRODDESC'
      Size = 100
    end
    object cdsLORowsLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'VaruSlag'
    end
    object cdsLORowsProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cdsLORowsMATCH: TIntegerField
      FieldName = 'MATCH'
      Origin = '[MATCH]'
    end
    object cdsLORowsVaruSlag: TIntegerField
      FieldName = 'VaruSlag'
      Origin = 'VaruSlag'
    end
  end
  object cds_LSP: TFDQuery
    AfterInsert = cds_LSPAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'isNull(OH.OrderType,0) AS Shipping,'
      'LSP.LoadNo,'
      'LSP.LoadingLocationNo,'
      'LSP.ShipToInvPointNo,'
      'OH.SalesRegionNo,'
      'LSP.ShippingPlanNo,'
      'C.ClientName AS CUSTOMER,'
      ''
      'SC.ClientName'#9#9#9#9#9'AS SHIPPER,'
      'isNull(Bk.PreliminaryRequestedPeriod,'#39' '#39')'#9'AS READYDATE,'
      'isNull(Cr.CarrierName,'#39' '#39')'#9#9#9'AS VESSEL,'
      'Vg.ETD'#9#9#9#9#9#9'              AS ETD,'
      'Vg.ETD'#9#9#9#9#9#9'              AS ETA,'
      ''
      'Bk.SupplierReference'#9#9#9#9'    AS SHIPPER_REF,'
      'Bk.ShippingCompanyBookingID'#9#9#9'AS SHIPPERID,'
      'Bk.ShippersShipDate'#9#9#9#9'      AS SHIPPERS_SHIPDATE,'
      'Bk.ShippersShipTime'#9#9#9#9'      AS SHIPPERS_SHIPTIME,'
      'OH.OrderNoText'#9#9#9#9#9'        AS ORDERNO,'
      'CASE WHEN OH.OrderType = 0 then '#39'SALES'#39
      'ELSE '#39'PURCHASE'#39
      'END AS ORDERTYPE,'
      'LSP.CreatedUser,'
      'LSP.ModifiedUser,'
      'LSP.DateCreated,'
      'OH.CustomerNo,'
      'SR.ClientName AS SalesRegion,'
      '0 AS "Function",'
      'CSH.LoadingLocationNo AS LoadingPIPNo,'
      'CSH.LoadingLIPNo'
      ''
      ''
      'FROM dbo.LoadShippingPlan LSP'
      'Inner Join dbo.CustomerShippingPlanHeader CSH'
      ''
      'Inner Join dbo.Client'#9#9'C '#9'ON  '#9'C.ClientNo'#9'= CSH.CustomerNo'
      
        '                                                ON      CSH.Ship' +
        'pingPlanNo = LSP.ShippingPlanNo'
      'Inner JOIN dbo.Orders '#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      'Inner Join dbo.Client'#9#9'SR '#9'ON  '#9'SR.ClientNo'#9'= OH.SalesRegionNo'
      ''
      'LEFT OUTER JOIN dbo.Booking'#9#9'Bk'
      #9'Left Outer JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'Left Outer JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo'
      
        #9'Left outer JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      #9#9#9#9#9#9#9'ON  '#9'Bk.ShippingPlanNo'#9'= LSP.ShippingPlanNo'
      ''
      'WHERE'
      'LSP.LoadNo = :LoadNo')
    Left = 120
    Top = 80
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LSPShipping: TIntegerField
      FieldName = 'Shipping'
      Origin = 'Shipping'
      ProviderFlags = []
    end
    object cds_LSPLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LSPLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = []
    end
    object cds_LSPShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LSPCUSTOMER: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      ProviderFlags = []
      Size = 80
    end
    object cds_LSPSHIPPER: TStringField
      DisplayLabel = 'Spedit'#246'r'
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      ProviderFlags = []
      Size = 80
    end
    object cds_LSPREADYDATE: TStringField
      DisplayLabel = 'Redodag'
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      ProviderFlags = []
      Size = 30
    end
    object cds_LSPVESSEL: TStringField
      DisplayLabel = 'B'#229't'
      FieldName = 'VESSEL'
      Origin = 'VESSEL'
      ProviderFlags = []
      FixedChar = True
      Size = 50
    end
    object cds_LSPETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ProviderFlags = []
    end
    object cds_LSPETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ProviderFlags = []
    end
    object cds_LSPSHIPPER_REF: TStringField
      DisplayLabel = 'Sped.referens'
      FieldName = 'SHIPPER_REF'
      Origin = 'SHIPPER_REF'
      ProviderFlags = []
      Size = 50
    end
    object cds_LSPSHIPPERID: TStringField
      DisplayLabel = 'Sped.ID'
      FieldName = 'SHIPPERID'
      Origin = 'SHIPPERID'
      ProviderFlags = []
    end
    object cds_LSPSHIPPERS_SHIPDATE: TSQLTimeStampField
      DisplayLabel = 'Sped.datum'
      FieldName = 'SHIPPERS_SHIPDATE'
      Origin = 'SHIPPERS_SHIPDATE'
      ProviderFlags = []
    end
    object cds_LSPSHIPPERS_SHIPTIME: TSQLTimeStampField
      DisplayLabel = 'Sped.tid'
      FieldName = 'SHIPPERS_SHIPTIME'
      Origin = 'SHIPPERS_SHIPTIME'
      ProviderFlags = []
    end
    object cds_LSPORDERNO: TStringField
      DisplayLabel = 'Ordernr'
      FieldName = 'ORDERNO'
      Origin = 'ORDERNO'
      ProviderFlags = []
    end
    object cds_LSPORDERTYPE: TStringField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ProviderFlags = []
      Size = 8
    end
    object cds_LSPCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LSPCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = []
    end
    object cds_LSPSalesRegion: TStringField
      FieldName = 'SalesRegion'
      Origin = 'SalesRegion'
      ProviderFlags = []
      Size = 80
    end
    object cds_LSPFunction: TIntegerField
      FieldName = 'Function'
      Origin = 'Function'
      ProviderFlags = []
    end
    object cds_LSPLoadingPIPNo: TIntegerField
      FieldName = 'LoadingPIPNo'
      Origin = 'LoadingPIPNo'
      ProviderFlags = []
    end
    object cds_LSPLoadingLIPNo: TIntegerField
      FieldName = 'LoadingLIPNo'
      Origin = 'LoadingLIPNo'
      ProviderFlags = []
    end
  end
  object sq_PkgInLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT LD.LoadNo AS LastNr, LD.ShippingPlanNo AS LO'
      'FROM '
      'dbo.Loaddetail LD '
      'where LD.PackageNo = :PackageNo'
      'AND LD.SupplierCode = :SupplierCode'
      'AND LD.LoadNo <> :LoadNo')
    Left = 48
    Top = 264
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
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgInLoadLastNr: TIntegerField
      FieldName = 'LastNr'
      Origin = 'LastNr'
      Required = True
    end
    object sq_PkgInLoadLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
  end
  object sq_Booking_Data: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      'SC.ClientName'#9#9#9#9#9'AS SHIPPER,'#9#9'-- CHAR 80'
      
        'isNull(Bk.PreliminaryRequestedPeriod,'#39' '#39')'#9'AS READYDATE,'#9#9'-- CHAR' +
        ' 30'
      'isNull(Cr.CarrierName,'#39' '#39')'#9#9#9'AS VESSEL,'#9#9'-- Char 50'
      'Vg.ETD'#9#9#9#9#9#9'AS ETD,'#9#9#9'-- DateTime'
      'Vd.ETA'#9#9#9#9#9#9'AS ETA,'#9#9#9'-- DateTime'
      ''
      'Bk.SupplierReference'#9#9#9#9'AS SHIPPER_REF,'
      'Bk.ShippingCompanyBookingID'#9#9#9'AS SHIPPERID,'
      ''
      ''
      'Bk.ShippersShipDate'#9#9#9#9'AS SHIPPERS_SHIPDATE,'
      'Bk.ShippersShipTime'#9#9#9#9'AS SHIPPERS_SHIPTIME'
      ''
      ''
      ''
      'FROM'
      '       '#9'dbo.Booking'#9#9'Bk'
      ''
      
        #9'LEFT OUTER JOIN dbo.VoyageDestination'#9'VD '#9'ON  '#9'Bk.BookingNo'#9#9'= ' +
        'vd.BookingNo'
      ''
      #9'Left Outer JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'Left Outer JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo'
      
        #9'Left outer JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      ''
      ''
      'WHERE'
      ''
      ''
      'Bk.ShippingPlanNo = :ShippingPlanNo')
    Left = 48
    Top = 216
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_Booking_DataSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      Size = 80
    end
    object sq_Booking_DataREADYDATE: TStringField
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object sq_Booking_DataVESSEL: TStringField
      FieldName = 'VESSEL'
      Origin = 'VESSEL'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 50
    end
    object sq_Booking_DataETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
    object sq_Booking_DataETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
    end
    object sq_Booking_DataSHIPPER_REF: TStringField
      FieldName = 'SHIPPER_REF'
      Origin = 'SHIPPER_REF'
      Size = 50
    end
    object sq_Booking_DataSHIPPERID: TStringField
      FieldName = 'SHIPPERID'
      Origin = 'SHIPPERID'
    end
    object sq_Booking_DataSHIPPERS_SHIPDATE: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPDATE'
      Origin = 'SHIPPERS_SHIPDATE'
    end
    object sq_Booking_DataSHIPPERS_SHIPTIME: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPTIME'
      Origin = 'SHIPPERS_SHIPTIME'
    end
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
    Left = 48
    Top = 168
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
  object cds_LoadHead: TFDQuery
    AfterInsert = cds_LoadHeadAfterInsert
    AfterScroll = cds_LoadHeadAfterScroll
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    Left = 32
    Top = 80
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
      ProviderFlags = [pfInUpdate]
      OnChange = cds_LoadHeadSupplierNoChange
    end
    object cds_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_LoadHeadSenderLoadStatusChange
    end
    object cds_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      Origin = 'MsgToShipper'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      Origin = 'PackageEntryOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      Origin = 'LocalShippingCompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      Origin = 'LocalLoadingLocation'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      Origin = 'LocalDestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object cds_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
      Origin = 'OriginalSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_LoadHeadCustomerNoChange
    end
    object cds_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_LoadHeadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      Origin = 'LoadOK'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadLoadAR: TIntegerField
      FieldName = 'LoadAR'
      Origin = 'LoadAR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_LoadHeadPIPNoChange
    end
    object cds_LoadHeadLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadHeadPIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = cds_PIP2
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_LoadHeadLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
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
      '       Pr.ProductDisplayName, Pr.ProductNo,'
      '(Select Count(*) from'
      
        '        dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = P' +
        'N.PackageTypeNo)'
      'AS NoOfLengths,'
      '(Select TOP 1 PTD.ProductLengthNo from'
      
        '        dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = P' +
        'N.PackageTypeNo)'
      'AS ProductLengthNo'
      ''
      ''
      ''
      'FROM         dbo.PackageNumber          PN'
      ''
      '       INNER'
      
        '       JOIN  dbo.LogicalInventoryPoint  LI ON  LI.LogicalInvento' +
        'ryPointNo  = PN.LogicalInventoryPointNo'
      ''
      '       INNER'
      
        '       JOIN  dbo.PackageType            PT ON  PT.PackageTypeNo ' +
        '           = PN.PackageTypeNo'
      ''
      '       INNER'
      
        '       JOIN  dbo.Product                Pr ON  Pr.ProductNo     ' +
        '           = PT.ProductNo'
      ''
      '       INNER'
      
        '       JOIN  dbo.Client                 Cl ON  PN.SupplierNo    ' +
        '           = Cl.ClientNo'
      ''
      '       INNER'
      
        '       JOIN  dbo.PhysicalInventoryPoint PI ON  LI.PhysicalInvent' +
        'oryPointNo = PI.PhysicalInventoryPointNo'
      ''
      'WHERE  PN.PackageNo = :PkgNo'
      'AND PN.Status = 1'
      'AND PI.OwnerNo   = :InvOwner'
      'AND PI.PhysicalInventoryPointNo = :PIPNo')
    Left = 584
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
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_LO_LookUp: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'isNull(OH.OrderType,0) AS Shipping,'
      'OH.SalesRegionNo,'
      'CSH.ShippingPlanNo,'
      'C.ClientName AS CUSTOMER,'
      ''
      'SC.ClientName'#9#9#9#9#9'AS SHIPPER,'
      'isNull(Bk.PreliminaryRequestedPeriod,'#39' '#39')'#9'AS READYDATE,'
      'isNull(Cr.CarrierName,'#39' '#39')'#9#9#9'AS VESSEL,'
      'Vg.ETD'#9#9#9#9#9#9'              AS ETD,'
      'Vg.ETD'#9#9#9#9#9#9'              AS ETA,'
      ''
      'Bk.SupplierReference'#9#9#9#9'    AS SHIPPER_REF,'
      'Bk.ShippingCompanyBookingID'#9#9#9'AS SHIPPERID,'
      'Bk.ShippersShipDate'#9#9#9#9'      AS SHIPPERS_SHIPDATE,'
      'Bk.ShippersShipTime'#9#9#9#9'      AS SHIPPERS_SHIPTIME,'
      'OH.OrderNoText'#9#9#9#9#9'        AS ORDERNO,'
      'CASE WHEN OH.OrderType = 0 then '#39'SALES'#39
      'ELSE '#39'PURCHASE'#39
      'END AS ORDERTYPE,'
      ''
      'CSH.CustomerNo,'
      'SR.ClientName AS SalesRegion,'
      '0 AS "Function",'
      'CSH.LoadingLocationNo AS LoadingPIPNo, CSH.LoadingLIPNo'
      ''
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      ''
      'Inner Join dbo.Client'#9#9'C '#9'ON  '#9'C.ClientNo'#9'= CSH.CustomerNo'
      'Inner JOIN dbo.Orders '#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      'Inner Join dbo.Client'#9#9'SR '#9'ON  '#9'SR.ClientNo'#9'= OH.SalesRegionNo'
      ''
      'LEFT OUTER JOIN dbo.Booking'#9#9'Bk'
      #9'Left Outer JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'Left Outer JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo'
      
        #9'Left outer JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      #9#9#9#9#9#9#9'ON  '#9'Bk.ShippingPlanNo'#9'= CSH.ShippingPlanNo'
      ''
      'WHERE'
      'CSH.ShippingPlanNo = -1')
    Left = 448
    Top = 24
    object cds_LO_LookUpShipping: TIntegerField
      FieldName = 'Shipping'
      Origin = 'Shipping'
      ReadOnly = True
      Required = True
    end
    object cds_LO_LookUpSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_LO_LookUpShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LO_LookUpCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 80
    end
    object cds_LO_LookUpSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      Size = 80
    end
    object cds_LO_LookUpREADYDATE: TStringField
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cds_LO_LookUpVESSEL: TStringField
      FieldName = 'VESSEL'
      Origin = 'VESSEL'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 50
    end
    object cds_LO_LookUpETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
    object cds_LO_LookUpETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
    end
    object cds_LO_LookUpSHIPPER_REF: TStringField
      FieldName = 'SHIPPER_REF'
      Origin = 'SHIPPER_REF'
      Size = 50
    end
    object cds_LO_LookUpSHIPPERID: TStringField
      FieldName = 'SHIPPERID'
      Origin = 'SHIPPERID'
    end
    object cds_LO_LookUpSHIPPERS_SHIPDATE: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPDATE'
      Origin = 'SHIPPERS_SHIPDATE'
    end
    object cds_LO_LookUpSHIPPERS_SHIPTIME: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPTIME'
      Origin = 'SHIPPERS_SHIPTIME'
    end
    object cds_LO_LookUpORDERNO: TStringField
      FieldName = 'ORDERNO'
      Origin = 'ORDERNO'
      Required = True
    end
    object cds_LO_LookUpORDERTYPE: TStringField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object cds_LO_LookUpCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_LO_LookUpSalesRegion: TStringField
      FieldName = 'SalesRegion'
      Origin = 'SalesRegion'
      Size = 80
    end
    object cds_LO_LookUpFunction: TIntegerField
      FieldName = 'Function'
      Origin = 'Function'
      ReadOnly = True
      Required = True
    end
    object cds_LO_LookUpLoadingPIPNo: TIntegerField
      FieldName = 'LoadingPIPNo'
      Origin = 'LoadingPIPNo'
    end
    object cds_LO_LookUpLoadingLIPNo: TIntegerField
      FieldName = 'LoadingLIPNo'
      Origin = 'LoadingLIPNo'
    end
  end
  object cds_LoadPackages: TFDQuery
    AfterInsert = cds_LoadPackagesAfterInsert
    BeforePost = cds_LoadPackagesBeforePost
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_LoadPkgs01'
        Fields = 'PACKAGENO;SupplierCode'
        Options = [soUnique]
      end>
    IndexName = 'cds_LoadPkgs01'
    ConstraintsEnabled = True
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
      #9'        LD.OverrideRL,'
      '          PG.ProductCategoryNo,'
      '          PG.SequenceNo AS Varuslag,'
      '          0 AS InvNr,'
      '          LD.CustomPcs'
      ''
      ''
      'FROM dbo.LoadDetail LD'
      
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
      'WHERE      LD.LoadNo = :LoadNo'
      ''
      'ORDER BY   LD.LoadDetailNo DESC')
    Left = 288
    Top = 80
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadPackagesLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object cds_LoadPackagesLoadDetailNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
      DisplayLabel = 'Status'
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
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = []
      DisplayFormat = '##########'
    end
    object cds_LoadPackagesM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesKVM: TFloatField
      DisplayLabel = 'AM2'
      FieldName = 'KVM'
      Origin = 'KVM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadPackagesLOPM: TFloatField
      DisplayLabel = 'AM1'
      FieldName = 'LOPM'
      Origin = 'LOPM'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
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
      DisplayLabel = 'Antal l'#228'ngder'
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
      DisplayLabel = 'AT'
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
      ProviderFlags = []
    end
    object cds_LoadPackagesActualWidthMM: TFloatField
      DisplayLabel = 'AB'
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
      DisplayLabel = 'Manuell koppling'
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
    object cds_LoadPackagesProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesVaruslag: TIntegerField
      FieldName = 'Varuslag'
      Origin = 'Varuslag'
      ProviderFlags = []
    end
    object cds_LoadPackagesInvNr: TIntegerField
      DisplayLabel = 'IK'
      FieldName = 'InvNr'
      Origin = 'InvNr'
      ProviderFlags = []
    end
    object cds_LoadPackagesCustomPcs: TIntegerField
      DisplayLabel = 'Styck best'#228'llt'
      FieldName = 'CustomPcs'
      Origin = 'CustomPcs'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_GetPkgNos: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'select distinct pn.packageno, pn.suppliercode, lip.LogicalInvent' +
        'oryPointNo, pn.datecreated, pt.packagetypeno,'
      'pt.productno, ptd.productlengthno'
      'from '
      'dbo.packagenumber pn '
      
        'inner join dbo.LogicalInventoryPoint lip on lip.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'inner join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'inner join dbo.packagetypedetail ptd on ptd.packagetypeno = pn.p' +
        'ackagetypeno'
      
        'inner join dbo.ProductLength pl on pl.productLengthno = ptd.prod' +
        'uctLengthno'
      'where'
      'lip.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND pn.status = 1'
      
        'and pn.packageno not in (Select pr.packageno from dbo.Pkgs_Res p' +
        'r'
      'where pr.suppliercode = pn.suppliercode'
      'and pr.userid <> :UserID)'
      
        'AND pt.productNo in (Select pt2.ProductNo from dbo.packagetype p' +
        't2'
      
        'inner join dbo.packagetypedetail ptd2 on ptd2.packagetypeno = pt' +
        '2.packagetypeno'
      
        'inner join dbo.ProductLength pl2 on pl2.productLengthno = ptd2.p' +
        'roductLengthno'
      
        'inner join dbo.PkgVarCode pc on pc.packagetypeno = pt2.packagety' +
        'peno'
      'WHERE'
      'pc.packagecodeno = :packagecodeno'
      'AND pl2.ActualLengthMM = pl.ActualLengthMM'
      'AND pt2.BarCodeID = pt.BarCodeID'
      'AND pt2.GradeStamp = pt.GradeStamp'
      'AND pt2.TotalNoOfPieces = pt.TotalNoOfPieces'
      'AND pt2.ProductNo = pt.ProductNo)'
      ''
      'Order by pn.datecreated')
    Left = 400
    Top = 248
    ParamData = <
      item
        Name = 'LOGICALINVENTORYPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGECODENO'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPkgNospackageno: TIntegerField
      FieldName = 'packageno'
      Origin = 'packageno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetPkgNossuppliercode: TStringField
      FieldName = 'suppliercode'
      Origin = 'suppliercode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_GetPkgNosLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      Required = True
    end
    object sq_GetPkgNosdatecreated: TSQLTimeStampField
      FieldName = 'datecreated'
      Origin = 'datecreated'
    end
    object sq_GetPkgNospackagetypeno: TIntegerField
      FieldName = 'packagetypeno'
      Origin = 'packagetypeno'
      Required = True
    end
    object sq_GetPkgNosproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
    object sq_GetPkgNosproductlengthno: TIntegerField
      FieldName = 'productlengthno'
      Origin = 'productlengthno'
      Required = True
    end
  end
  object sq_OnePkgDetailData: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      '  PR.ProductDisplayName         AS PRODUCT,'
      '  PN.PackageNo'#9#9'              AS PACKAGENO,'
      '  PN.PackageTypeNo'#9'            AS PACKAGETYPENO,'
      '  PN.SupplierCode'#9'              AS SUPP_CODE,'
      '  PT.OnSticks,'
      '  PT.Totalm3Actual              AS M3_NET,'
      '  PT.TotalNoOfPieces            AS PCS,'
      #9'PT.Totalm3Nominal'#9#9'          AS M3_NOM,'
      '  PT.TotalMFBMNominal           AS MFBM,'
      #9'PT.TotalSQMofActualWidth'#9'    AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '  PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '  (Select Count(*) from'
      
        '  dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = PN.Pack' +
        'ageTypeNo)  AS NoOfLengths,'
      ' (Select TOP 1 PTD.ProductLengthNo from'
      
        '  dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = PN.Pack' +
        'ageTypeNo)  AS ProductLengthNo,'
      ''
      
        '  (Select TOP 1 PL.ActualLengthMM from dbo.PackageTypeDetail  PT' +
        'D'
      
        '  Inner Join dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Pr' +
        'oductLengthNo'
      'WHERE   PTD.PackageTypeNo = PN.PackageTypeNo)AS ALMM,'
      ''
      'PT.ProductNo,'
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'PG.SurfacingNo,'
      'PG.SpeciesNo,'
      'G.GradeNo AS MainGradeNo,'
      'PN.LogicalInventoryPointNo AS LIPNo,'
      'PG.ProductCategoryNo,'
      'PG.SequenceNo AS Varuslag'
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup      PG  ON PG.ProductGroupN' +
        'o     = Pr.ProductGroupNo'
      
        '        INNER JOIN dbo.Grade      G  ON G.GradeNo     = Pr.Grade' +
        'No'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      '')
    Left = 400
    Top = 176
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
    object sq_OnePkgDetailDataPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 100
    end
    object sq_OnePkgDetailDataPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_OnePkgDetailDataSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_OnePkgDetailDataOnSticks: TIntegerField
      FieldName = 'OnSticks'
      Origin = 'OnSticks'
    end
    object sq_OnePkgDetailDataM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object sq_OnePkgDetailDataPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sq_OnePkgDetailDataM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object sq_OnePkgDetailDataMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
    end
    object sq_OnePkgDetailDataKVM: TFloatField
      FieldName = 'KVM'
      Origin = 'KVM'
    end
    object sq_OnePkgDetailDataLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgDetailDataNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      Origin = 'NoOfLengths'
      ReadOnly = True
    end
    object sq_OnePkgDetailDataProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ReadOnly = True
    end
    object sq_OnePkgDetailDataALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
    end
    object sq_OnePkgDetailDataProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sq_OnePkgDetailDataActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object sq_OnePkgDetailDataActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object sq_OnePkgDetailDataSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sq_OnePkgDetailDataSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object sq_OnePkgDetailDataMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
      Required = True
    end
    object sq_OnePkgDetailDataLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object sq_OnePkgDetailDataProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object sq_OnePkgDetailDataVaruslag: TIntegerField
      FieldName = 'Varuslag'
      Origin = 'Varuslag'
    end
  end
  object sq_IsLoadMadeInAvrop: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Confirmed_LoadNo, NewLoadNo FROM dbo.Confirmed_Load CL'
      'WHERE'
      'CL.NewLoadNo = :LoadNo')
    Left = 584
    Top = 184
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsLoadMadeInAvropConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
      Origin = 'Confirmed_LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_IsLoadMadeInAvropNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
      Origin = 'NewLoadNo'
    end
  end
  object sp_DeleteOneLoad: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_DeleteOneLoad'
    Left = 728
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_RemPkgFromLoad: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_remLoadPkg'
    Left = 728
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
  object sp_ProcessPkgAND_Log: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_ProcessPkg'
    Left = 728
    Top = 128
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
  object sp_DeletePackage: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_DelPkgFromSystem'
    Left = 728
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_LIP2: TDataSource
    DataSet = cds_LIP2
    Left = 128
    Top = 392
  end
  object ds_PIP2: TDataSource
    DataSet = cds_PIP2
    Left = 48
    Top = 392
  end
  object cds_PIP2: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
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
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      ''
      'Order By  CY.CITYNAME'
      '')
    Left = 48
    Top = 336
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LEGOOWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PIP2PIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
    object cds_PIP2PIPNAME: TStringField
      FieldName = 'PIPNAME'
      Origin = 'PIPNAME'
      Size = 50
    end
  end
  object cds_LIP2: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1'
      ''
      'Order By LogicalInventoryName ')
    Left = 128
    Top = 336
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LIP2LIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIP2LIPName: TStringField
      FieldName = 'LIPName'
      Origin = 'LIPName'
      Size = 50
    end
  end
  object FD_GetMaxLoadDetailNo: TFDQuery
    AfterInsert = cds_LoadPackagesAfterInsert
    BeforePost = cds_LoadPackagesBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'LoadDetail'
    SQL.Strings = (
      'SELECT IsNull(MAX(LD.LoadDetailNo),0) AS MaxLoadDetailNo'
      'FROM dbo.LoadDetail LD'
      'WHERE      LD.LoadNo = :LoadNo')
    Left = 288
    Top = 336
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FD_GetMaxLoadDetailNoMaxLoadDetailNo: TIntegerField
      FieldName = 'MaxLoadDetailNo'
      Origin = 'MaxLoadDetailNo'
      ReadOnly = True
      Required = True
    end
  end
  object cds_DelAdress: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'InvoiceShipToAddress'
    SQL.Strings = (
      'Select ca.AddressNo,'
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
      'from dbo.CompanyAddress CA'
      'Inner Join dbo.Address Addr'
      ' '#9'INNER JOIN dbo.CITY'#9#9#9'AdrCY'#9'ON'#9'AdrCY.CityNo '#9#9'= Addr.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9#9'AdrCtry'#9'ON'#9'AdrCtry.CountryNo '#9'= Addr.C' +
        'ountryNo'
      'on Addr.AddressNo = ca.AddressNo'
      ''
      'WHERE CA.ClientNo = :ClientNo'
      'OR CA.ClientNo = 1')
    Left = 584
    Top = 368
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_DelAdressAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object cds_DelAdressADDR: TStringField
      FieldName = 'ADDR'
      Origin = 'ADDR'
      ReadOnly = True
      Required = True
      Size = 314
    end
    object cds_DelAdressAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object cds_DelAdressAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_DelAdressAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_DelAdressAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_DelAdressSTATE: TStringField
      FieldName = 'STATE'
      Origin = 'STATE'
      FixedChar = True
      Size = 40
    end
    object cds_DelAdressPOSTAL_CODE: TStringField
      FieldName = 'POSTAL_CODE'
      Origin = 'POSTAL_CODE'
      FixedChar = True
    end
    object cds_DelAdressCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 50
    end
    object cds_DelAdressCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Required = True
      Size = 30
    end
    object cds_DelAdressAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_LoadDelAdress: TFDQuery
    AfterInsert = cds_LoadDelAdressAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.LoadDelAdress'
      'WHERE LoadNo = :LoadNo')
    Left = 584
    Top = 431
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadDelAdressLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_LoadDelAdressAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadDelAdressNoteLine1: TStringField
      FieldName = 'NoteLine1'
      Origin = 'NoteLine1'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object cds_LoadDelAdressNoteLine2: TStringField
      FieldName = 'NoteLine2'
      Origin = 'NoteLine2'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object cds_LoadDelAdressNoteLine3: TStringField
      FieldName = 'NoteLine3'
      Origin = 'NoteLine3'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object cds_LoadDelAdressCaseHandler: TStringField
      FieldName = 'CaseHandler'
      Origin = 'CaseHandler'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_LoadDelAdressLeveransAdress: TStringField
      FieldKind = fkLookup
      FieldName = 'LeveransAdress'
      LookupDataSet = cds_DelAdress
      LookupKeyFields = 'AddressNo'
      LookupResultField = 'ADDR'
      KeyFields = 'AddressNo'
      ProviderFlags = []
      Size = 314
      Lookup = True
    end
    object cds_LoadDelAdressDepartAddressNo: TIntegerField
      FieldName = 'DepartAddressNo'
      Origin = 'DepartAddressNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadDelAdressDepartAdress: TStringField
      FieldKind = fkLookup
      FieldName = 'DepartAdress'
      LookupDataSet = cds_DepartAdress
      LookupKeyFields = 'AddressNo'
      LookupResultField = 'AddressName'
      KeyFields = 'DepartAddressNo'
      ProviderFlags = []
      Size = 314
      Lookup = True
    end
    object cds_LoadDelAdressNoteLine4: TStringField
      FieldName = 'NoteLine4'
      Origin = 'NoteLine4'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object cds_LoadDelAdressNoteLine5: TStringField
      FieldName = 'NoteLine5'
      Origin = 'NoteLine5'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object cds_LoadDelAdressNoteLine6: TStringField
      FieldName = 'NoteLine6'
      Origin = 'NoteLine6'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object cds_LoadDelAdressEndUserRequisition: TStringField
      FieldName = 'EndUserRequisition'
      Origin = 'EndUserRequisition'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_LoadDelAdressTransportHandler: TStringField
      FieldName = 'TransportHandler'
      Origin = 'TransportHandler'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object ds_LoadDelAdress: TDataSource
    DataSet = cds_LoadDelAdress
    Left = 584
    Top = 480
  end
  object cds_DepartAdress: TFDQuery
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'InvoiceShipToAddress'
    SQL.Strings = (
      'Select ca.AddressNo,'
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
      'from dbo.CompanyAddress CA'
      'Inner Join dbo.Address Addr'
      ' '#9'INNER JOIN dbo.CITY'#9#9#9'AdrCY'#9'ON'#9'AdrCY.CityNo '#9#9'= Addr.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9#9'AdrCtry'#9'ON'#9'AdrCtry.CountryNo '#9'= Addr.C' +
        'ountryNo'
      'on Addr.AddressNo = ca.AddressNo'
      ''
      'WHERE CA.ClientNo = :ClientNo'
      'OR CA.ClientNo = 1')
    Left = 680
    Top = 360
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_DepartAdressAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_DepartAdressAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object cds_DepartAdressADDR: TStringField
      FieldName = 'ADDR'
      Origin = 'ADDR'
      ReadOnly = True
      Required = True
      Size = 314
    end
    object cds_DepartAdressAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object cds_DepartAdressAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_DepartAdressAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_DepartAdressAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_DepartAdressSTATE: TStringField
      FieldName = 'STATE'
      Origin = 'STATE'
      FixedChar = True
      Size = 40
    end
    object cds_DepartAdressPOSTAL_CODE: TStringField
      FieldName = 'POSTAL_CODE'
      Origin = 'POSTAL_CODE'
      FixedChar = True
    end
    object cds_DepartAdressCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 50
    end
    object cds_DepartAdressCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Required = True
      Size = 30
    end
  end
  object sp_TransferFiles: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_TransferFiles'
    Left = 288
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_TransferFiles: TDataSource
    DataSet = sp_TransferFiles
    Left = 288
    Top = 496
  end
  object sq_GetCSHValues: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'CSH.Reference,'
      'CSH.NoteForLoadSheet'
      'FROM  dbo.CustomerShippingPlanHeader CSH'
      'WHERE CSH.ShippingPlanNo = :ShippingPlanNo')
    Left = 680
    Top = 424
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetCSHValuesReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 30
    end
    object sq_GetCSHValuesNoteForLoadSheet: TMemoField
      FieldName = 'NoteForLoadSheet'
      Origin = 'NoteForLoadSheet'
      BlobType = ftMemo
    end
  end
end
