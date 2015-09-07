object dmLoadEntrySSP: TdmLoadEntrySSP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 823
  Width = 1099
  object ds_LoadHead: TDataSource
    DataSet = cds_LoadHead
    Left = 32
    Top = 80
  end
  object dsrcPkgsByInvOwner: TDataSource
    DataSet = cdsPkgsByInvOwner
    Left = 600
    Top = 72
  end
  object ds_LO_LookUp: TDataSource
    DataSet = cds_LO_LookUp
    Left = 456
    Top = 72
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
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 152
    Top = 576
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
    Left = 304
    Top = 80
  end
  object dsLORows: TDataSource
    DataSet = cdsLORows
    Left = 200
    Top = 80
  end
  object ds_LSP: TDataSource
    DataSet = cds_LSP
    OnDataChange = ds_LSPDataChange
    Left = 120
    Top = 80
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
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 312
    Top = 144
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
  object cds_LoadHead: TFDQuery
    AfterInsert = cds_LoadHeadAfterInsert
    BeforePost = cds_LoadHeadBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    Left = 32
    Top = 24
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
      'SSP.SupplierNo,'
      'LSP.ShippingPlanNo,'
      'C.ClientName AS CUSTOMER,'
      ''
      'SC.ClientName'#9#9#9#9#9'AS SHIPPER,'
      'isNull(Bk.PreliminaryRequestedPeriod,'#39' '#39')'#9'AS READYDATE,'
      'isNull(Cr.CarrierName,'#39' '#39')'#9#9#9'AS VESSEL,'
      'Vg.ETD'#9#9#9#9#9#9'              AS ETD,'
      'Vd.ETA'#9#9#9#9#9#9'              AS ETA,'
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
      'SSP.CustomerNo,'
      'Supp.ClientName AS SUPPLIER,'
      'LocCust.ClientName AS LOC_CUST,'
      'SSP.ObjectType,'
      'CSH.CustomerNo AS Avrop_CustomerNo,'
      'SSP.LoadingLocationNo,'
      'SSP.ShipToInvPointNo,'
      'Loading.CityName AS LOADING_LOCATION,'
      'ShipTo.CityName AS SHIP_TO,'
      '0 AS "Function",'
      'SSP.LIPNo,'
      'PIP.PhysicalInventoryPointNo AS PIPNo'
      ''
      ''
      ''
      ''
      'FROM dbo.LoadShippingPlan LSP'
      
        '        Inner Join dbo.Loads L                    ON      L.Load' +
        'No = LSP.LoadNo'
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LSP.ShippingPlanNo'
      
        '        '#9#9#9#9#9#9'                                AND '#9'SSP.SupplierN' +
        'o = L.SupplierNo'
      
        '        '#9#9#9#9#9#9'                                AND '#9'SSP.CustomerN' +
        'o = L.CustomerNo'
      
        '                                                    AND SSP.Load' +
        'ingLocationNo = LSP.LoadingLocationNo'
      
        '                                                    AND SSP.Ship' +
        'ToInvPointNo = LSP.ShipToInvPointNo'
      ''
      
        '  Left Outer Join dbo.PhysicalInventoryPoint PIP'#9#9'ON PIP.PhyInvP' +
        'ointNameNo = SSP.LoadingLocationNo'
      '  '#9'AND PIP.OwnerNo = SSP.SupplierNo'
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
      '        Inner Join dbo.CustomerShippingPlanHeader CSH'
      
        '       '#9'Inner Join dbo.Client'#9#9'C '#9'ON  '#9'C.ClientNo'#9'= CSH.Customer' +
        'No'
      
        '                                                ON      CSH.Ship' +
        'pingPlanNo = SSP.ShippingPlanNo'
      ''
      ''
      ''
      '       '#9'Inner JOIN dbo.Orders '#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      ''
      '       '#9'LEFT OUTER JOIN dbo.Booking'#9#9'Bk'
      ''
      
        #9'LEFT OUTER JOIN dbo.VoyageDestination'#9'VD '#9'ON  '#9'Bk.BookingNo'#9#9'= ' +
        'vd.BookingNo'
      ''
      #9'Left Outer JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'Left Outer JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo'
      
        #9'Left outer JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      #9#9#9#9#9#9#9'ON  '#9'Bk.ShippingPlanNo'#9'= SSP.ShippingPlanNo'
      ''
      'WHERE'
      'LSP.LoadNo = -1'
      '')
    Left = 120
    Top = 24
    object cds_LSPLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LSPSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = []
    end
    object cds_LSPShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cds_LSPObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ProviderFlags = []
    end
    object cds_LSPAvrop_CustomerNo: TIntegerField
      FieldName = 'Avrop_CustomerNo'
      Origin = 'Avrop_CustomerNo'
      ProviderFlags = []
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
    object cds_LSPShipping: TIntegerField
      FieldName = 'Shipping'
      ProviderFlags = []
    end
    object cds_LSPSUPPLIER: TStringField
      DisplayLabel = 'Leverant'#246'r'
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      ProviderFlags = []
      Size = 80
    end
    object cds_LSPLOC_CUST: TStringField
      DisplayLabel = 'Kund(intern)'
      FieldName = 'LOC_CUST'
      Origin = 'LOC_CUST'
      ProviderFlags = []
      Size = 80
    end
    object cds_LSPLOADING_LOCATION: TStringField
      DisplayLabel = 'Lastst'#228'lle'
      FieldName = 'LOADING_LOCATION'
      Origin = 'LOADING_LOCATION'
      ProviderFlags = []
      Size = 50
    end
    object cds_LSPSHIP_TO: TStringField
      DisplayLabel = 'Destination'
      FieldName = 'SHIP_TO'
      Origin = 'SHIP_TO'
      ProviderFlags = []
      Size = 50
    end
    object cds_LSPFunction: TIntegerField
      FieldName = 'Function'
      Origin = 'Function'
      ProviderFlags = []
    end
    object cds_LSPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = []
    end
    object cds_LSPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = []
    end
  end
  object cdsLORows: TFDQuery
    OnCalcFields = cdsLORowsCalcFields
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsLORowsIndex'
        Fields = 'SupplierShipPlanObjectNo'
      end>
    IndexName = 'cdsLORowsIndex'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'SSP.ShippingPlanStatus,'
      'L.LoadNo,'
      'LS.ShippingPlanNo,'
      'LS.LoadingLocationNo,'
      'LS.ShipToInvPointNo,'
      ''
      'CSH.CustomerNo,'
      'SSP.CustShipPlanDetailObjectNo,'
      'CASE'
      'WHEN SSP.ObjectType = 2 THEN OL.PackageCode'
      'ELSE'
      'SSP.PackageCode'
      'END                                           AS PKGCODE,'
      'SSP.ProductNo,'
      'P.ProductDisplayName                          AS INTERNPRODDESC,'
      'SSP.LengthDescription'#9#9#9'                    AS LENGTHDESC,'
      'SSP.NoOfUnits'#9#9#9#9'                          AS NOOFUNITS,'
      'UN.VolumeUnitName'#9#9#9'                        AS VOLUNIT,'
      'SSP.CustomerPrice                             AS PRICE,'
      'PU.TemplateUnitName'#9#9#9'                      AS PRICEUNIT,'
      ''
      'SSP.MinActualLengthMM'#9#9#9'                    AS MIN_LENGTH,'
      'SSP.MaxActualLengthMM'#9#9#9'                    AS MAX_LENGTH,'
      ''
      'PG.ActualThicknessMM'#9#9#9'                    AS ACT_THICK,'
      'PG.ActualWidthMM'#9#9#9'                        AS ACT_WIDTH,'
      'PL.ActualLengthMM'#9#9#9'                        AS ACT_LENGTH,'
      'CSD.Reference'#9#9#9#9'                          AS REFERENCE,'
      ''
      'SSP.ProductLengthNo,'
      ''
      'SSP.StartETDYearWeek'#9#9#9'                    AS LEV_PERIOD_START,'
      'SSP.EndETDYearWeek'#9#9#9'                      AS LEV_PERIOD_END,'
      ''
      ''
      'OH.OrderNoText'#9#9#9#9'                        AS ORDERNO,'
      ''
      ''
      'SSP.Reference                                  AS KR_Ref,'
      'SSP.PcsPerPkg'#9#9#9#9'                          AS PCSPERPKG,'
      'SSP.ProductGroupNo                            AS PRODUCTGROUPNO,'
      ''
      
        'OL.OrderLineDescription'#9#9#9'                  AS PRODUCTDESCRIPTIO' +
        'N,'
      'PG.NominalThicknessMM                         AS NOM_THICK,'
      'PG.NominalWidthMM                             AS NOM_WIDTH,'
      'SSP.SupplierShipPlanObjectNo,'
      'PL.ProductLengthGroupNo,'
      'PG.NominalThicknessINCH                       AS INCH_THICK,'
      'PG.NominalWidthINCH                           AS INVCH_WIDTH,'
      'PG.SurfacingNo,'
      'PG.SpeciesNo,'
      'G.GradeNo,'
      ''
      'CASE'
      'WHEN SSP.ObjectType = 2 THEN OL.PackageTypeNo'
      'ELSE'
      'SSP.SequenceNo'
      'END                                           AS PackageTypeNo,'
      ''
      '0 AS MATCH,'
      'PrLi.PriceListName,'
      'PG.ProductCategoryNo,'
      'isNull(OL.OverrideRL, 1) AS OverrideRL,'
      'PG.SequenceNo AS VaruSlag,'
      'CASE'
      'WHEN pin.StressGrade = 0 THEN '#39'    '#39
      'WHEN pin.StressGrade = 1 THEN '#39'PEFC'#39
      'WHEN pin.StressGrade = 2 THEN '#39'FSC '#39
      'WHEN pin.StressGrade = 3 THEN '#39'JAS '#39
      'End AS CERTI,'
      'SP.SpeciesName AS Tr'#228'slag,'
      ''
      '(Select COUNT(LD.PackageNo) FROM dbo.Loaddetail LD'
      'WHERE LD.LoadNo = LS.LoadNo'
      'AND LD.ShippingPlanNo = LS.ShippingPlanNo'
      'AND LD.Defsspno = SSP.SupplierShipPlanObjectNo ) AS LoadedPkgs,'
      'ps.PackageSizeName AS Paketstorlek'
      ''
      'FROM  '#9'dbo.Loads L'
      #9'Inner Join dbo.LoadShippingPlan LS ON LS.LoadNo = L.LoadNo'
      
        #9'Inner Join dbo.SupplierShippingPlan SSP ON SSP.ShippingPlanNo =' +
        ' LS.ShippingPlanNo'
      #9#9#9#9#9#9'AND SSP.SupplierNo = L.SupplierNo'
      #9#9#9#9#9#9'AND SSP.LoadingLocationNo = LS.LoadingLocationNo'
      #9#9#9#9#9#9'AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo'
      ''
      
        '  Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = SSP.P' +
        'ackage_Size'
      '  and ps.LanguageCode = 1'
      ''
      #9'LEFT OUTER JOIN dbo.CustomerShippingPlanDetails CSD'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanHeader CSH ON CSH.ShippingPl' +
        'anNo = CSD.ShippingPlanNo'
      
        #9'Inner JOIN dbo.OrderLine '#9#9'OL'#9'              ON OL.OrderLineNo'#9#9 +
        '= CSD.OrderLineNo'
      #9#9#9#9#9#9#9'            '#9'AND'#9'OL.OrderNo'#9#9'= CSD.OrderNo'
      
        #9'Inner JOIN dbo.Orders '#9#9#9'OH'#9'              ON OH.OrderNo'#9#9'= CSH.' +
        'OrderNo'
      
        #9'INNER JOIN dbo.Users'#9' '#9#9'US'#9'                ON US.UserID '#9#9'= OH.' +
        'ResponsibleSeller'
      
        #9'INNER JOIN dbo.Client '#9#9#9'C'#9'                ON C.ClientNo'#9#9'= CSH' +
        '.CustomerNo'
      
        '   Left Outer join dbo.ProdInstru pin on pin.ProdInstruNo = OL.P' +
        'rodInstructNo'
      
        '  ON CSD.CustShipPlanDetailObjectNo = SSP.CustShipPlanDetailObje' +
        'ctNo'
      ''
      
        #9'INNER JOIN dbo.Product P                      ON P.ProductNo = ' +
        'SSP.ProductNo'
      
        #9'INNER JOIN dbo.Grade G                        ON G.GradeNo = P.' +
        'GradeNo'
      
        '                                                AND G.LanguageCo' +
        'de = 1'
      ''
      
        #9'INNER JOIN dbo.ProductLength PL               ON PL.ProductLeng' +
        'thNo = SSP.ProductLengthNo'
      
        #9'INNER JOIN dbo.ProductGroup PG                ON PG.ProductGrou' +
        'pNo = P.ProductGroupNo'
      ''
      
        #9'INNER JOIN dbo.UnitName '#9#9'UN'#9'              ON UN.VolumeUnit_No ' +
        #9'= SSP.VolumeUnitNo'
      
        #9'INNER JOIN dbo.PackUnit '#9#9'PU'#9'              ON PU.TemplateUnitNo' +
        ' '#9'= SSP.PriceUnitNo'
      #9'INNER JOIN dbo.Species sp on sp.SpeciesNo = PG.SpeciesNo'
      #9'and sp.LanguageCode = 1'
      
        '  LEFT OUTER JOIN dbo.PriceTemplateHeader PrLi  ON PrLi.Template' +
        'No = SSP.PriceListNo'
      ''
      ''
      'WHERE L.LoadNo = :LoadNo'
      
        'AND ((SSP.ShippingPlanStatus <> 7) and (SSP.ShippingPlanStatus <' +
        '> 8))'
      'AND SSP.ObjectType <= 2  '
      '')
    Left = 200
    Top = 24
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
    end
    object cdsLORowsShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
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
    end
    object cdsLORowsINTERNPRODDESC: TStringField
      DisplayLabel = 'Produktbesk.(intern)'
      FieldName = 'INTERNPRODDESC'
      Origin = 'INTERNPRODDESC'
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
    end
    object cdsLORowsLEV_PERIOD_START: TIntegerField
      DisplayLabel = 'Lev.period start'
      FieldName = 'LEV_PERIOD_START'
      Origin = 'LEV_PERIOD_START'
    end
    object cdsLORowsLEV_PERIOD_END: TIntegerField
      DisplayLabel = 'Lev.Period slut'
      FieldName = 'LEV_PERIOD_END'
      Origin = 'LEV_PERIOD_END'
    end
    object cdsLORowsORDERNO: TStringField
      DisplayLabel = 'Ordernr'
      FieldName = 'ORDERNO'
      Origin = 'ORDERNO'
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
      Required = True
    end
    object cdsLORowsProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
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
      Required = True
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
    object cdsLORowsPRODUCTDESCRIPTION: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCTDESCRIPTION'
      Origin = 'PRODUCTDESCRIPTION'
      Size = 100
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
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
      Required = True
    end
    object cdsLORowsLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      Required = True
    end
    object cdsLORowsMATCH: TIntegerField
      FieldName = 'MATCH'
      Origin = '[MATCH]'
      Required = True
    end
    object cdsLORowsPriceListName: TStringField
      DisplayLabel = 'Prislista'
      FieldName = 'PriceListName'
      Origin = 'PriceListName'
      Size = 30
    end
    object cdsLORowsProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cdsLORowsVaruSlag: TIntegerField
      FieldName = 'VaruSlag'
      Origin = 'VaruSlag'
    end
    object cdsLORowsLoadedPkgs: TIntegerField
      FieldName = 'LoadedPkgs'
      Origin = 'LoadedPkgs'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsLORowsPaketstorlek: TStringField
      FieldName = 'Paketstorlek'
      Origin = 'Paketstorlek'
      ProviderFlags = []
      Size = 50
    end
    object cdsLORowsPkgDiff: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PkgDiff'
      Calculated = True
    end
    object cdsLORowsShippingPlanStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
    end
  end
  object sq_GetLO_Records: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'CSH.CustomerNo,'
      'SSP.CustShipPlanDetailObjectNo,'
      'SSP.ShippingPlanNo'#9#9#9'                      AS LO_NUMBER,'
      'CASE'
      'WHEN SSP.ObjectType = 2 THEN OL.PackageCode'
      'ELSE'
      'SSP.PackageCode'
      'END                                           AS PKGCODE,'
      'SSP.ProductNo,'
      'P.ProductDisplayName                          AS INTERNPRODDESC,'
      'SSP.LengthDescription'#9#9#9'                    AS LENGTHDESC,'
      'SSP.NoOfUnits'#9#9#9#9'                          AS NOOFUNITS,'
      'UN.VolumeUnitName'#9#9#9'                        AS VOLUNIT,'
      'SSP.Price'#9#9#9#9'                              AS PRICE,'
      'PU.TemplateUnitName'#9#9#9'                      AS PRICEUNIT,'
      ''
      'SSP.MinActualLengthMM'#9#9#9'                    AS MIN_LENGTH,'
      'SSP.MaxActualLengthMM'#9#9#9'                    AS MAX_LENGTH,'
      ''
      'PG.ActualThicknessMM'#9#9#9'                    AS ACT_THICK,'
      'PG.ActualWidthMM'#9#9#9'                        AS ACT_WIDTH,'
      'PL.ActualLengthMM'#9#9#9'                        AS ACT_LENGTH,'
      'CSD.Reference'#9#9#9#9'                          AS REFERENCE,'
      ''
      'SSP.ProductLengthNo,'
      ''
      'SSP.StartETDYearWeek'#9#9#9'                    AS LEV_PERIOD_START,'
      'SSP.EndETDYearWeek'#9#9#9'                      AS LEV_PERIOD_END,'
      ''
      ''
      'OH.OrderNoText'#9#9#9#9'                        AS ORDERNO,'
      ''
      ''
      'SSP.Reference                                  AS KR_Ref,'
      '-- GS.GradeStamp'#9#9#9#9'                          AS GRADESTAMP,'
      '-- BC.BarCode'#9#9#9#9'                            AS BARCODE,'
      '-- WT.WrapType'#9#9#9#9'                            AS WRAPTYPE,'
      '-- PressT.PressureTreated'#9#9#9'                  AS PRESSURE_TREAT,'
      ''
      'SSP.PcsPerPkg'#9#9#9#9'                          AS PCSPERPKG,'
      'PG.ProductGroupNo                            AS PRODUCTGROUPNO,'
      ''
      
        'OL.OrderLineDescription'#9#9#9'                  AS PRODUCTDESCRIPTIO' +
        'N,'
      'PG.NominalThicknessMM                         AS NOM_THICK,'
      'PG.NominalWidthMM                             AS NOM_WIDTH,'
      'SSP.SupplierShipPlanObjectNo,'
      'PL.ProductLengthGroupNo,'
      'PG.NominalThicknessINCH                       AS INCH_THICK,'
      'PG.NominalWidthINCH                           AS INVCH_WIDTH,'
      'PG.SurfacingNo,'
      'PG.SpeciesNo,'
      'G.GradeNo                                     AS MainGradeNo,'
      ''
      'CASE'
      'WHEN SSP.ObjectType = 2 THEN OL.PackageTypeNo'
      'ELSE'
      'SSP.SequenceNo'
      'END                                           AS PackageTypeNo,'
      'SSP.LoadingLocationNo,'
      'SSP.ShipToInvPointNo,'
      'isNull(OL.OverrideRL, 1) AS OverrideRL,'
      'PG.ProductCategoryNo'
      ''
      'FROM  '#9'dbo.SupplierShippingPlan SSP'
      #9'LEFT OUTER JOIN dbo.CustomerShippingPlanDetails CSD'
      ''
      
        #9'INNER JOIN dbo.CustomerShippingPlanHeader CSH ON CSH.ShippingPl' +
        'anNo = CSD.ShippingPlanNo'
      
        #9'Inner JOIN dbo.OrderLine '#9#9'OL'#9'              ON OL.OrderLineNo'#9#9 +
        '= CSD.OrderLineNo'
      
        #9#9#9#9#9#9#9'                                  AND'#9'OL.OrderNo'#9#9'= CSD.O' +
        'rderNo'
      
        #9'Inner JOIN dbo.Orders '#9#9#9'OH'#9'              ON OH.OrderNo'#9#9'= CSH.' +
        'OrderNo'
      
        #9'INNER JOIN dbo.Users'#9' '#9#9'US'#9'                ON US.UserID '#9#9'= OH.' +
        'ResponsibleSeller'
      
        #9'INNER JOIN dbo.Client '#9#9#9'C'#9'                ON C.ClientNo'#9#9'= CSH' +
        '.CustomerNo'
      
        '                                                ON CSD.CustShipP' +
        'lanDetailObjectNo = SSP.CustShipPlanDetailObjectNo'
      ''
      
        #9'INNER JOIN dbo.Product P                      ON P.ProductNo = ' +
        'SSP.ProductNo'
      
        #9'INNER JOIN dbo.Grade G                        ON G.GradeNo = P.' +
        'GradeNo'
      
        '                                                AND G.LanguageCo' +
        'de = 1'
      ''
      
        #9'INNER JOIN dbo.ProductLength PL               ON PL.ProductLeng' +
        'thNo = SSP.ProductLengthNo'
      
        #9'INNER JOIN dbo.ProductGroup PG                ON PG.ProductGrou' +
        'pNo = P.ProductGroupNo'
      ''
      
        #9'INNER JOIN dbo.UnitName '#9#9'UN'#9'              ON UN.VolumeUnit_No ' +
        #9'= SSP.VolumeUnitNo'
      
        #9'INNER JOIN dbo.PackUnit '#9#9'PU'#9'              ON PU.TemplateUnitNo' +
        ' '#9'= SSP.PriceUnitNo'
      ''
      ''
      'WHERE SSP.ShippingPlanNo = :ShippingPlanNo'
      'AND SSP.SupplierNo = :SupplierNo'
      'AND SSP.CustomerNo = :CustomerNo'
      'AND SSP.LoadingLocationNo = :LoadingLocationNo'
      'AND SSP.ShipToInvPointNo = :ShipToInvPointNo'
      
        'AND ((SSP.ShippingPlanStatus <> 7) and (SSP.ShippingPlanStatus <' +
        '> 8))'
      '')
    Left = 200
    Top = 144
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
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
        Name = 'LOADINGLOCATIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SHIPTOINVPOINTNO'
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
    end
    object sq_GetLO_RecordsLO_NUMBER: TIntegerField
      FieldName = 'LO_NUMBER'
      Origin = 'LO_NUMBER'
    end
    object sq_GetLO_RecordsPKGCODE: TStringField
      FieldName = 'PKGCODE'
      Origin = 'PKGCODE'
      FixedChar = True
    end
    object sq_GetLO_RecordsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sq_GetLO_RecordsINTERNPRODDESC: TStringField
      FieldName = 'INTERNPRODDESC'
      Origin = 'INTERNPRODDESC'
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
      Size = 10
    end
    object sq_GetLO_RecordsPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object sq_GetLO_RecordsPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
      Origin = 'PRICEUNIT'
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
    end
    object sq_GetLO_RecordsREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object sq_GetLO_RecordsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
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
    end
    object sq_GetLO_RecordsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
      Origin = 'NOM_THICK'
    end
    object sq_GetLO_RecordsINVCH_WIDTH: TStringField
      FieldName = 'INVCH_WIDTH'
      Origin = 'INVCH_WIDTH'
    end
    object sq_GetLO_RecordsSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
    end
    object sq_GetLO_RecordsProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
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
    end
    object sq_GetLO_RecordsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object sq_GetLO_RecordsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object sq_GetLO_RecordsShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object sq_GetLO_RecordsPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Origin = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object sq_GetLO_RecordsINCH_THICK: TStringField
      FieldName = 'INCH_THICK'
      Origin = 'INCH_THICK'
    end
    object sq_GetLO_RecordsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
      Origin = 'NOM_WIDTH'
    end
    object sq_GetLO_RecordsOverrideRL: TIntegerField
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
    end
    object sq_GetLO_RecordsProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
  end
  object cds_LoadPackages: TFDQuery
    AfterInsert = cds_LoadPackagesAfterInsert
    BeforePost = cds_LoadPackagesBeforePost
    OnPostError = cds_LoadPackagesPostError
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'Index01'
        Fields = 'PACKAGENO;SupplierCode'
        Options = [soUnique]
      end>
    IndexName = 'Index01'
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
      '          PG.ProductCategoryNo,'
      #9'        LD.OverrideRL,'
      '          LD.OldPackageTypeNo,'
      '          0 AS InvNr,'
      '          ps.PackageSizeName AS Paketstorlek,'
      '          cw.CertShortName AS Certfiering'
      ''
      ''
      'FROM dbo.LoadDetail LD'
      
        ' Left Outer JOIN dbo.PackageType   PT  ON    PT.PackageTypeNo   ' +
        ' = LD.PackageTypeNo'
      
        ' Left Outer JOIN dbo.Product       Pr  ON    Pr.ProductNo       ' +
        ' = Pt.ProductNo'
      
        ' Left Outer JOIN dbo.ProductGroup  PG  ON    PG.ProductGroupNo  ' +
        ' = Pr.ProductGroupNo'
      
        ' Left Outer JOIN dbo.Grade         G   ON    G.GradeNo          ' +
        ' = Pr.GradeNo'
      '        '#9#9#9#9#9'                       AND g.LanguageCode = 1'
      
        ' Left Outer Join dbo.PackageTypeLengths PTL  ON PTL.PackageTypeN' +
        'o  = PT.PackageTypeNo'
      ''
      
        ' Left Outer JOIN dbo.PackageNumber   PN  ON    PN.PackageNo    =' +
        ' LD.PackageNo'
      ' and PN.SupplierCode = LD.SupplierCode'
      
        ' Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Pac' +
        'kage_Size'
      '  and ps.LanguageCode = 1'
      
        ' Left Outer Join dbo.CertificationWood cw on cw.CertNo = pn.Cert' +
        'No'
      ''
      'WHERE      LD.LoadNo = :LoadNo'
      ''
      'ORDER BY   LD.LoadDetailNo DESC')
    Left = 304
    Top = 24
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
    object cds_LoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
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
    object cds_LoadPackagesPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_LoadPackagesNoOfPackages: TIntegerField
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
    object cds_LoadPackagesPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = []
      DisplayFormat = '#########'
    end
    object cds_LoadPackagesM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
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
    object cds_LoadPackagesProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = []
    end
    object cds_LoadPackagesOverrideRL: TIntegerField
      DisplayLabel = 'Till'#229't alla l'#228'ngder'
      FieldName = 'OverrideRL'
      Origin = 'OverrideRL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesInvNr: TIntegerField
      FieldName = 'InvNr'
      Origin = 'InvNr'
      ProviderFlags = []
    end
    object cds_LoadPackagesOldPackageTypeNo: TIntegerField
      FieldName = 'OldPackageTypeNo'
      Origin = 'OldPackageTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoadPackagesM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
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
      FieldName = 'KVM'
      Origin = 'KVM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LoadPackagesPaketstorlek: TStringField
      FieldName = 'Paketstorlek'
      Origin = 'Paketstorlek'
      ProviderFlags = []
      Size = 50
    end
    object cds_LoadPackagesCertfiering: TStringField
      FieldName = 'Certfiering'
      Origin = 'Certfiering'
      ProviderFlags = []
      Size = 5
    end
  end
  object cds_LO_LookUp: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_LO_LookUpIndex1'
        Fields = 'ShippingPlanNo'
      end>
    IndexName = 'cds_LO_LookUpIndex1'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'SSP.ShippingPlanStatus,'
      '0                         AS SHIPPING,'
      ''
      'SSP.ShippingPlanNo,'
      'SSP.CustomerNo,'
      'C.ClientName              AS CUSTOMER,'
      ''
      'OH.OrderNoText'#9#9#9#9#9'  AS ORDERNO,'
      'CASE'
      'WHEN OH.OrderType = 1 then '#39'PURCHASE'#39
      'WHEN OH.OrderType = 0 then '#39'SALES'#39
      'ELSE '#39#39
      'END AS ORDERTYPE,'
      ''
      'SSP.SupplierNo,'
      'Supp.ClientName           AS SUPPLIER,'
      'Cust.ClientName           AS LOCAL_CUST,'
      'IName.CityName            AS LoadingLocation,'
      'STo.CityName              AS SHIP_TO,'
      'SSP.OBJECTTYPE,'
      'CSH.CustomerNo            AS AVROP_CUSTOMERNO,'
      'SSP.LoadingLocationNo,'
      
        'SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS' +
        ' PIPNo'
      ''
      'FROM dbo.SupplierShippingPlan SSP'
      
        'Left Outer Join dbo.PhysicalInventoryPoint PIP'#9#9'ON PIP.PhyInvPoi' +
        'ntNameNo = SSP.LoadingLocationNo'
      'AND PIP.OwnerNo = SSP.SupplierNo'
      ''
      ''
      'Inner Join dbo.Client'#9#9'Supp '#9'ON  '#9'Supp.ClientNo'#9'= SSP.SupplierNo'
      'Inner Join dbo.Client'#9#9'Cust '#9'ON  '#9'Cust.ClientNo'#9'= SSP.CustomerNo'
      ''
      
        'left outer JOIN dbo.Client_LoadingLocation CLL ON'#9'CLL.PhyInvPoin' +
        'tNameNo = SSP.LoadingLocationNo'
      
        '                                              AND CLL.ClientNo  ' +
        '        = SSP.SupplierNo'
      
        'Left outer Join dbo.City STo'#9#9#9'ON'#9'STo.CityNo = SSP.ShipToInvPoin' +
        'tNo'
      
        'Left Outer JOIN dbo.City IName'#9#9#9'ON'#9'IName.CityNo = SSP.LoadingLo' +
        'cationNo'
      ''
      'Left Outer Join dbo.CustomerShippingPlanHeader  CSH'
      'Inner Join dbo.Client'#9#9'C '#9'ON  '#9'C.ClientNo'#9'= CSH.CustomerNo'
      'Inner JOIN dbo.Orders    OH        ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      '                                  AND OH.OrderType = 0'
      
        '                          ON CSH.ShippingPlanNo = SSP.ShippingPl' +
        'anNo'
      '                          AND CSH.ShippingPlanStatus = 1'
      ''
      'WHERE'
      'SSP.ShippingPlanNo = -1'
      ''
      'AND ((SSP.ShippingPlanStatus > 0'
      'AND SSP.ShippingPlanStatus < 4'
      'AND SSP.ShippingPlanStatus <> 2)'
      'OR SSP.ShippingPlanStatus = 6)'
      ''
      ''
      '-- AND SSP.ObjectType = 2'
      ''
      ''
      'Order by SSP.ShippingPlanStatus, SSP.ShippingPlanNo')
    Left = 456
    Top = 25
    object cds_LO_LookUpShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cds_LO_LookUpCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_LO_LookUpCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 80
    end
    object cds_LO_LookUpORDERNO: TStringField
      FieldName = 'ORDERNO'
      Origin = 'ORDERNO'
    end
    object cds_LO_LookUpORDERTYPE: TStringField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      Size = 8
    end
    object cds_LO_LookUpSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_LO_LookUpSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 80
    end
    object cds_LO_LookUpOBJECTTYPE: TIntegerField
      FieldName = 'OBJECTTYPE'
      Origin = 'OBJECTTYPE'
    end
    object cds_LO_LookUpAVROP_CUSTOMERNO: TIntegerField
      FieldName = 'AVROP_CUSTOMERNO'
      Origin = 'AVROP_CUSTOMERNO'
    end
    object cds_LO_LookUpLoadingLocation: TStringField
      FieldName = 'LoadingLocation'
      Origin = 'LoadingLocation'
      Size = 50
    end
    object cds_LO_LookUpShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object cds_LO_LookUpSHIP_TO: TStringField
      FieldName = 'SHIP_TO'
      Origin = 'SHIP_TO'
      Size = 50
    end
    object cds_LO_LookUpLOCAL_CUST: TStringField
      FieldName = 'LOCAL_CUST'
      Origin = 'LOCAL_CUST'
      Size = 80
    end
    object cds_LO_LookUpSHIPPING: TIntegerField
      FieldName = 'SHIPPING'
      Origin = 'SHIPPING'
    end
    object cds_LO_LookUpLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_LO_LookUpLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_LO_LookUpPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
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
      'AND    PI.OwnerNo   = :InvOwner'
      'AND PI.PhysicalInventoryPointNo = :PIPNo'
      '')
    Left = 600
    Top = 16
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
    object cdsPkgsByInvOwnerPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPkgsByInvOwnerSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsPkgsByInvOwnerSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cdsPkgsByInvOwnerLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ReadOnly = True
      Size = 255
    end
    object cdsPkgsByInvOwnerProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cdsPkgsByInvOwnerProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object cdsPkgsByInvOwnerNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      Origin = 'NoOfLengths'
      ReadOnly = True
    end
    object cdsPkgsByInvOwnerProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ReadOnly = True
    end
  end
  object sq_CheckLoadNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select LoadNo'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    Left = 40
    Top = 400
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
      'Bk.ShippingPlanNo = :ShippingPlanNo'
      ''
      '')
    Left = 40
    Top = 448
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
    Left = 40
    Top = 504
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
      'Order by pn.datecreated'
      ''
      '')
    Left = 128
    Top = 424
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
      'PG.ProductCategoryNo'
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
      ' '
      ' '
      '')
    Left = 304
    Top = 456
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
  end
  object sq_UpdateLSP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.LoadShippingPlan'
      'Set LoadingLocationNo = SSP.LoadingLocationNo,'
      'ShipToInvPointNo = SSP.ShipToInvPointNo'
      'FROM'
      'dbo.LoadShippingPlan'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.ShippingPlanNo = ' +
        'dbo.LoadShippingPlan.ShippingPlanNo'
      'WHERE'
      'dbo.LoadShippingPlan.ShippingPlanNo = :ShippingPlanNo')
    Left = 456
    Top = 424
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_UpdateLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.Loads'
      'Set CustomerNo = SSP.CustomerNo,'
      'SupplierNo = SSP.SupplierNo,'
      'OriginalSupplierNo = SSP.SupplierNo'
      'FROM'
      'dbo.LoadShippingPlan'
      
        'Inner Join dbo.Loads on dbo.Loads.LoadNo = dbo.LoadShippingPlan.' +
        'LoadNo'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.ShippingPlanNo = ' +
        'dbo.LoadShippingPlan.ShippingPlanNo'
      'WHERE'
      'dbo.LoadShippingPlan.LoadNo = :LoadNo'
      '')
    Left = 456
    Top = 480
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_OkToDeleteLSP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select LD.LoadDetailNo from dbo.LoadDetail LD'
      'WHERE LD.LoadNo = :LoadNo'
      'AND LD.ShippingPlanNo = :ShippingPlanNo')
    Left = 568
    Top = 416
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
    object sq_OkToDeleteLSPLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      Origin = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
  object sp_creIntLO: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_creIntLO'
    Left = 728
    Top = 240
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
        Name = '@CustomerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@CreatedUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SalesRegionNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@ShippingPlanNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_UpdIntLO: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_UpdIntLO'
    Left = 728
    Top = 288
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
  object sp_RemPkgFromLoad_II: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_remLoadPkg_II'
    Left = 728
    Top = 344
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
      end
      item
        Position = 11
        Name = '@OldPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_chgManLoadPkgs: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_chgManLoadPkgs'
    Left = 728
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
  object mtLoadProp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'PackageNo;SupplierCode'
    IndexName = 'mtPkgNosIndex1'
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
    Left = 296
    Top = 584
    object mtLoadPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtLoadPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtLoadPropPIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = dm_UserProps.cds_PIP2
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtLoadPropLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = dm_UserProps.cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
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
  object ds_LIP2: TDataSource
    DataSet = cds_LIP2
    Left = 128
    Top = 328
  end
  object ds_PIP2: TDataSource
    DataSet = cds_PIP2
    Left = 48
    Top = 328
  end
  object cds_PIP2: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS PIPNAME'
      'FROM'
      'dbo.PHYSICALINVENTORYPOINT PH'
      'Inner Join dbo.CITY CY on CY.CITYNO = PH.PhyInvPointNameNo'
      'Inner Join dbo.ClientRole CR on CR.ClientNo = PH.OwnerNo'
      ''
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      ''
      'Order By  CY.CITYNAME'
      '')
    Left = 48
    Top = 272
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
    Top = 272
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
  object sq_IsLoadAvraknad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT PL.PaymentNo,'
      'PL.LoadNo'
      'FROM'
      'dbo.LastAvrDtl PL'
      'WHERE'
      'PL.LoadNo =:LoadNo')
    Left = 464
    Top = 592
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsLoadAvraknadPaymentNo: TIntegerField
      FieldName = 'PaymentNo'
      Origin = 'PaymentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_IsLoadAvraknadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_PkgExistInInventory: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT PN.PackageNo'
      'FROM dbo.PackageNumber PN'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = PN.LogicalInventoryPointNo'
      'WHERE PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      'AND PN.Status = 1')
    Left = 592
    Top = 592
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
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgExistInInventoryPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
