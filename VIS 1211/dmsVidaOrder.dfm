object dmsOrder: TdmsOrder
  OldCreateOrder = False
  Left = 210
  Top = 157
  Height = 600
  Width = 792
  object tblLoadDetailMatch: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 416
    Top = 16
    object tblLoadDetailMatchLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object tblLoadDetailMatchLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object tblLoadDetailMatchSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
    end
    object tblLoadDetailMatchPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object tblLoadDetailMatchSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
  end
  object dsLoadDetailMatch: TDataSource
    DataSet = tblLoadDetailMatch
    Left = 416
    Top = 64
  end
end
