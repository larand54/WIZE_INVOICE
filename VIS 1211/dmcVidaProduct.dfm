object dmcProduct: TdmcProduct
  OldCreateOrder = False
  Left = 381
  Top = 348
  Height = 258
  Width = 543
  object cdsPackageType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 16
    object cdsPackageTypePhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
    end
    object cdsPackageTypeLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object cdsPackageTypeSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cdsPackageTypeOnSticks: TIntegerField
      FieldName = 'OnSticks'
    end
    object cdsPackageTypeMiniBundled: TIntegerField
      FieldName = 'MiniBundled'
    end
    object cdsPackageTypeGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
    end
    object cdsPackageTypeBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
    end
    object cdsPackageTypePackageHeight: TIntegerField
      FieldName = 'PackageHeight'
    end
    object cdsPackageTypePackageWidth: TIntegerField
      FieldName = 'PackageWidth'
    end
    object cdsPackageTypeWrapType: TIntegerField
      FieldName = 'WrapType'
    end
  end
  object dsrcPackageType: TDataSource
    DataSet = cdsPackageType
    Left = 48
    Top = 64
  end
  object cdsProductGroups: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 16
    object cdsProductGroupsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cdsProductGroupsProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
    end
    object cdsProductGroupsSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Size = 30
    end
    object cdsProductGroupsSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Size = 30
    end
    object cdsProductGroupsActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object cdsProductGroupsActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object cdsProductGroupsNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
    end
    object cdsProductGroupsNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
    end
  end
  object dsrcProductGroups: TDataSource
    DataSet = cdsProductGroups
    Left = 192
    Top = 64
  end
  object cdsPackages: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 16
    object cdsPackagesPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cdsPackagesBoolOnSticks: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'BoolOnSticks'
      Calculated = True
    end
    object cdsPackagesProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object cdsPackagesTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
    end
    object cdsPackagesTotalM3Actual: TFloatField
      FieldName = 'TotalM3Actual'
    end
    object cdsPackagesPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
    object cdsPackagesLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object cdsPackagesGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
    end
    object cdsPackagesBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
    end
    object cdsPackagesWrapType: TIntegerField
      FieldName = 'WrapType'
    end
    object cdsPackagesPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
    end
    object cdsPackagesPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
    end
    object cdsPackagesboolMiniBundled: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'boolMiniBundled'
      Calculated = True
    end
    object cdsPackagesboolShrinkWrap: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'boolShrinkWrap'
      Calculated = True
    end
  end
  object dsrcPackages: TDataSource
    DataSet = cdsPackages
    Left = 336
    Top = 64
  end
end
