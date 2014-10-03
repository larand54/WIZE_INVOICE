object dmcInventory: TdmcInventory
  OldCreateOrder = False
  Left = 433
  Top = 181
  Height = 150
  Width = 215
  object cdsPkgsByInvOwner: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 8
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
  end
  object dsrcPkgsByInvOwner: TDataSource
    DataSet = cdsPkgsByInvOwner
    Left = 64
    Top = 56
  end
end
