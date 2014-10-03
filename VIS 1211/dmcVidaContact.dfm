object dmcContact: TdmcContact
  OldCreateOrder = False
  Left = 183
  Top = 157
  Height = 457
  Width = 862
  object cdsShippers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 24
    object cdsShippersClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cdsShippersClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object dsrcShippers: TDataSource
    DataSet = cdsShippers
    Left = 200
    Top = 72
  end
  object cdsOwners: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 160
    object cdsOwnersClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cdsOwnersClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cdsOwnersClientCode: TStringField
      FieldName = 'ClientCode'
      Size = 3
    end
    object cdsOwnersSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
  end
  object dsrcOwners: TDataSource
    DataSet = cdsOwners
    Left = 48
    Top = 208
  end
  object cdsProducers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 160
    object cdsProducersClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cdsProducersClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object dsrcProducers: TDataSource
    DataSet = cdsProducers
    Left = 200
    Top = 208
  end
  object cdsCustomers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 272
    object cdsCustomersClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cdsCustomersClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
end
