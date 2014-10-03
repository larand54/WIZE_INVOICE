object dm_Booking: Tdm_Booking
  OldCreateOrder = False
  Height = 378
  Width = 819
  object dsShippers: TDataSource
    DataSet = cdsShippers
    Left = 40
    Top = 96
  end
  object dsBooking: TDataSource
    DataSet = cdsBooking
    Left = 136
    Top = 96
  end
  object dsVoyageDestination: TDataSource
    DataSet = cdsVoyageDestination
    Left = 224
    Top = 96
  end
  object dsVoyage: TDataSource
    DataSet = cdsVoyage
    Left = 336
    Top = 96
  end
  object dsAvropInfo: TDataSource
    DataSet = cdsAvropInfo
    Left = 160
    Top = 232
  end
  object dsBookingProducts: TDataSource
    DataSet = cdsBookingProducts
    Left = 336
    Top = 216
  end
  object cdsShippers: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_Shippers'
    Left = 40
    Top = 40
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object cdsShippersClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cdsShippersClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cdsBooking: TFDQuery
    BeforePost = cdsBookingBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from Booking'
      'Where ShippingPlanNo = :ShippingPlanNo')
    Left = 136
    Top = 40
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsBookingBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBookingShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingShippingCompanyBookingID: TStringField
      FieldName = 'ShippingCompanyBookingID'
      Origin = 'ShippingCompanyBookingID'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingVolumeBooked: TFloatField
      FieldName = 'VolumeBooked'
      Origin = 'VolumeBooked'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingRequestedShipDate: TSQLTimeStampField
      FieldName = 'RequestedShipDate'
      Origin = 'RequestedShipDate'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingRequestedShipTime: TSQLTimeStampField
      FieldName = 'RequestedShipTime'
      Origin = 'RequestedShipTime'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingShippersShipTime: TSQLTimeStampField
      FieldName = 'ShippersShipTime'
      Origin = 'ShippersShipTime'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingSupplierReference: TStringField
      FieldName = 'SupplierReference'
      Origin = 'SupplierReference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsBookingFreightCost: TFloatField
      FieldName = 'FreightCost'
      Origin = 'FreightCost'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingFreightCostVolUnit: TIntegerField
      FieldName = 'FreightCostVolUnit'
      Origin = 'FreightCostVolUnit'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingFreightCostCurrency: TIntegerField
      FieldName = 'FreightCostCurrency'
      Origin = 'FreightCostCurrency'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingPreliminaryRequestedPeriod: TStringField
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsBookingLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsBookingInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsBookingNoteForLoadSheet: TMemoField
      FieldName = 'NoteForLoadSheet'
      Origin = 'NoteForLoadSheet'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsBookingVesselOrPort: TStringField
      FieldName = 'VesselOrPort'
      Origin = 'VesselOrPort'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsBookingPanic_Note: TStringField
      FieldName = 'Panic_Note'
      Origin = 'Panic_Note'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object cdsVoyageDestination: TFDQuery
    AfterInsert = cdsVoyageDestinationAfterInsert
    AfterEdit = cdsVoyageDestinationAfterEdit
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from VoyageDestination'
      'Where BookingNo = :BookingNo')
    Left = 224
    Top = 40
    ParamData = <
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsVoyageDestinationBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVoyageDestinationDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVoyageDestinationETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageDestinationStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageDestinationClearedDate: TSQLTimeStampField
      FieldName = 'ClearedDate'
      Origin = 'ClearedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageDestinationCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageDestinationModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageDestinationDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsVoyage: TFDQuery
    AfterInsert = cdsVoyageAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from Voyage'
      'Where VoyageNo = :VoyageNo')
    Left = 336
    Top = 40
    ParamData = <
      item
        Name = 'VOYAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsVoyageVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVoyageCarrierNo: TIntegerField
      FieldName = 'CarrierNo'
      Origin = 'CarrierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageLoadingPortNo: TIntegerField
      FieldName = 'LoadingPortNo'
      Origin = 'LoadingPortNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVoyageCarrier: TStringField
      FieldKind = fkLookup
      FieldName = 'Carrier'
      LookupDataSet = dmsSystem.cdsCarrier
      LookupKeyFields = 'CarrierNo'
      LookupResultField = 'CarrierName'
      KeyFields = 'CarrierNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object cdsAvropInfo: TFDQuery
    AfterScroll = cdsAvropInfoAfterScroll
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT '
      'CSH.ShippingPlanNo, '
      'O.OrderNoText, '
      'CSH.Reference, '
      'CSH.ETDYearWeek, '
      'CSH.ETDWeekEnd, '
      'Ag.ClientName AS Agent, '
      'Cu.ClientName AS Customer,'
      'O.LOText,'
      'CSH.NoteForLoadSheet,'
      'O.InvoiceText,'
      'O.OrderType,'
      'O.DeliveryTermsNo,'
      'O.OrderNo'
      'FROM dbo.CustomerShippingPlanHeader CSH'
      'INNER JOIN dbo.Orders'#9'O'#9'ON O.OrderNo = CSH.OrderNo'
      'INNER JOIN dbo.Client'#9'Cu'#9'ON Cu.ClientNo = CSH.CustomerNo'
      'LEFT JOIN  dbo.Client'#9'Ag'#9'ON Ag.ClientNo = O.AgentNo'#9
      ''
      'WHERE'
      ' CSH.ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 160
    Top = 176
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsAvropInfoShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'OrderType'
      Required = True
    end
    object cdsAvropInfoOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      Required = True
    end
    object cdsAvropInfoReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 30
    end
    object cdsAvropInfoETDYearWeek: TIntegerField
      FieldName = 'ETDYearWeek'
      Origin = 'ETDYearWeek'
    end
    object cdsAvropInfoETDWeekEnd: TIntegerField
      FieldName = 'ETDWeekEnd'
      Origin = 'ETDWeekEnd'
    end
    object cdsAvropInfoAgent: TStringField
      FieldName = 'Agent'
      Origin = 'Agent'
      Size = 80
    end
    object cdsAvropInfoCustomer: TStringField
      FieldName = 'Customer'
      Origin = 'Customer'
      Size = 80
    end
    object cdsAvropInfoLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      BlobType = ftMemo
    end
    object cdsAvropInfoNoteForLoadSheet: TMemoField
      FieldName = 'NoteForLoadSheet'
      Origin = 'NoteForLoadSheet'
      BlobType = ftMemo
    end
    object cdsAvropInfoInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      BlobType = ftMemo
    end
    object cdsAvropInfoOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
    end
    object cdsAvropInfoDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
    end
    object cdsAvropInfoOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      Required = True
    end
  end
  object cdsBookingProducts: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'SPSA.Reference'#9#9'AS REFERENCE, '
      'AD.AddressName'#9#9'AS DEL_ADDRESS,'
      'Supp.ClientName '#9'AS SUPPLIER,'
      'Loc.CityName '#9#9'AS LOADING_LOCATION,'
      'OL.OrderLineDescription'#9'AS PRODUCT_DESCRIPTION,'
      'CSD.LengthDescription'#9'AS LENGTH_DESCRIPTION,'
      'Su.NoOfUnits'#9#9'AS NOOFUNITS,'
      'Un.VolumeUnitName'#9'AS VOLUNIT,'
      'Su.ActualM3Net'#9#9'AS ACTM3,'
      'SPSA.AddressNo'#9#9'AS ADDRESS_NO,'
      'AD.CityNo'#9#9'AS CITY_NO,'
      'Cy.CityName             AS CITY_NAME,'
      'AD.PostalCode           AS POSTALCODE,'
      'OL.Reference            AS KR_Ref,'
      'CSD.CustShipPlanDetailObjectNo AS CSDNO'
      ''
      'FROM dbo.CustomerShippingPlanHeader CSH'
      
        #9'INNER JOIN dbo.CustomerShippingPlanDetails CSD  ON  CSD.Shippin' +
        'gPlanNo           = CSH.ShippingPlanNo'
      
        #9'INNER JOIN dbo.OrderLine OL  '#9#9#9'ON  OL.OrderNo           '#9'= CSD' +
        '.OrderNo'
      #9#9#9#9#9#9#9'AND OL.OrderLineNo           '#9'= CSD.OrderLineNo'
      ''
      'LEFT OUTER JOIN dbo.SupplierShippingPlan Su'
      #9'INNER JOIN dbo.Client'#9#9'Supp'#9#9'ON Supp.ClientNo'#9'='#9'Su.SupplierNo'
      
        #9'Left Outer JOIN dbo.UnitName'#9' Un'#9#9'ON Un.VolumeUnit_No'#9'='#9'Su.Volu' +
        'meUnitNo'
      
        #9'left outer JOIN dbo.City'#9' Loc'#9#9'ON Loc.CityNo'#9#9'='#9'Su.LoadingLocat' +
        'ionNo'
      
        'ON Su.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectN' +
        'o'
      ''
      ''
      ''
      ''
      #9'LEFT OUTER JOIN dbo.ShippingPlan_ShippingAddress SPSA'
      ''
      
        #9'LEFT OUTER JOIN dbo.Address'#9'AD'#9#9#9#9'ON AD.AddressNo '#9'= SPSA.Addre' +
        'ssNo'
      #9'LEFT OUTER JOIN dbo.City'#9'Cy'#9#9#9#9'ON Cy.CityNo'#9#9'= AD.CityNo'
      
        #9'LEFT OUTER JOIN dbo.Country  Co'#9#9#9#9'        ON Co.CountryNo'#9#9'= A' +
        'D.CountryNo'
      ''
      
        #9#9#9#9#9#9#9'                ON  SPSA.ShippingPlanNo           = CSD.S' +
        'hippingPlanNo'
      
        '                                                                ' +
        '        AND SPSA.Reference'#9#9'= CSD.Reference'
      ''
      'WHERE  CSH.ShippingPlanNo = :ShippingPlanNo')
    Left = 336
    Top = 160
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsBookingProductsREFERENCE: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      FixedChar = True
      Size = 50
    end
    object cdsBookingProductsDEL_ADDRESS: TStringField
      DisplayLabel = 'Leveransadress'
      FieldName = 'DEL_ADDRESS'
      Origin = 'DEL_ADDRESS'
      Size = 80
    end
    object cdsBookingProductsSUPPLIER: TStringField
      DisplayLabel = 'Leverant'#246'r'
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 80
    end
    object cdsBookingProductsLOADING_LOCATION: TStringField
      DisplayLabel = 'Lastst'#228'lle'
      FieldName = 'LOADING_LOCATION'
      Origin = 'LOADING_LOCATION'
      Size = 50
    end
    object cdsBookingProductsPRODUCT_DESCRIPTION: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT_DESCRIPTION'
      Origin = 'PRODUCT_DESCRIPTION'
      Size = 100
    end
    object cdsBookingProductsLENGTH_DESCRIPTION: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LENGTH_DESCRIPTION'
      Origin = 'LENGTH_DESCRIPTION'
      FixedChar = True
      Size = 100
    end
    object cdsBookingProductsNOOFUNITS: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'NOOFUNITS'
      Origin = 'NOOFUNITS'
    end
    object cdsBookingProductsVOLUNIT: TStringField
      DisplayLabel = 'Enhet'
      FieldName = 'VOLUNIT'
      Origin = 'VOLUNIT'
      Size = 10
    end
    object cdsBookingProductsACTM3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ACTM3'
      Origin = 'ACTM3'
      DisplayFormat = '#,###,###.000'
    end
    object cdsBookingProductsADDRESS_NO: TIntegerField
      FieldName = 'ADDRESS_NO'
      Origin = 'ADDRESS_NO'
    end
    object cdsBookingProductsCITY_NO: TIntegerField
      FieldName = 'CITY_NO'
      Origin = 'CITY_NO'
    end
    object cdsBookingProductsCITY_NAME: TStringField
      DisplayLabel = 'Ort'
      FieldName = 'CITY_NAME'
      Origin = 'CITY_NAME'
      Size = 50
    end
    object cdsBookingProductsPOSTALCODE: TStringField
      DisplayLabel = 'Postnr'
      FieldName = 'POSTALCODE'
      Origin = 'POSTALCODE'
      FixedChar = True
    end
    object cdsBookingProductsKR_Ref: TStringField
      DisplayLabel = 'KR-Referens'
      FieldName = 'KR_Ref'
      Origin = 'KR_Ref'
      Size = 50
    end
    object cdsBookingProductsCSDNO: TIntegerField
      FieldName = 'CSDNO'
      Origin = 'CSDNO'
      Required = True
    end
  end
  object cds_DocText: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DT.* FROM'
      'dbo.DocumentText DT '
      'WHERE '
      'DT.OrderNo = :OrderNo')
    Left = 456
    Top = 40
    ParamData = <
      item
        Name = 'ORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_DocTextDocTextNo: TIntegerField
      FieldName = 'DocTextNo'
      Origin = 'DocTextNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_DocTextDocText: TMemoField
      DisplayLabel = 'Text'
      FieldName = 'DocText'
      Origin = 'DocText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_DocTextOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_DocTextSortNo: TIntegerField
      FieldName = 'SortNo'
      Origin = 'SortNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_DocText: TDataSource
    DataSet = cds_DocText
    Left = 456
    Top = 96
  end
end
