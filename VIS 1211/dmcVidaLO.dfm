object dmcLO: TdmcLO
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 437
  Width = 895
  object ds_IntHdr: TDataSource
    DataSet = cds_IntHdr
    Left = 24
    Top = 64
  end
  object ds_LO: TDataSource
    DataSet = cds_LO
    OnDataChange = ds_LODataChange
    Left = 112
    Top = 64
  end
  object ds_ProdInstruct: TDataSource
    DataSet = cds_ProdInstruct
    Left = 112
    Top = 272
  end
  object ds_Users: TDataSource
    DataSet = cds_Users
    Left = 216
    Top = 272
  end
  object ds_PhysInvByCityNo: TDataSource
    DataSet = cds_PhysInvByCityNo
    Left = 456
    Top = 72
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 416
    Top = 272
  end
  object ds_ELOLengths: TDataSource
    DataSet = cds_ELOLengths
    Left = 284
    Top = 64
  end
  object ds_ELOLayout: TDataSource
    DataSet = cds_ELOLayout
    Left = 520
    Top = 272
  end
  object ds_ProdList: TDataSource
    DataSet = cds_ProdList
    Left = 702
    Top = 64
  end
  object cds_IntHdr: TADQuery
    AfterInsert = cds_IntHdrAfterInsert
    BeforePost = cds_IntHdrBeforePost
    AfterScroll = cds_IntHdrAfterScroll
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select IH.* FROM dbo.InternalOrderHead IH'
      
        'Inner Join dbo.SupplierShippingPlan SSP ON SSP.ShippingPlanNo = ' +
        'IH.ShippingPlanNo'
      'WHERE IH.ShippingPlanNo = :ShippingPlanNo'
      'AND SSP.ObjectType = 0')
    Left = 24
    Top = 16
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_IntHdrOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_IntHdrShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object cds_IntHdrCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_IntHdrDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
    end
    object cds_IntHdrDefaultShipToInvPointNo: TIntegerField
      FieldName = 'DefaultShipToInvPointNo'
      Origin = 'DefaultShipToInvPointNo'
    end
    object cds_IntHdrStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_IntHdrOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      FixedChar = True
      Size = 40
    end
    object cds_IntHdrDefaultDeliveryTermsNo: TIntegerField
      FieldName = 'DefaultDeliveryTermsNo'
      Origin = 'DefaultDeliveryTermsNo'
    end
    object cds_IntHdrDefaultPaymentTermsNo: TIntegerField
      FieldName = 'DefaultPaymentTermsNo'
      Origin = 'DefaultPaymentTermsNo'
    end
    object cds_IntHdrDefaultCurrencyNo: TIntegerField
      FieldName = 'DefaultCurrencyNo'
      Origin = 'DefaultCurrencyNo'
    end
    object cds_IntHdrOrderNote: TMemoField
      FieldName = 'OrderNote'
      Origin = 'OrderNote'
      BlobType = ftMemo
    end
    object cds_IntHdrOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
    end
    object cds_IntHdrProductDisplayFormat: TIntegerField
      FieldName = 'ProductDisplayFormat'
      Origin = 'ProductDisplayFormat'
    end
    object cds_IntHdrDefaultVolumeUnitNo: TIntegerField
      FieldName = 'DefaultVolumeUnitNo'
      Origin = 'DefaultVolumeUnitNo'
    end
    object cds_IntHdrVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
    end
    object cds_IntHdrDefaultPriceUnitNo: TIntegerField
      FieldName = 'DefaultPriceUnitNo'
      Origin = 'DefaultPriceUnitNo'
    end
    object cds_IntHdrDef_StartETDYearWeek: TIntegerField
      FieldName = 'Def_StartETDYearWeek'
      Origin = 'Def_StartETDYearWeek'
    end
    object cds_IntHdrDef_StartETAYearWeek: TIntegerField
      FieldName = 'Def_StartETAYearWeek'
      Origin = 'Def_StartETAYearWeek'
    end
    object cds_IntHdrSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_IntHdrLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
    end
    object cds_IntHdrLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object cds_IntHdrSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_IntHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_IntHdrModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_IntHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_IntHdrLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
    end
    object cds_IntHdrDefaultLIPNo: TIntegerField
      FieldName = 'DefaultLIPNo'
      Origin = 'DefaultLIPNo'
    end
    object cds_IntHdrMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cds_IntHdrPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
    end
    object cds_IntHdrVatExempt: TIntegerField
      FieldName = 'VatExempt'
      Origin = 'VatExempt'
    end
    object cds_IntHdrInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
    end
    object cds_IntHdrSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_IntHdrDef_LoadingLocationNo: TIntegerField
      FieldName = 'Def_LoadingLocationNo'
      Origin = 'Def_LoadingLocationNo'
    end
    object cds_IntHdrAutoPkgCode: TIntegerField
      FieldName = 'AutoPkgCode'
      Origin = 'AutoPkgCode'
    end
    object cds_IntHdrMiniText: TStringField
      FieldName = 'MiniText'
      Origin = 'MiniText'
      Size = 255
    end
    object cds_IntHdrMiniTextFS: TIntegerField
      FieldName = 'MiniTextFS'
      Origin = 'MiniTextFS'
    end
    object cds_IntHdrMiniTextLO: TIntegerField
      FieldName = 'MiniTextLO'
      Origin = 'MiniTextLO'
    end
    object cds_IntHdrKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'CustomerNo'
      Size = 80
      Lookup = True
    end
    object cds_IntHdrSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesRegionNo'
      Size = 80
      Lookup = True
    end
    object cds_IntHdrPrislista: TStringField
      FieldKind = fkLookup
      FieldName = 'Prislista'
      LookupDataSet = dmsSystem.cds_PriceList
      LookupKeyFields = 'templateno'
      LookupResultField = 'PriceListName'
      KeyFields = 'PriceListNo'
      Size = 30
      Lookup = True
    end
  end
  object cds_copyPI: TADQuery
    AfterInsert = cds_copyPIAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select  P.* FROM dbo.ProdInstru P'
      
        'WHERE P.ProdInstruNo in (Select SSP.ProdInstructNo from Supplier' +
        'ShippingPlan SSP'
      'WHERE SSP.ShippingPlanNo = :ShippingPlanNo)')
    Left = 24
    Top = 216
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_copyPIProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_copyPIFOHCpercent: TFloatField
      FieldName = 'FOHCpercent'
      Origin = 'FOHCpercent'
    end
    object cds_copyPIMiniBundleHeight: TIntegerField
      FieldName = 'MiniBundleHeight'
      Origin = 'MiniBundleHeight'
    end
    object cds_copyPIMiniBundleWidth: TIntegerField
      FieldName = 'MiniBundleWidth'
      Origin = 'MiniBundleWidth'
    end
    object cds_copyPIMinNoOfSticks: TIntegerField
      FieldName = 'MinNoOfSticks'
      Origin = 'MinNoOfSticks'
    end
    object cds_copyPINoOfStraps: TIntegerField
      FieldName = 'NoOfStraps'
      Origin = 'NoOfStraps'
    end
    object cds_copyPICornerProtection: TStringField
      FieldName = 'CornerProtection'
      Origin = 'CornerProtection'
      Size = 50
    end
    object cds_copyPIPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object cds_copyPIPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object cds_copyPIStamp: TIntegerField
      FieldName = 'Stamp'
      Origin = 'Stamp'
    end
    object cds_copyPIPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_copyPIMiniBundle: TIntegerField
      FieldName = 'MiniBundle'
      Origin = 'MiniBundle'
    end
    object cds_copyPIStressGrade: TIntegerField
      FieldName = 'StressGrade'
      Origin = 'StressGrade'
    end
    object cds_copyPIFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_copyPIPackageCut: TIntegerField
      FieldName = 'PackageCut'
      Origin = 'PackageCut'
    end
    object cds_copyPIExLog: TStringField
      FieldName = 'ExLog'
      Origin = 'ExLog'
      FixedChar = True
      Size = 10
    end
    object cds_copyPICreated: TSQLTimeStampField
      FieldName = 'Created'
      Origin = 'Created'
    end
    object cds_copyPIModified: TSQLTimeStampField
      FieldName = 'Modified'
      Origin = 'Modified'
    end
    object cds_copyPIPackageTagLayout: TIntegerField
      FieldName = 'PackageTagLayout'
      Origin = 'PackageTagLayout'
    end
    object cds_copyPIPET_Tolerance: TStringField
      FieldName = 'PET_Tolerance'
      Origin = 'PET_Tolerance'
      FixedChar = True
      Size = 10
    end
    object cds_copyPIBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
    end
    object cds_copyPIExtraID: TStringField
      FieldName = 'ExtraID'
      Origin = 'ExtraID'
      FixedChar = True
    end
    object cds_copyPICreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_copyPIModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_copyPIDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_copyPIPackageType: TIntegerField
      FieldName = 'PackageType'
      Origin = 'PackageType'
    end
    object cds_copyPIWrapType: TIntegerField
      FieldName = 'WrapType'
      Origin = 'WrapType'
    end
    object cds_copyPIPressureTreated: TIntegerField
      FieldName = 'PressureTreated'
      Origin = 'PressureTreated'
    end
    object cds_copyPISequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_copyPIPicture: TStringField
      FieldName = 'Picture'
      Origin = 'Picture'
      Size = 255
    end
    object cds_copyPINote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_copyPIShrinkWrap: TIntegerField
      FieldName = 'ShrinkWrap'
      Origin = 'ShrinkWrap'
    end
    object cds_copyPIPiecesPerMiniBundle: TIntegerField
      FieldName = 'PiecesPerMiniBundle'
      Origin = 'PiecesPerMiniBundle'
    end
    object cds_copyPIPackage_Size: TIntegerField
      FieldName = 'Package_Size'
      Origin = 'Package_Size'
    end
    object cds_copyPIBILD: TBlobField
      FieldName = 'BILD'
      Origin = 'BILD'
    end
    object cds_copyPICornerProtectionNo: TIntegerField
      FieldName = 'CornerProtectionNo'
      Origin = 'CornerProtectionNo'
    end
    object cds_copyPIExternalNote: TMemoField
      FieldName = 'ExternalNote'
      Origin = 'ExternalNote'
      BlobType = ftMemo
    end
    object cds_copyPITruckSticksNo: TIntegerField
      FieldName = 'TruckSticksNo'
      Origin = 'TruckSticksNo'
    end
    object cds_copyPIStrapTypeNo: TIntegerField
      FieldName = 'StrapTypeNo'
      Origin = 'StrapTypeNo'
    end
  end
  object cds_LO: TADQuery
    AfterInsert = cds_LOAfterInsert
    BeforePost = cds_LOBeforePost
    BeforeDelete = cds_LOBeforeDelete
    OnCalcFields = cds_LOCalcFields
    OnPostError = cds_LOPostError
    CachedUpdates = True
    OnReconcileError = cds_LOReconcileError
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SSP.*,'
      'isNull((Select DV.SHIP_KVANT from'
      
        'dbo.DelPerSSP DV WHERE '#9'DV.SSPNO = ssp.SupplierShipPlanObjectNo)' +
        ',0)  AS LEV'
      ''
      ''
      'FROM dbo.SupplierShippingPlan SSP'
      'WHERE SSP.ShippingPlanNo = :ShippingPlanNo')
    Left = 112
    Top = 16
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LOSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LOCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
    end
    object cds_LOShipType: TIntegerField
      FieldName = 'ShipType'
      Origin = 'ShipType'
    end
    object cds_LOObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object cds_LOOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
    end
    object cds_LOOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
    end
    object cds_LOShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object cds_LOSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object cds_LOLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      Required = True
    end
    object cds_LODeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
    end
    object cds_LOPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
    end
    object cds_LOPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
    object cds_LOCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object cds_LONoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
    end
    object cds_LOPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      Origin = 'PriceUnitNo'
    end
    object cds_LOVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cds_LODestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
    end
    object cds_LOShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
    end
    object cds_LOStartETDYearWeek: TIntegerField
      FieldName = 'StartETDYearWeek'
      Origin = 'StartETDYearWeek'
    end
    object cds_LOEndETDYearWeek: TIntegerField
      FieldName = 'EndETDYearWeek'
      Origin = 'EndETDYearWeek'
    end
    object cds_LOInternalNote: TStringField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
    end
    object cds_LOProductDescription: TStringField
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      FixedChar = True
      Size = 100
    end
    object cds_LOLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      FixedChar = True
      Size = 100
    end
    object cds_LOAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
    end
    object cds_LOProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object cds_LOProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
    end
    object cds_LOActualM3Net: TFloatField
      FieldName = 'ActualM3Net'
      Origin = 'ActualM3Net'
    end
    object cds_LOShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object cds_LOProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_LOLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      BlobType = ftMemo
    end
    object cds_LOMinActualLengthMM: TFloatField
      FieldName = 'MinActualLengthMM'
      Origin = 'MinActualLengthMM'
    end
    object cds_LOMaxActualLengthMM: TFloatField
      FieldName = 'MaxActualLengthMM'
      Origin = 'MaxActualLengthMM'
    end
    object cds_LOPackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      FixedChar = True
      Size = 10
    end
    object cds_LOFreightOrderByClientNo: TIntegerField
      FieldName = 'FreightOrderByClientNo'
      Origin = 'FreightOrderByClientNo'
    end
    object cds_LOSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_LOCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LOModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LODateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LOPartnerNo: TIntegerField
      FieldName = 'PartnerNo'
      Origin = 'PartnerNo'
    end
    object cds_LOProdInstructNo: TIntegerField
      FieldName = 'ProdInstructNo'
      Origin = 'ProdInstructNo'
    end
    object cds_LOShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
    end
    object cds_LOPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
    end
    object cds_LOCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_LOCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
    end
    object cds_LOCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
    end
    object cds_LOLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
    end
    object cds_LODelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
    end
    object cds_LODateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_LOLengthTyp: TStringField
      FieldName = 'LengthTyp'
      Origin = 'LengthTyp'
    end
    object cds_LOReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 50
    end
    object cds_LOLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_LOPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
    end
    object cds_LOPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
    end
    object cds_LOInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
    end
    object cds_LOPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object cds_LOPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object cds_LOLengthSpec: TStringField
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      Size = 15
    end
    object cds_LOLEV: TFloatField
      FieldName = 'LEV'
      Origin = 'LEV'
      ReadOnly = True
      Required = True
    end
    object cds_LOVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SupplierNo'
      Size = 80
      Lookup = True
    end
    object cds_LOPrisLista: TStringField
      FieldKind = fkLookup
      FieldName = 'PrisLista'
      LookupDataSet = dmsSystem.cds_PriceList
      LookupKeyFields = 'templateno'
      LookupResultField = 'PriceListName'
      KeyFields = 'PriceListNo'
      Size = 30
      Lookup = True
    end
    object cds_LOREST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'REST'
    end
  end
  object cds_ELOLengths: TADQuery
    AfterInsert = cds_ELOLengthsAfterInsert
    BeforePost = cds_ELOLengthsBeforePost
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select PL.ActualLengthMM, LL.*'
      'FROM dbo.LO_Lengths LL'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = LL.Produ' +
        'ctLengthNo'
      'WHERE'
      'LL.SupplierShipPlanObjectNo = :SupplierShipPlanObjectNo')
    Left = 280
    Top = 16
    ParamData = <
      item
        Name = 'SUPPLIERSHIPPLANOBJECTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ELOLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_ELOLengthsSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ELOLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ELOLengthsPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
    end
  end
  object cds_Pref: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select C.VATNo, cp.* FROM dbo.Client C'
      
        'Left Outer Join dbo.ClientPreference cp on cp.ClientNo = C.Clien' +
        'tNo'
      'WHERE c.ClientNo = :ClientNo '
      'AND cp.RoleType = :RoleType')
    Left = 368
    Top = 16
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
    object cds_PrefVATNo: TStringField
      FieldName = 'VATNo'
      Origin = 'VATNo'
      FixedChar = True
    end
    object cds_PrefClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_PrefRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
    end
    object cds_PrefDefaultShippingAddressNo: TIntegerField
      FieldName = 'DefaultShippingAddressNo'
      Origin = 'DefaultShippingAddressNo'
    end
    object cds_PrefDefaultDeliveryTermsNo: TIntegerField
      FieldName = 'DefaultDeliveryTermsNo'
      Origin = 'DefaultDeliveryTermsNo'
    end
    object cds_PrefDefaultPaymentTermsNo: TIntegerField
      FieldName = 'DefaultPaymentTermsNo'
      Origin = 'DefaultPaymentTermsNo'
    end
    object cds_PrefDefaultCurrencyNo: TIntegerField
      FieldName = 'DefaultCurrencyNo'
      Origin = 'DefaultCurrencyNo'
    end
    object cds_PrefDefaultPriceUnitNo: TIntegerField
      FieldName = 'DefaultPriceUnitNo'
      Origin = 'DefaultPriceUnitNo'
    end
    object cds_PrefDefaultVolumeUnitNo: TIntegerField
      FieldName = 'DefaultVolumeUnitNo'
      Origin = 'DefaultVolumeUnitNo'
    end
    object cds_PrefInvoiceText: TStringField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      Size = 250
    end
    object cds_PrefDefaultAgentNo: TIntegerField
      FieldName = 'DefaultAgentNo'
      Origin = 'DefaultAgentNo'
    end
    object cds_PrefLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_PrefLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object cds_PrefProdDisplayFormat: TIntegerField
      FieldName = 'ProdDisplayFormat'
      Origin = 'ProdDisplayFormat'
    end
    object cds_PrefLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
    end
    object cds_PrefDefaultBillingAddressNo: TIntegerField
      FieldName = 'DefaultBillingAddressNo'
      Origin = 'DefaultBillingAddressNo'
    end
    object cds_PrefSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_PrefDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PrefCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PrefModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PrefPhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
    end
    object cds_PrefPhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
    end
    object cds_PrefPhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
    end
    object cds_PrefFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object cds_PrefEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object cds_PrefDefaultDestinationNo: TIntegerField
      FieldName = 'DefaultDestinationNo'
      Origin = 'DefaultDestinationNo'
    end
    object cds_PrefSendInvoiceToAgent: TIntegerField
      FieldName = 'SendInvoiceToAgent'
      Origin = 'SendInvoiceToAgent'
    end
    object cds_PrefVAT_OnInvoice: TIntegerField
      FieldName = 'VAT_OnInvoice'
      Origin = 'VAT_OnInvoice'
    end
    object cds_PrefCommisionInDiscount: TIntegerField
      FieldName = 'CommisionInDiscount'
      Origin = 'CommisionInDiscount'
    end
    object cds_PrefFreightInDiscount: TIntegerField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
  end
  object cds_PhysInvByCityNo: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT distinct PH.PhyInvPointNameNo AS CityNo, CY.CITYNAME, PH.' +
        'OwnerNo'
      'FROM'
      'Client SR'
      'Inner Join PHYSICALINVENTORYPOINT PH ON PH.OwnerNo = SR.ClientNo'
      'Inner Join CITY CY ON'#9'CY.CITYNO = PH.PhyInvPointNameNo'
      'WHERE PH.SequenceNo = 1'
      'ORDER BY CY.CITYNAME')
    Left = 456
    Top = 16
    object cds_PhysInvByCityNoCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object cds_PhysInvByCityNoCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
    object cds_PhysInvByCityNoOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object cds_ProdList: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,'
      'sc.SpeciesName, sf.SurfacingName,'
      
        'pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, p' +
        'g.NominalWidthMM,'
      
        'pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.ProductCateg' +
        'oryNo,'
      'pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthINCH,'
      'Case WHEN pc.ImpregInProdName = 1 THEN pc.ProductCategoryName'
      'ELSE'
      #39#39
      'END AS ProductCategoryName'
      ''
      'FROM dbo.Product pd'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      'AND gd.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      'AND pc.LanguageCode = :LanguageCode'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      'AND sc.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      'AND sf.LanguageCode = :LanguageCode'
      'WHERE'
      '((pd.ProductNo = :ProductNo) OR (0 = :ProductNo))'
      '')
    Left = 712
    Top = 16
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdListProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdListProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object cds_ProdListGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProdListSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_ProdListSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_ProdListActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_ProdListActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_ProdListNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_ProdListNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_ProdListProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProdListGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_ProdListSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_ProdListProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cds_ProdListSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_ProdListNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_ProdListNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
    object cds_ProdListProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      ReadOnly = True
      Required = True
    end
  end
  object sq_FindLO: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select IH.ShippingPlanNo FROM dbo.InternalOrderHead IH'
      
        'Inner Join dbo.SupplierShippingPlan SSP ON SSP.ShippingPlanNo = ' +
        'IH.ShippingPlanNo'
      'WHERE IH.ShippingPlanNo = :ShippingPlanNo'
      'AND SSP.ObjectType = 0')
    Left = 560
    Top = 16
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_FindLOShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
  end
  object cds_ProdInstruct: TADQuery
    AfterInsert = cds_ProdInstructAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select  P.* FROM dbo.ProdInstru P'
      
        'WHERE P.ProdInstruNo in (Select SSP.ProdInstructNo from Supplier' +
        'ShippingPlan SSP'
      'WHERE SSP.ShippingPlanNo = :ShippingPlanNo)')
    Left = 112
    Top = 224
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdInstructProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdInstructFOHCpercent: TFloatField
      FieldName = 'FOHCpercent'
      Origin = 'FOHCpercent'
    end
    object cds_ProdInstructMiniBundleHeight: TIntegerField
      FieldName = 'MiniBundleHeight'
      Origin = 'MiniBundleHeight'
    end
    object cds_ProdInstructMiniBundleWidth: TIntegerField
      FieldName = 'MiniBundleWidth'
      Origin = 'MiniBundleWidth'
    end
    object cds_ProdInstructMinNoOfSticks: TIntegerField
      FieldName = 'MinNoOfSticks'
      Origin = 'MinNoOfSticks'
    end
    object cds_ProdInstructNoOfStraps: TIntegerField
      FieldName = 'NoOfStraps'
      Origin = 'NoOfStraps'
    end
    object cds_ProdInstructCornerProtection: TStringField
      FieldName = 'CornerProtection'
      Origin = 'CornerProtection'
      Size = 50
    end
    object cds_ProdInstructPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object cds_ProdInstructPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object cds_ProdInstructStamp: TIntegerField
      FieldName = 'Stamp'
      Origin = 'Stamp'
    end
    object cds_ProdInstructPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_ProdInstructMiniBundle: TIntegerField
      FieldName = 'MiniBundle'
      Origin = 'MiniBundle'
    end
    object cds_ProdInstructStressGrade: TIntegerField
      FieldName = 'StressGrade'
      Origin = 'StressGrade'
    end
    object cds_ProdInstructFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_ProdInstructPackageCut: TIntegerField
      FieldName = 'PackageCut'
      Origin = 'PackageCut'
    end
    object cds_ProdInstructExLog: TStringField
      FieldName = 'ExLog'
      Origin = 'ExLog'
      FixedChar = True
      Size = 10
    end
    object cds_ProdInstructCreated: TSQLTimeStampField
      FieldName = 'Created'
      Origin = 'Created'
    end
    object cds_ProdInstructModified: TSQLTimeStampField
      FieldName = 'Modified'
      Origin = 'Modified'
    end
    object cds_ProdInstructPackageTagLayout: TIntegerField
      FieldName = 'PackageTagLayout'
      Origin = 'PackageTagLayout'
    end
    object cds_ProdInstructPET_Tolerance: TStringField
      FieldName = 'PET_Tolerance'
      Origin = 'PET_Tolerance'
      FixedChar = True
      Size = 10
    end
    object cds_ProdInstructBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
    end
    object cds_ProdInstructExtraID: TStringField
      FieldName = 'ExtraID'
      Origin = 'ExtraID'
      FixedChar = True
    end
    object cds_ProdInstructCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProdInstructModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProdInstructDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProdInstructPackageType: TIntegerField
      FieldName = 'PackageType'
      Origin = 'PackageType'
    end
    object cds_ProdInstructWrapType: TIntegerField
      FieldName = 'WrapType'
      Origin = 'WrapType'
    end
    object cds_ProdInstructPressureTreated: TIntegerField
      FieldName = 'PressureTreated'
      Origin = 'PressureTreated'
    end
    object cds_ProdInstructSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdInstructPicture: TStringField
      FieldName = 'Picture'
      Origin = 'Picture'
      Size = 255
    end
    object cds_ProdInstructNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_ProdInstructShrinkWrap: TIntegerField
      FieldName = 'ShrinkWrap'
      Origin = 'ShrinkWrap'
    end
    object cds_ProdInstructPiecesPerMiniBundle: TIntegerField
      FieldName = 'PiecesPerMiniBundle'
      Origin = 'PiecesPerMiniBundle'
    end
    object cds_ProdInstructPackage_Size: TIntegerField
      FieldName = 'Package_Size'
      Origin = 'Package_Size'
    end
    object cds_ProdInstructBILD: TBlobField
      FieldName = 'BILD'
      Origin = 'BILD'
    end
    object cds_ProdInstructCornerProtectionNo: TIntegerField
      FieldName = 'CornerProtectionNo'
      Origin = 'CornerProtectionNo'
    end
    object cds_ProdInstructExternalNote: TMemoField
      FieldName = 'ExternalNote'
      Origin = 'ExternalNote'
      BlobType = ftMemo
    end
    object cds_ProdInstructTruckSticksNo: TIntegerField
      FieldName = 'TruckSticksNo'
      Origin = 'TruckSticksNo'
    end
    object cds_ProdInstructStrapTypeNo: TIntegerField
      FieldName = 'StrapTypeNo'
      Origin = 'StrapTypeNo'
    end
  end
  object cds_LIP: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Distinct LIP.LogicalInventoryPointNo AS LIPNO,'
      'LIP.LogicalInventoryName AS LAGERGRUPP,'
      'PIP.OwnerNo AS OwnerNo,'
      'PIP.PhyInvPointNameNo AS CityNo'
      'FROM dbo.LogicalInventoryPoint LIP'
      
        'Inner Join dbo.PHYSICALINVENTORYPOINT PIP ON PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      'WHERE PIP.SequenceNo = 1'
      'AND LIP.SequenceNo = 1'
      ''
      'Order by LIP.LogicalInventoryName'
      '')
    Left = 416
    Top = 216
    object cds_LIPLIPNO: TIntegerField
      FieldName = 'LIPNO'
      Origin = 'LIPNO'
      Required = True
    end
    object cds_LIPLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      Size = 50
    end
    object cds_LIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_LIPCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
  end
  object cds_Users: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select UserID,'
      'INITIALS+'#39' '#39'+RTrim(LastName) +'#39', '#39'+RTRIM(FirstName) AS Namn'
      'FROM dbo.Users'
      'Order By INITIALS')
    Left = 216
    Top = 216
    object cds_UsersUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UsersNamn: TStringField
      FieldName = 'Namn'
      Origin = 'Namn'
      ReadOnly = True
      Size = 36
    end
  end
  object sqPkgLayoutStd: TADQuery
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select pkg.LayoutNo, pkg.AntalKopior  FROM dbo.PkgLayoutClient p' +
        'kg'
      'WHERE PKG.ClientNo = :ClientNo')
    Left = 680
    Top = 208
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqPkgLayoutStdLayoutNo: TIntegerField
      FieldName = 'LayoutNo'
      Origin = 'LayoutNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqPkgLayoutStdAntalKopior: TIntegerField
      FieldName = 'AntalKopior'
      Origin = 'AntalKopior'
    end
  end
  object cds_ELOLayout: TADQuery
    AfterInsert = cds_ELOLayoutAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SL.* FROM dbo.ELOSpecLayout SL'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanO' +
        'bjectNo = SL.SupplierShipPlanObjectNo'
      'WHERE SSP.ShippingPlanNo = :ShippingPlanNo')
    Left = 520
    Top = 216
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ELOLayoutSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ELOLayoutLayoutNo: TIntegerField
      FieldName = 'LayoutNo'
      Origin = 'LayoutNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ELOLayoutAntalKopior: TIntegerField
      FieldName = 'AntalKopior'
      Origin = 'AntalKopior'
    end
  end
end
