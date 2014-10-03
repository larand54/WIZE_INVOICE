object dmLoadEntry: TdmLoadEntry
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 242
  Top = 108
  Height = 613
  Width = 974
  object sq_LoadHead: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 40
    Top = 16
    object sq_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadFS: TStringField
      FieldName = 'FS'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_LoadHeadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_LoadHead: TDataSetProvider
    UpdateMode = upWhereChanged
    Left = 40
    Top = 72
  end
  object cds_LoadHead: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LoadHead'
    OnReconcileError = cds_LoadHeadReconcileError
    Left = 40
    Top = 128
    object cds_LoadHeadLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_LoadHeadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cds_LoadHeadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
    end
    object cds_LoadHeadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      OnChange = cds_LoadHeadSenderLoadStatusChange
    end
    object cds_LoadHeadLoadID: TStringField
      FieldName = 'LoadID'
      Size = 50
    end
    object cds_LoadHeadMsgToShipper: TMemoField
      FieldName = 'MsgToShipper'
      BlobType = ftMemo
    end
    object cds_LoadHeadInternalNote: TMemoField
      FieldName = 'InternalNote'
      BlobType = ftMemo
    end
    object cds_LoadHeadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
    end
    object cds_LoadHeadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
    end
    object cds_LoadHeadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
    end
    object cds_LoadHeadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
    end
    object cds_LoadHeadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_LoadHeadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_LoadHeadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_LoadHeadFS: TStringField
      FieldName = 'FS'
    end
    object cds_LoadHeadOriginalSupplierNo: TIntegerField
      FieldName = 'OriginalSupplierNo'
    end
    object cds_LoadHeadCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cds_LoadHeadNotering: TMemoField
      FieldName = 'Notering'
      BlobType = ftMemo
    end
    object cds_LoadHeadLoadOK: TIntegerField
      FieldName = 'LoadOK'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_LoadHead: TDataSource
    Left = 40
    Top = 184
  end
  object sq_Show_LoadShippingPlan: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'LS.LoadNo,'
      'CSH.CustomerNo,'
      'LS.ShippingPlanNo,'
      'C.ClientName          AS CUSTOMER,'
      ''
      'SC.ClientName'#9#9#9#9#9'AS SHIPPER,'
      'isNull(Bk.PreliminaryRequestedPeriod,'#39' '#39')'#9'AS READYDATE,'
      'isNull(Cr.CarrierName,'#39' '#39')'#9#9#9'AS VESSEL,'
      'Vg.ETD'#9#9#9#9#9#9'AS ETD,'
      'Vg.ETA'#9#9#9#9#9#9'AS ETA,'
      ''
      'Bk.SupplierReference'#9#9#9#9'AS SHIPPER_REF,'
      'Bk.ShippingCompanyBookingID'#9#9#9'AS SHIPPERID,'
      ''
      ''
      'Bk.ShippersShipDate'#9#9#9#9'AS SHIPPERS_SHIPDATE,'
      'Bk.ShippersShipTime'#9#9#9#9'AS SHIPPERS_SHIPTIME,'
      'OH.OrderNoText'#9#9#9#9#9'AS ORDERNO,'
      'CASE WHEN OH.OrderType = 0 then '#39'SALES'#39
      'ELSE '#39'PURCHASE'#39
      'END AS ORDERTYPE,'
      'LS.CreatedUser,'
      'LS.ModifiedUser,'
      'LS.DateCreated,'
      'OH.SalesRegionNo'
      ''
      'FROM dbo.LoadShippingPlan LS'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSH '#9'ON CSH.ShippingPl' +
        'anNo = LS.ShippingPlanNo'
      #9'Inner Join dbo.Client'#9#9'C '#9'ON  '#9'C.ClientNo'#9'= CSH.CustomerNo'
      ''
      ''
      #9'Inner JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      ''
      '       '#9'LEFT OUTER JOIN dbo.Booking'#9#9'Bk'
      ''
      ''
      #9'Left Outer JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'Left Outer JOIN dbo.Client'#9#9'SC '#9'ON  '#9'Bk.ShippingCompanyNo '#9'= SC' +
        '.ClientNo'
      
        #9'Left outer JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      #9#9#9#9#9#9#9'ON  '#9'Bk.ShippingPlanNo'#9'= CSH.ShippingPlanNo'
      ''
      'WHERE'
      ''
      'LS.LoadNo = :LoadNo'
      ''
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 64
    Top = 256
    object sq_Show_LoadShippingPlanLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object sq_Show_LoadShippingPlanCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_Show_LoadShippingPlanShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object sq_Show_LoadShippingPlanCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object sq_Show_LoadShippingPlanSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object sq_Show_LoadShippingPlanREADYDATE: TStringField
      FieldName = 'READYDATE'
      Size = 30
    end
    object sq_Show_LoadShippingPlanVESSEL: TStringField
      FieldName = 'VESSEL'
      Size = 50
    end
    object sq_Show_LoadShippingPlanETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object sq_Show_LoadShippingPlanETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object sq_Show_LoadShippingPlanSHIPPER_REF: TStringField
      FieldName = 'SHIPPER_REF'
      Size = 50
    end
    object sq_Show_LoadShippingPlanSHIPPERID: TStringField
      FieldName = 'SHIPPERID'
    end
    object sq_Show_LoadShippingPlanSHIPPERS_SHIPDATE: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPDATE'
    end
    object sq_Show_LoadShippingPlanSHIPPERS_SHIPTIME: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPTIME'
    end
    object sq_Show_LoadShippingPlanORDERNO: TStringField
      FieldName = 'ORDERNO'
    end
    object sq_Show_LoadShippingPlanORDERTYPE: TStringField
      FieldName = 'ORDERTYPE'
      Size = 8
    end
    object sq_Show_LoadShippingPlanCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_Show_LoadShippingPlanModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object sq_Show_LoadShippingPlanDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_Show_LoadShippingPlanSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
  end
  object dsp_Show_LoadShippingPlan: TDataSetProvider
    Left = 64
    Top = 312
  end
  object cds_Show_LoadShippingPlan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Show_LoadShippingPlan'
    Left = 64
    Top = 368
    object cds_Show_LoadShippingPlanLO: TIntegerField
      FieldName = 'LO'
    end
    object cds_Show_LoadShippingPlanSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object cds_Show_LoadShippingPlanREADYDATE: TStringField
      FieldName = 'READYDATE'
      Size = 30
    end
    object cds_Show_LoadShippingPlanVESSEL: TStringField
      FieldName = 'VESSEL'
      Size = 50
    end
    object cds_Show_LoadShippingPlanETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object cds_Show_LoadShippingPlanETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object cds_Show_LoadShippingPlanSHIPPER_REF: TStringField
      FieldName = 'SHIPPER_REF'
      Size = 50
    end
    object cds_Show_LoadShippingPlanSHIPPERID: TStringField
      FieldName = 'SHIPPERID'
    end
    object cds_Show_LoadShippingPlanSHIPPERS_SHIPDATE: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPDATE'
    end
    object cds_Show_LoadShippingPlanSHIPPERS_SHIPTIME: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPTIME'
    end
    object cds_Show_LoadShippingPlanORDERNO: TStringField
      FieldName = 'ORDERNO'
    end
    object cds_Show_LoadShippingPlanORDERTYPE: TStringField
      FieldName = 'ORDERTYPE'
      Size = 8
    end
  end
  object ds_mtLoadShippingPlan: TDataSource
    OnDataChange = ds_mtLoadShippingPlanDataChange
    Left = 64
    Top = 480
  end
  object sq_GetLO_Records: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ''
      'SELECT'
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
      'PressT.PressureTreated'#9#9#9'            AS PRESSURE_TREAT,'
      'Ptag.PackageLogLayoutName'#9#9'            AS PKG_TAG,'
      'OL.PcsPerPkg'#9#9#9#9'                    AS PCSPERPKG,'
      'CSD.ProductGroupNo                      AS PRODUCTGROUPNO,'
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
      'OL.PackageTypeNo                        AS PackageTypeNo'
      ''
      ''
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
        'tGroupNo = OL.ProductGroupNo'
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
      
        #9'LEFT OUTER JOIN dbo.PressureTreated'#9#9'PressT'#9'  ON'#9'PressT.Pressur' +
        'eTreatedNo = PIN.PressureTreated'
      
        #9'LEFT OUTER JOIN dbo.PackageLogLayout'#9#9'Ptag'#9'  ON'#9'Ptag.PackageLog' +
        'LayoutNo'#9'= PIN.PackageTagLayout'
      
        #9#9#9#9#9#9#9'                                    ON'#9'PIN.ProdInstruNo'#9'=' +
        ' OL.ProdInstructNo'
      ''
      'WHERE CSH.ShippingPlanNo = :ShippingPlanNo'
      'AND CSH.CustomerNo = :CustomerNo'
      ' '
      ' '
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 128
    Top = 16
    object sq_GetLO_RecordsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object sq_GetLO_RecordsCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
    object sq_GetLO_RecordsLO_NUMBER: TIntegerField
      FieldName = 'LO_NUMBER'
    end
    object sq_GetLO_RecordsPKGCODE: TStringField
      FieldName = 'PKGCODE'
    end
    object sq_GetLO_RecordsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_GetLO_RecordsINTERNPRODDESC: TStringField
      FieldName = 'INTERNPRODDESC'
      Size = 100
    end
    object sq_GetLO_RecordsLENGTHDESC: TStringField
      FieldName = 'LENGTHDESC'
      Size = 100
    end
    object sq_GetLO_RecordsNOOFUNITS: TFloatField
      FieldName = 'NOOFUNITS'
    end
    object sq_GetLO_RecordsVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Size = 10
    end
    object sq_GetLO_RecordsPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object sq_GetLO_RecordsPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
    end
    object sq_GetLO_RecordsMIN_LENGTH: TFloatField
      FieldName = 'MIN_LENGTH'
    end
    object sq_GetLO_RecordsMAX_LENGTH: TFloatField
      FieldName = 'MAX_LENGTH'
    end
    object sq_GetLO_RecordsACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
    end
    object sq_GetLO_RecordsACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
    end
    object sq_GetLO_RecordsACT_LENGTH: TFloatField
      FieldName = 'ACT_LENGTH'
    end
    object sq_GetLO_RecordsREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Size = 30
    end
    object sq_GetLO_RecordsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_GetLO_RecordsLEV_PERIOD_START: TIntegerField
      FieldName = 'LEV_PERIOD_START'
    end
    object sq_GetLO_RecordsLEV_PERIOD_END: TIntegerField
      FieldName = 'LEV_PERIOD_END'
    end
    object sq_GetLO_RecordsORDERNO: TStringField
      FieldName = 'ORDERNO'
    end
    object sq_GetLO_RecordsFOHC: TFloatField
      FieldName = 'FOHC'
    end
    object sq_GetLO_RecordsMINIBUNDLEHEIGHT: TIntegerField
      FieldName = 'MINIBUNDLEHEIGHT'
    end
    object sq_GetLO_RecordsMINIBUNDLEWIDTH: TIntegerField
      FieldName = 'MINIBUNDLEWIDTH'
    end
    object sq_GetLO_RecordsNOOFSTICKS: TIntegerField
      FieldName = 'NOOFSTICKS'
    end
    object sq_GetLO_RecordsNOOFSTRAPS: TIntegerField
      FieldName = 'NOOFSTRAPS'
    end
    object sq_GetLO_RecordsCORNERPROT: TStringField
      FieldName = 'CORNERPROT'
    end
    object sq_GetLO_RecordsPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
    end
    object sq_GetLO_RecordsPKGHEIGHT: TIntegerField
      FieldName = 'PKGHEIGHT'
    end
    object sq_GetLO_RecordsPET: TIntegerField
      FieldName = 'PET'
    end
    object sq_GetLO_RecordsMINIBUNDLE: TIntegerField
      FieldName = 'MINIBUNDLE'
    end
    object sq_GetLO_RecordsSTRESSGRADE: TIntegerField
      FieldName = 'STRESSGRADE'
    end
    object sq_GetLO_RecordsFJ: TIntegerField
      FieldName = 'FJ'
    end
    object sq_GetLO_RecordsPKGCUT: TIntegerField
      FieldName = 'PKGCUT'
    end
    object sq_GetLO_RecordsPET_TOL: TStringField
      FieldName = 'PET_TOL'
      Size = 10
    end
    object sq_GetLO_RecordsPKGTYPE: TIntegerField
      FieldName = 'PKGTYPE'
    end
    object sq_GetLO_RecordsNOTE: TMemoField
      FieldName = 'NOTE'
      BlobType = ftMemo
    end
    object sq_GetLO_RecordsSHRINKWRAP: TIntegerField
      FieldName = 'SHRINKWRAP'
    end
    object sq_GetLO_RecordsPCSPERMINIBUNDLE: TIntegerField
      FieldName = 'PCSPERMINIBUNDLE'
    end
    object sq_GetLO_RecordsKR_Ref: TStringField
      FieldName = 'KR_Ref'
      Size = 50
    end
    object sq_GetLO_RecordsGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
    end
    object sq_GetLO_RecordsBARCODE: TStringField
      FieldName = 'BARCODE'
    end
    object sq_GetLO_RecordsWRAPTYPE: TStringField
      FieldName = 'WRAPTYPE'
      Size = 15
    end
    object sq_GetLO_RecordsPRESSURE_TREAT: TStringField
      FieldName = 'PRESSURE_TREAT'
    end
    object sq_GetLO_RecordsPKG_TAG: TStringField
      FieldName = 'PKG_TAG'
    end
    object sq_GetLO_RecordsPCSPERPKG: TIntegerField
      FieldName = 'PCSPERPKG'
    end
    object sq_GetLO_RecordsPRODUCTGROUPNO: TIntegerField
      FieldName = 'PRODUCTGROUPNO'
    end
    object sq_GetLO_RecordsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object sq_GetLO_RecordsBarcodeID: TIntegerField
      FieldName = 'BarcodeID'
    end
    object sq_GetLO_RecordsWrapTypeNo: TIntegerField
      FieldName = 'WrapTypeNo'
    end
    object sq_GetLO_RecordsShrinkWrapNo: TIntegerField
      FieldName = 'ShrinkWrapNo'
    end
    object sq_GetLO_RecordsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object sq_GetLO_RecordsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object sq_GetLO_RecordsProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
    end
    object sq_GetLO_RecordsMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
    end
    object sq_GetLO_RecordsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object sq_GetLO_RecordsSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object sq_GetLO_RecordsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object sq_GetLO_RecordsPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object sq_GetLO_RecordsINCH_THICK: TStringField
      FieldName = 'INCH_THICK'
    end
    object sq_GetLO_RecordsINVCH_WIDTH: TStringField
      FieldName = 'INVCH_WIDTH'
    end
  end
  object mtLO_Records: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'CustShipPlanDetailObjectNo'
        DataType = ftInteger
      end
      item
        Name = 'LO_NUMBER'
        DataType = ftInteger
      end
      item
        Name = 'PKGCODE'
        DataType = ftString
        Size = 10
      end
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
        Name = 'LENGTHDESC'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NOOFUNITS'
        DataType = ftFloat
      end
      item
        Name = 'VOLUNIT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRICEUNIT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MIN_LENGTH'
        DataType = ftFloat
      end
      item
        Name = 'MAX_LENGTH'
        DataType = ftFloat
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
        Name = 'ACT_LENGTH'
        DataType = ftFloat
      end
      item
        Name = 'REFERENCE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'LEV_PERIOD_START'
        DataType = ftInteger
      end
      item
        Name = 'LEV_PERIOD_END'
        DataType = ftInteger
      end
      item
        Name = 'ORDERNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FOHC'
        DataType = ftFloat
      end
      item
        Name = 'MINIBUNDLEHEIGHT'
        DataType = ftInteger
      end
      item
        Name = 'MINIBUNDLEWIDTH'
        DataType = ftInteger
      end
      item
        Name = 'NOOFSTICKS'
        DataType = ftInteger
      end
      item
        Name = 'NOOFSTRAPS'
        DataType = ftInteger
      end
      item
        Name = 'CORNERPROT'
        DataType = ftString
        Size = 20
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
        Name = 'PET'
        DataType = ftInteger
      end
      item
        Name = 'MINIBUNDLE'
        DataType = ftInteger
      end
      item
        Name = 'STRESSGRADE'
        DataType = ftInteger
      end
      item
        Name = 'FJ'
        DataType = ftInteger
      end
      item
        Name = 'PKGCUT'
        DataType = ftInteger
      end
      item
        Name = 'PET_TOL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PKGTYPE'
        DataType = ftInteger
      end
      item
        Name = 'NOTE'
        DataType = ftMemo
      end
      item
        Name = 'SHRINKWRAP'
        DataType = ftInteger
      end
      item
        Name = 'PCSPERMINIBUNDLE'
        DataType = ftInteger
      end
      item
        Name = 'ExtraID'
        DataType = ftString
        Size = 20
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
        Name = 'PRESSURE_TREAT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PKG_TAG'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PCSPERPKG'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
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
        Name = 'MATCH'
        DataType = ftBoolean
      end>
    IndexFieldNames = 'CustShipPlanDetailObjectNo'
    IndexName = 'mtLO_RecordsIndex1'
    IndexDefs = <
      item
        Name = 'mtLO_RecordsIndex1'
        Fields = 'CustShipPlanDetailObjectNo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'mtLO_RecordsIndex2'
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
    BeforeDelete = mtLO_RecordsBeforeDelete
    Left = 128
    Top = 72
    object mtLO_RecordsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtLO_RecordsCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
    object mtLO_RecordsLO_NUMBER: TIntegerField
      FieldName = 'LO_NUMBER'
    end
    object mtLO_RecordsPKGCODE: TStringField
      FieldName = 'PKGCODE'
      Size = 40
    end
    object mtLO_RecordsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLO_RecordsPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object mtLO_RecordsLENGTHDESC: TStringField
      FieldName = 'LENGTHDESC'
      Size = 100
    end
    object mtLO_RecordsNOOFUNITS: TFloatField
      FieldName = 'NOOFUNITS'
    end
    object mtLO_RecordsVOLUNIT: TStringField
      FieldName = 'VOLUNIT'
      Size = 10
    end
    object mtLO_RecordsPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object mtLO_RecordsPRICEUNIT: TStringField
      FieldName = 'PRICEUNIT'
    end
    object mtLO_RecordsMIN_LENGTH: TFloatField
      FieldName = 'MIN_LENGTH'
    end
    object mtLO_RecordsMAX_LENGTH: TFloatField
      FieldName = 'MAX_LENGTH'
    end
    object mtLO_RecordsACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
    end
    object mtLO_RecordsACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
    end
    object mtLO_RecordsACT_LENGTH: TFloatField
      FieldName = 'ACT_LENGTH'
    end
    object mtLO_RecordsREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Size = 30
    end
    object mtLO_RecordsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtLO_RecordsLEV_PERIOD_START: TIntegerField
      FieldName = 'LEV_PERIOD_START'
    end
    object mtLO_RecordsLEV_PERIOD_END: TIntegerField
      FieldName = 'LEV_PERIOD_END'
    end
    object mtLO_RecordsORDERNO: TStringField
      FieldName = 'ORDERNO'
    end
    object mtLO_RecordsFOHC: TFloatField
      FieldName = 'FOHC'
    end
    object mtLO_RecordsMINIBUNDLEHEIGHT: TIntegerField
      FieldName = 'MINIBUNDLEHEIGHT'
    end
    object mtLO_RecordsMINIBUNDLEWIDTH: TIntegerField
      FieldName = 'MINIBUNDLEWIDTH'
    end
    object mtLO_RecordsNOOFSTICKS: TIntegerField
      FieldName = 'NOOFSTICKS'
    end
    object mtLO_RecordsNOOFSTRAPS: TIntegerField
      FieldName = 'NOOFSTRAPS'
    end
    object mtLO_RecordsCORNERPROT: TStringField
      FieldName = 'CORNERPROT'
    end
    object mtLO_RecordsPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
    end
    object mtLO_RecordsPKGHEIGHT: TIntegerField
      FieldName = 'PKGHEIGHT'
    end
    object mtLO_RecordsPET: TIntegerField
      FieldName = 'PET'
    end
    object mtLO_RecordsMINIBUNDLE: TIntegerField
      FieldName = 'MINIBUNDLE'
    end
    object mtLO_RecordsSTRESSGRADE: TIntegerField
      FieldName = 'STRESSGRADE'
    end
    object mtLO_RecordsFJ: TIntegerField
      FieldName = 'FJ'
    end
    object mtLO_RecordsPKGCUT: TIntegerField
      FieldName = 'PKGCUT'
    end
    object mtLO_RecordsPET_TOL: TStringField
      FieldName = 'PET_TOL'
      Size = 10
    end
    object mtLO_RecordsPKGTYPE: TIntegerField
      FieldName = 'PKGTYPE'
    end
    object mtLO_RecordsNOTE: TMemoField
      FieldName = 'NOTE'
      BlobType = ftMemo
    end
    object mtLO_RecordsSHRINKWRAP: TIntegerField
      FieldName = 'SHRINKWRAP'
    end
    object mtLO_RecordsPCSPERMINIBUNDLE: TIntegerField
      FieldName = 'PCSPERMINIBUNDLE'
    end
    object mtLO_RecordsExtraID: TStringField
      DisplayLabel = 'KR referens'
      FieldName = 'ExtraID'
      Size = 50
    end
    object mtLO_RecordsGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
    end
    object mtLO_RecordsBARCODE: TStringField
      FieldName = 'BARCODE'
    end
    object mtLO_RecordsWRAPTYPE: TStringField
      FieldName = 'WRAPTYPE'
      Size = 15
    end
    object mtLO_RecordsPRESSURE_TREAT: TStringField
      FieldName = 'PRESSURE_TREAT'
    end
    object mtLO_RecordsPKG_TAG: TStringField
      FieldName = 'PKG_TAG'
    end
    object mtLO_RecordsPCSPERPKG: TIntegerField
      FieldName = 'PCSPERPKG'
    end
    object mtLO_RecordsPRODUCTGROUPNO: TIntegerField
      FieldName = 'PRODUCTGROUPNO'
    end
    object mtLO_RecordsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtLO_RecordsBarcodeID: TIntegerField
      FieldName = 'BarcodeID'
    end
    object mtLO_RecordsWrapTypeNo: TIntegerField
      FieldName = 'WrapTypeNo'
    end
    object mtLO_RecordsShrinkWrapNo: TIntegerField
      FieldName = 'ShrinkWrapNo'
    end
    object mtLO_RecordsNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object mtLO_RecordsNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object mtLO_RecordsProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
    end
    object mtLO_RecordsMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
    end
    object mtLO_RecordsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtLO_RecordsSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object mtLO_RecordsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object mtLO_RecordsMATCH: TBooleanField
      FieldName = 'MATCH'
    end
    object mtLO_RecordsINCH_THICK: TFloatField
      FieldName = 'INCH_THICK'
    end
    object mtLO_RecordsINCH_WIDTH: TFloatField
      FieldName = 'INCH_WIDTH'
    end
  end
  object ds_mtLO_Records: TDataSource
    Left = 128
    Top = 120
  end
  object sq_LoadPackages: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      
        '            LD.ShippingPlanNo                                   ' +
        '        AS LONo,'
      
        '            PR.ProductDisplayName                               ' +
        '        AS PRODUCT,'
      '           LD.LoadDetailNo,'
      
        '           LD.PackageNo'#9#9'                                       ' +
        '       AS PACKAGENO,'
      
        '           LD.NoOfPackages'#9'                                     ' +
        '       AS NOOFPKG,'
      
        '           LD.PackageTypeNo'#9'                                    ' +
        '        AS PACKAGETYPENO,'
      
        '           LD.SupplierCode'#9'                                     ' +
        '       AS SUPP_CODE,'
      
        '           LD.PackageOK'#9#9'                                       ' +
        '       AS PKG_OK,'
      
        '           LD.ProblemPackageLog'#9'                                ' +
        '        AS PKGLOG,'
      '           LD.CreatedUser,'
      '           LD.ModifiedUser,'
      '           LD.DateCreated,'
      '           PT.OnSticks,'
      
        '           PT.Totalm3Actual                                     ' +
        '        AS M3_NET,'
      
        '           PT.TotalNoOfPieces                                   ' +
        '        AS PCS,'
      
        #9'         PT.Totalm3Nominal                                     ' +
        '       AS M3_NOM,'
      
        '           PT.TotalMFBMNominal                                  ' +
        '        AS MFBM,'
      
        #9'         PT.TotalSQMofActualWidth'#9'                             ' +
        '       AS KVM,'
      
        #9'         PT.TotalLinealMeterActualLength                       ' +
        '       AS LOPM,'
      '           PR.ProductNo,'
      '           LD.DefaultCustShipObjectNo,'
      
        '           PTL.PcsPerLength                                     ' +
        '        AS PCS_PER_LENGTH,'
      '          (Select Count(*) from'
      '          dbo.PackageTypeDetail  PTD'
      '          WHERE'
      
        '          PTD.PackageTypeNo = LD.PackageTypeNo)                 ' +
        '        AS NoOfLengths,'
      '          (Select TOP 1 PTD.ProductLengthNo from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          WHERE PTD.PackageTypeNo = LD.PackageTypeNo)           ' +
        '        AS ProductLengthNo,'
      ''
      '          (Select TOP 1 PL.ActualLengthMM from'
      '          dbo.PackageTypeDetail  PTD'
      
        '          Inner Join dbo.ProductLength PL ON PL.ProductLengthNo ' +
        '= PTD.ProductLengthNo'
      
        '          WHERE   PTD.PackageTypeNo = LD.PackageTypeNo)         ' +
        '        AS ALMM,'
      ''
      '--          pc.packagecodeno,'
      '          PG.ActualThicknessMM,'
      '          PG.ActualWidthMM,'
      '          PG.SurfacingNo,'
      '          PG.SpeciesNo,'
      
        '          G.GradeNo                                             ' +
        '        AS MainGradeNo,'
      '          LD.OverrideMatch,'
      '          LD.LIPNo'
      ''
      ''
      'FROM       dbo.LoadDetail              LD'
      ''
      
        '        INNER JOIN dbo.PackageType    PT ON PT.PackageTypeNo    ' +
        '= LD.PackageTypeNo'
      
        '        INNER JOIN dbo.Product        Pr ON Pr.ProductNo        ' +
        '= Pt.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup   PG ON PG.ProductGroupNo   ' +
        '= Pr.ProductGroupNo'
      
        '        INNER JOIN dbo.Grade          G  ON G.GradeNo           ' +
        '= Pr.GradeNo'
      '       '#9#9#9#9#9'                        AND g.LanguageCode      = 1'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No  = PT.PackageTypeNo'
      ''
      'WHERE      LD.LoadNo = :LoadNo'
      ''
      'ORDER BY   LD.LoadDetailNo DESC'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 232
    Top = 16
    object sq_LoadPackagesLONo: TIntegerField
      FieldName = 'LONo'
    end
    object sq_LoadPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_LoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object sq_LoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_LoadPackagesNOOFPKG: TIntegerField
      FieldName = 'NOOFPKG'
    end
    object sq_LoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_LoadPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_LoadPackagesPKG_OK: TIntegerField
      FieldName = 'PKG_OK'
    end
    object sq_LoadPackagesPKGLOG: TStringField
      FieldName = 'PKGLOG'
      Size = 50
    end
    object sq_LoadPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_LoadPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_LoadPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_LoadPackagesMFBM: TFloatField
      FieldName = 'MFBM'
    end
    object sq_LoadPackagesKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_LoadPackagesLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_LoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_LoadPackagesDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
    end
    object sq_LoadPackagesPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_LoadPackagesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_LoadPackagesNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
    end
    object sq_LoadPackagesMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
    end
    object sq_LoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object sq_LoadPackagesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object sq_LoadPackagesActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object sq_LoadPackagesActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object sq_LoadPackagesOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
    end
    object sq_LoadPackagesALMM: TFloatField
      FieldName = 'ALMM'
    end
    object sq_LoadPackagesLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
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
    IndexDefs = <
      item
        Name = 'mtLoadPackagesIndex2'
        Fields = 'PACKAGENO;SUPP_CODE'
        Options = [ixPrimary, ixUnique]
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
    BeforePost = mtLoadPackagesBeforePost
    BeforeDelete = mtLoadPackagesBeforeDelete
    Left = 232
    Top = 72
    object mtLoadPackagesLONo: TIntegerField
      FieldName = 'LONo'
    end
    object mtLoadPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object mtLoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object mtLoadPackagesNOOFPKG: TIntegerField
      FieldName = 'NOOFPKG'
    end
    object mtLoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object mtLoadPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadPackagesPKG_OK: TIntegerField
      FieldName = 'PKG_OK'
    end
    object mtLoadPackagesPKGLOG: TStringField
      FieldName = 'PKGLOG'
      Size = 50
    end
    object mtLoadPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      DisplayFormat = '#.000'
    end
    object mtLoadPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object mtLoadPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      DisplayFormat = '#.000'
    end
    object mtLoadPackagesMFBM: TFloatField
      FieldName = 'MFBM'
      DisplayFormat = '#.000'
    end
    object mtLoadPackagesKVM: TFloatField
      FieldName = 'KVM'
      DisplayFormat = '#.000'
    end
    object mtLoadPackagesLOPM: TFloatField
      FieldName = 'LOPM'
      DisplayFormat = '#.000'
    end
    object mtLoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLoadPackagesDefaultCustShipObjectNo: TIntegerField
      FieldName = 'DefaultCustShipObjectNo'
    end
    object mtLoadPackagesPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Size = 250
    end
    object mtLoadPackagesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtLoadPackagesNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
    end
    object mtLoadPackagesMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
    end
    object mtLoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtLoadPackagesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object mtLoadPackagesACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
    end
    object mtLoadPackagesACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
    end
    object mtLoadPackagesOverrideMatch: TIntegerField
      FieldName = 'OverrideMatch'
    end
    object mtLoadPackagesALMM: TFloatField
      FieldName = 'ALMM'
    end
    object mtLoadPackagesLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtLoadPackagesOriginalPkg: TBooleanField
      FieldName = 'OriginalPkg'
    end
    object mtLoadPackagesPkg_State: TIntegerField
      FieldName = 'Pkg_State'
    end
    object mtLoadPackagesPkg_Function: TIntegerField
      FieldName = 'Pkg_Function'
    end
    object mtLoadPackagesChanged: TBooleanField
      FieldName = 'Changed'
    end
  end
  object ds_LoadPackages: TDataSource
    OnDataChange = ds_LoadPackagesDataChange
    Left = 232
    Top = 120
  end
  object ds_mtLoadDetailMatch: TDataSource
    Left = 768
    Top = 64
  end
  object mtLoadDetailMatch: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'SupplierShipPlanObjectNo'
        DataType = ftInteger
      end
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
        Name = 'CustShipPlanDetailObjectNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'PackageNo;SupplierCode'
    IndexName = 'mtLoadDetailMatchIndex2'
    IndexDefs = <
      item
        Name = 'mtLoadDetailMatchIndex2'
        Fields = 'PackageNo;SupplierCode'
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
    Left = 768
    Top = 16
    object mtLoadDetailMatchLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object mtLoadDetailMatchLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadDetailMatchSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
    end
    object mtLoadDetailMatchPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtLoadDetailMatchSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtLoadDetailMatchCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 64
    Top = 424
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
  object sp_UpdatePackages: TSQLStoredProc
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
        Name = 'LoadDetailNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NoOfPackages'
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
        DataType = ftWord
        Name = 'PackageOK'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Log'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'CreatedUser'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ModifiedUser'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DefaultLOLineNo'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'OverrideMatch'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_UpdatePackages_II'
    Left = 688
    Top = 512
  end
  object cdsPkgsByInvOwner: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provPkgsByInvOwner'
    Left = 536
    Top = 152
    object cdsPkgsByInvOwnerPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cdsPkgsByInvOwnerSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object cdsPkgsByInvOwnerProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object cdsPkgsByInvOwnerSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Visible = False
    end
    object cdsPkgsByInvOwnerLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 255
    end
    object cdsPkgsByInvOwnerProductNo: TIntegerField
      FieldName = 'ProductNo'
      Required = True
    end
  end
  object dsrcPkgsByInvOwner: TDataSource
    Left = 536
    Top = 208
  end
  object provPkgsByInvOwner: TDataSetProvider
    Left = 536
    Top = 104
  end
  object sp_PksByInvOwner_O: TSQLStoredProc
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
        Name = 'PkgNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InvOwner'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_PkgsByInventory'
    Left = 536
    Top = 16
  end
  object sp_LoadWithPkg: TSQLStoredProc
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
        Name = 'PkgNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInputOutput
        Size = 4
        Value = 255
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_LoadWithPkg'
    Left = 536
    Top = 264
  end
  object sq_OnePkgDetailData: TSQLQuery
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
      'SELECT distinct'
      
        'PR.ProductDisplayName                                           ' +
        '      AS PRODUCT,'
      
        'PN.PackageNo'#9#9'                                                  ' +
        '    AS PACKAGENO,'
      
        'PN.PackageTypeNo'#9'                                               ' +
        '     AS PACKAGETYPENO,'
      
        'PN.SupplierCode'#9'                                                ' +
        '      AS SUPP_CODE,'
      'PT.OnSticks,'
      
        'PT.Totalm3Actual                                                ' +
        '      AS M3_NET,'
      
        'PT.TotalNoOfPieces                                              ' +
        '      AS PCS,'
      
        'PT.Totalm3Nominal'#9#9'                                             ' +
        '     AS M3_NOM,'
      
        'PT.TotalMFBMNominal                                             ' +
        '      AS MFBM,'
      
        'PT.TotalSQMofActualWidth'#9'                                       ' +
        '     AS KVM,'
      
        'PT.TotalLinealMeterActualLength                                 ' +
        '      AS LOPM,'
      
        'PTL.PcsPerLength                                                ' +
        '      AS PCS_PER_LENGTH,'
      '(Select Count(*) from'
      
        ' dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = PN.Packa' +
        'geTypeNo) AS NoOfLengths,'
      '(Select TOP 1 PTD.ProductLengthNo from'
      
        ' dbo.PackageTypeDetail  PTD WHERE   PTD.PackageTypeNo = PN.Packa' +
        'geTypeNo) AS ProductLengthNo,'
      ''
      '(Select TOP 1 PL.ActualLengthMM from dbo.PackageTypeDetail  PTD'
      
        'Inner Join dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'WHERE   PTD.PackageTypeNo = PN.PackageTypeNo)                   ' +
        '          AS ALMM,'
      ''
      'PT.ProductNo,'
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'PG.SurfacingNo,'
      'PG.SpeciesNo,'
      'G.GradeNo AS MainGradeNo,'
      'pc.packagecodeno,'
      'pn.LogicalInventoryPointNo AS LIPNo'
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
      '                                        AND G.LanguageCode = 1'
      
        '        Left Outer Join dbo.PackageCode pc on pc.PackageTypeNo =' +
        ' pt.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      ''
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 232
    Top = 176
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
    object sq_OnePkgDetailDataOnSticks: TIntegerField
      FieldName = 'OnSticks'
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
    object sq_OnePkgDetailDataMFBM: TFloatField
      FieldName = 'MFBM'
    end
    object sq_OnePkgDetailDataKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OnePkgDetailDataLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgDetailDataProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_OnePkgDetailDataNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
    end
    object sq_OnePkgDetailDatapackagecodeno: TStringField
      FieldName = 'packagecodeno'
    end
    object sq_OnePkgDetailDataProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object sq_OnePkgDetailDataActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object sq_OnePkgDetailDataActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object sq_OnePkgDetailDataSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object sq_OnePkgDetailDataSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object sq_OnePkgDetailDataMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
    end
    object sq_OnePkgDetailDataALMM: TFloatField
      FieldName = 'ALMM'
    end
    object sq_OnePkgDetailDataLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
  end
  object sq_LO_LookUp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CustomerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SalesRegionNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'CSH.ShippingPlanNo,'
      'CSH.CustomerNo,'
      'C.ClientName AS CUSTOMER,'
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
      'Bk.ShippersShipTime'#9#9#9#9'AS SHIPPERS_SHIPTIME,'
      'OH.OrderNoText'#9#9#9#9#9'AS ORDERNO,'
      'CASE WHEN OH.OrderType = 0 then '#39'SALES'#39
      'ELSE '#39'PURCHASE'#39#9#9#9#9#9
      'END AS ORDERTYPE,'
      
        'OH.SalesRegionNo                                   AS SALESREGIO' +
        'NNO,'
      
        'SR.ClientName                                      AS SALES_REGI' +
        'ON'
      ''
      ''
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      #9'Inner Join dbo.Client'#9#9'C '#9'ON  '#9'C.ClientNo'#9'= CSH.CustomerNo'
      ''
      ''
      #9'Inner JOIN dbo.Orders '#9#9#9'OH'#9'ON'#9'OH.OrderNo '#9#9'= CSH.OrderNo'
      
        '        Inner Join dbo.Client                   SR      ON      ' +
        'SR.ClientNo             = OH.SalesRegionNo        '
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
      #9#9#9#9#9#9#9'ON  '#9'Bk.ShippingPlanNo'#9'= CSH.ShippingPlanNo'
      ''
      ''
      'WHERE'
      ''
      'CSH.CustomerNo = :CustomerNo'
      'AND OH.SalesRegionNo = :SalesRegionNo'
      '--and OH.OrderType = 1'
      'AND CSH.ShippingPlanStatus = 1')
    SQLConnection = dmsConnector.SQLConnection
    Left = 328
    Top = 16
  end
  object ds_LO_LookUp: TDataSource
    Left = 328
    Top = 160
  end
  object cds_LO_LookUp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LO_LookUp'
    Left = 328
    Top = 112
    object cds_LO_LookUpShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cds_LO_LookUpCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cds_LO_LookUpCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 80
    end
    object cds_LO_LookUpSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object cds_LO_LookUpREADYDATE: TStringField
      FieldName = 'READYDATE'
      Size = 30
    end
    object cds_LO_LookUpVESSEL: TStringField
      FieldName = 'VESSEL'
      Size = 50
    end
    object cds_LO_LookUpETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object cds_LO_LookUpETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object cds_LO_LookUpSHIPPER_REF: TStringField
      FieldName = 'SHIPPER_REF'
      Size = 50
    end
    object cds_LO_LookUpSHIPPERID: TStringField
      FieldName = 'SHIPPERID'
    end
    object cds_LO_LookUpSHIPPERS_SHIPDATE: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPDATE'
    end
    object cds_LO_LookUpSHIPPERS_SHIPTIME: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPTIME'
    end
    object cds_LO_LookUpORDERNO: TStringField
      FieldName = 'ORDERNO'
    end
    object cds_LO_LookUpORDERTYPE: TStringField
      FieldName = 'ORDERTYPE'
      Size = 8
    end
    object cds_LO_LookUpSALESREGIONNO: TIntegerField
      FieldName = 'SALESREGIONNO'
    end
    object cds_LO_LookUpSALES_REGION: TStringField
      FieldName = 'SALES_REGION'
      Size = 80
    end
  end
  object dsp_LO_LookUp: TDataSetProvider
    Left = 328
    Top = 64
  end
  object sq_SaveLoadDetailMatch: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadDetailNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierShipPlanObjectNo'
        ParamType = ptInput
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
        Name = 'CustShipPlanDetailObjectNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'INSERT'
      ''
      'INTO     LoadDetailMatch'
      '         ('
      '            LoadNo,'
      '            LoadDetailNo,'
      '            SupplierShipPlanObjectNo,'
      '            PackageNo,'
      '            SupplierCode,'
      '            CustShipPlanDetailObjectNo'
      '         )'
      ''
      'VALUES   ('
      '            :LoadNo,'
      '            :LoadDetailNo,'
      '            :SupplierShipPlanObjectNo,'
      '            :PackageNo,'
      '            :SupplierCode,'
      '            :CustShipPlanDetailObjectNo'
      '                     )'
      ''
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 424
    Top = 360
  end
  object qry_UpdateLOTSA: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ConfRcvr'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ConfSupp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CreatedUser'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ModifiedUser'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DateCreated'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'INSERT'
      ''
      'INTO     LoadShippingPlan'
      '         ('
      '            LoadNo,'
      '            ShippingPlanNo,'
      '            ConfirmedByReciever,'
      '            ConfirmedBySupplier,'
      '            CreatedUser,'
      '            ModifiedUser,'
      '            DateCreated'
      '         )'
      ''
      'VALUES   ('
      '            :LoadNo,'
      '            :LONo,'
      '            :ConfRcvr,'
      '            :ConfSupp,'
      '            :CreatedUser,'
      '            :ModifiedUser,'
      '            :DateCreated'
      '         )'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 424
    Top = 464
  end
  object sq_Booking_Data: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
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
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 304
    Top = 408
    object sq_Booking_DataSHIPPER: TStringField
      FieldName = 'SHIPPER'
      Size = 80
    end
    object sq_Booking_DataREADYDATE: TStringField
      FieldName = 'READYDATE'
      Size = 30
    end
    object sq_Booking_DataVESSEL: TStringField
      FieldName = 'VESSEL'
      Size = 50
    end
    object sq_Booking_DataETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object sq_Booking_DataETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object sq_Booking_DataSHIPPER_REF: TStringField
      FieldName = 'SHIPPER_REF'
      Size = 50
    end
    object sq_Booking_DataSHIPPERID: TStringField
      FieldName = 'SHIPPERID'
    end
    object sq_Booking_DataSHIPPERS_SHIPDATE: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPDATE'
    end
    object sq_Booking_DataSHIPPERS_SHIPTIME: TSQLTimeStampField
      FieldName = 'SHIPPERS_SHIPTIME'
    end
  end
  object sp_DeleteOneLoad: TSQLStoredProc
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
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_DeleteOneLoad'
    Left = 536
    Top = 320
  end
  object mtPkgLog: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'RegistrationPointNo'
        DataType = ftInteger
      end
      item
        Name = 'Operation'
        DataType = ftInteger
      end
      item
        Name = 'LogicalInventoryPointNo'
        DataType = ftInteger
      end
      item
        Name = 'InventoryOperation'
        DataType = ftInteger
      end
      item
        Name = 'NoOfPackages'
        DataType = ftInteger
      end>
    IndexFieldNames = 
      'PACKAGETYPENO;RegistrationPointNo;Operation;LogicalInventoryPoin' +
      'tNo;InventoryOperation'
    IndexName = 'mtNewPackagesIndex2'
    IndexDefs = <
      item
        Name = 'mtNewPackagesIndex2'
        Fields = 
          'PACKAGETYPENO;RegistrationPointNo;Operation;LogicalInventoryPoin' +
          'tNo;InventoryOperation'
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
    Left = 768
    Top = 112
    object mtPkgLogPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object mtPkgLogRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
    end
    object mtPkgLogOperation: TIntegerField
      FieldName = 'Operation'
    end
    object mtPkgLogLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object mtPkgLogInventoryOperation: TIntegerField
      FieldName = 'InventoryOperation'
    end
    object mtPkgLogNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
    end
  end
  object sp_GetPkgInventory: TSQLStoredProc
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
    StoredProcName = 'vida_GetPackageInventory'
    Left = 688
    Top = 416
    object sp_GetPkgInventoryLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Required = True
    end
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
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_DelPkgInSSPLoad'
    Left = 536
    Top = 368
  end
  object sp_PkgsByLogicalInv: TSQLStoredProc
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
        Name = 'PkgNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_PkgsByLogicalInventoryPoint'
    Left = 648
    Top = 16
  end
  object dsp_PkgsByLogicalInv: TDataSetProvider
    Left = 648
    Top = 112
  end
  object cds_PkgsByLogicalInv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PkgsByLogicalInv'
    Left = 648
    Top = 160
  end
  object ds_PkgsByLogicalInv: TDataSource
    Left = 648
    Top = 208
  end
  object sq_Confirmed_Load: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * '
      'from Confirmed_Load')
    SQLConnection = dmsConnector.SQLConnection
    Left = 424
    Top = 16
    object sq_Confirmed_LoadConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_Confirmed_LoadConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_Confirmed_LoadNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
    end
    object sq_Confirmed_LoadNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
    end
    object sq_Confirmed_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_Confirmed_LoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object sq_Confirmed_LoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object dspConfirmed_Load: TDataSetProvider
    UpdateMode = upWhereChanged
    Left = 424
    Top = 64
  end
  object cdsConfirmed_Load: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfirmed_Load'
    Left = 424
    Top = 112
    object cdsConfirmed_LoadConfirmed_LoadNo: TIntegerField
      FieldName = 'Confirmed_LoadNo'
    end
    object cdsConfirmed_LoadConfirmed_ShippingPlanNo: TIntegerField
      FieldName = 'Confirmed_ShippingPlanNo'
    end
    object cdsConfirmed_LoadNewLoadNo: TIntegerField
      FieldName = 'NewLoadNo'
    end
    object cdsConfirmed_LoadNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
    end
    object cdsConfirmed_LoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cdsConfirmed_LoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cdsConfirmed_LoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
  end
  object dsConfirmed_Load: TDataSource
    Left = 424
    Top = 168
  end
  object sq_CheckLoadNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM dbo.Loads'
      'Where LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 304
    Top = 312
    object sq_CheckLoadNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
  end
  object sq_IsLoadDetails: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select L.LoadDetailNo'
      'from LoadDetail L'
      'where'
      'L.LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 424
    Top = 304
  end
  object sq_GetCurrLogInv: TSQLQuery
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
      'SELECT distinct'
      '           PN.LogicalInventoryPointNo'
      ''
      'FROM       dbo.PackageNumber             PN'
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 304
    Top = 464
    object sq_GetCurrLogInvLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
  end
  object sp_ProcessPkgAND_Log: TSQLStoredProc
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
        Name = 'CreatedUser'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Operation'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_ProcessPkg'
    Left = 688
    Top = 464
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 768
    Top = 160
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
  object sq_GetPkgNos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'packagecodeno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select distinct pn.packageno, pn.suppliercode, pc.packagecodeno,' +
        ' lip.LogicalInventoryPointNo, pn.datecreated, pc.packagetypeno,'
      'pt.productno, ptd.productlengthno'
      'from dbo.PkgVarCode pc'
      
        'inner join dbo.packagenumber pn on pn.packagetypeno = pc.package' +
        'typeno'
      
        'inner join dbo.LogicalInventoryPoint lip on lip.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'inner join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'inner join dbo.packagetypedetail ptd on ptd.packagetypeno = pn.p' +
        'ackagetypeno'
      'where'
      'lip.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND pn.status = 1'
      'AND pc.packagecodeno = :packagecodeno'
      
        'and pn.packageno not in (Select pr.packageno from dbo.Pkgs_Res p' +
        'r '
      'where pr.suppliercode = pn.suppliercode'
      'and pr.userid <> :UserID)'
      ''
      'order by pn.datecreated ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 304
    Top = 256
    object sq_GetPkgNospackageno: TIntegerField
      FieldName = 'packageno'
    end
    object sq_GetPkgNossuppliercode: TStringField
      FieldName = 'suppliercode'
      Size = 3
    end
    object sq_GetPkgNosproductno: TIntegerField
      FieldName = 'productno'
    end
    object sq_GetPkgNosproductlengthno: TIntegerField
      FieldName = 'productlengthno'
    end
  end
  object sq_LoadShippingPlan: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.LoadShippingPlan LS'
      'WHERE LS.LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 192
    Top = 256
    object sq_LoadShippingPlanLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadShippingPlanShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadShippingPlanConfirmedByReciever: TWordField
      FieldName = 'ConfirmedByReciever'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadShippingPlanConfirmedBySupplier: TWordField
      FieldName = 'ConfirmedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadShippingPlanCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadShippingPlanModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadShippingPlanDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadShippingPlanInvoiced: TIntegerField
      FieldName = 'Invoiced'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadShippingPlanLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_LoadShippingPlanShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_LoadShippingPlan: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 304
  end
  object cds_LoadShippingPlan: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'LoadNo'
        DataType = ftInteger
      end
      item
        Name = 'ShippingPlanNo'
        DataType = ftInteger
      end
      item
        Name = 'ConfirmedByReciever'
        DataType = ftSmallint
      end
      item
        Name = 'ConfirmedBySupplier'
        DataType = ftSmallint
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
        Name = 'Invoiced'
        DataType = ftInteger
      end
      item
        Name = 'LoadingLocationNo'
        DataType = ftInteger
      end
      item
        Name = 'ShipToInvPointNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_LoadShippingPlanIndex1'
        Fields = 'ShippingPlanNo;LoadNo'
      end>
    IndexName = 'cds_LoadShippingPlanIndex1'
    Params = <>
    ProviderName = 'dsp_LoadShippingPlan'
    StoreDefs = True
    Left = 192
    Top = 352
    object cds_LoadShippingPlanLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object cds_LoadShippingPlanShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object cds_LoadShippingPlanConfirmedByReciever: TSmallintField
      FieldName = 'ConfirmedByReciever'
    end
    object cds_LoadShippingPlanConfirmedBySupplier: TSmallintField
      FieldName = 'ConfirmedBySupplier'
    end
    object cds_LoadShippingPlanCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_LoadShippingPlanModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
    end
    object cds_LoadShippingPlanDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_LoadShippingPlanInvoiced: TIntegerField
      FieldName = 'Invoiced'
    end
    object cds_LoadShippingPlanLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object cds_LoadShippingPlanShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
    end
  end
  object sp_RemPkgFromLoad: TSQLStoredProc
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
        Name = 'CreatedUser'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Operation'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_RemPkgFromLoad'
    Left = 688
    Top = 368
  end
  object sq_DeleteLoadDetailMatch: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
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
    SQL.Strings = (
      'Delete from dbo.LoadDetailMatch'
      'Where LoadNo = :LoadNo'
      'AND PackageNo = :PackageNo'
      'AND SupplierCode = :SupplierCode')
    SQLConnection = dmsConnector.SQLConnection
    Left = 424
    Top = 408
  end
  object sq_LoadDetailMatch: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select *'
      'FROM dbo.LoadDetailMatch'
      'Where'
      'LoadNo = :LoadNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 304
    Top = 360
    object sq_LoadDetailMatchLoadNo: TIntegerField
      FieldName = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadDetailMatchLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadDetailMatchSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_LoadDetailMatchPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object sq_LoadDetailMatchSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object sq_LoadDetailMatchCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sq_SetLoadConfirmed: TSQLQuery
    MaxBlobSize = -1
    Params = <
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
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Insert  dbo.Confirmed_Load Select  LSP.LoadNo, LSP.ShippingPlanN' +
        'o, '
      'LSP.LoadNo, LSP.ShippingPlanNo, GetDate(), :UserID, :UserID'
      ''
      'from dbo.LoadShippingPlan LSP'
      'where  LSP.LoadNo = :LoadNo'
      
        'and  LSP.LoadNo not in (Select Confirmed_LoadNo FROM dbo.Confirm' +
        'ed_Load'
      'where Confirmed_ShippingPlanNo =  LSP.ShippingPlanNo '
      ')')
    SQLConnection = dmsConnector.SQLConnection
    Left = 424
    Top = 256
  end
  object sp_UpdateLoadDtl: TSQLStoredProc
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
        Name = 'LoadDetailNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageOK'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Log'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ModifiedUser'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'OverrideMatch'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LIPNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_UpdateLoadDtl_III'
    Left = 688
    Top = 264
  end
  object sp_vida_UpdateLoadDetailPkgLength: TSQLStoredProc
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
        Name = 'SupplierShipPlanObjectNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CustShipPlanDetailObjectNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadDetailNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LoadNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Log'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vida_UpdateLoadDetailPkgLength'
    Left = 688
    Top = 320
  end
  object sp_PksByInvOwner: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PkgNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InvOwner'
        ParamType = ptInput
      end>
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
      'AND    PI.OwnerNo   = :InvOwner')
    SQLConnection = dmsConnector.SQLConnection
    Left = 536
    Top = 64
  end
  object SQLQuery2: TSQLQuery
    Params = <>
    Left = 648
    Top = 64
  end
end
