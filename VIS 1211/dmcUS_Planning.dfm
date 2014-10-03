object dmUS_Planning: TdmUS_Planning
  OldCreateOrder = False
  Left = 200
  Top = 157
  Height = 516
  Width = 758
  object sq_Inventory: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'SalesRegion'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      
        '--LTRIM(STR(pt.PackageTypeNo)) + '#39','#39' + LTRIM(STR(ipt.LogicalInve' +
        'ntoryPointNo)) AS PKValue,'
      '(SELECT ISNULL(SUM(CSD.NoOfUnits),0)'
      'FROM '
      ' dbo.OrderLine'#9#9'OL'#9#9#9' '
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.OrderNo =' +
        ' OL.OrderNo'
      #9#9#9#9#9#9'AND'#9'CSD.OrderLineNo = OL.OrderLineNo'
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON'#9'CSH.ShippingPla' +
        'nNo = CSD.ShippingPlanNo'
      'WHERE'
      'OL.PackageCode'#9'= pcd.PackageCodeNo'
      'AND CSH.ShippingPlanStatus = 1) AS TOSHIP,'
      ''
      '(SELECT ISNULL(COUNT(LD.PACKAGENO),0)'
      ' FROM'
      ' dbo.Loaddetail LD'
      
        ' INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON'#9'CSH.ShippingPl' +
        'anNo = LD.ShippingPlanNo'
      
        '--INNER JOIN dbo.CustomerShippingPlanDetails CSD LDP.CustShipPla' +
        'nDetailObjectNo = CSD.CustShipPlanDetailObjectNo'
      ' WHERE'
      ' LD.PackageTypeNo  = pt.PackageTypeNo'
      ' AND CSH.ShippingPlanStatus = 1) AS SHIPPED,'
      ''
      ''
      ''
      'ipt.NoOfPackages AS INV_PKGS, '
      'pcd.PackageCodeNo, '
      ''
      'pt.PackageTypeNo, '
      'cl.ClientCode, '
      'lip.LogicalInventoryName, '
      'pd.ProductDisplayName, '
      'bc.BarCode AS BarCodeID, '
      'pg.ProductGroupNo, '
      ''
      'pip.OwnerNo, '
      'cl.SalesRegionNo, '
      ''
      'pcd.PackageMainCode, '
      ''
      'pt.ProductNo, '
      'ipt.MinLevel, '
      'ipt.MaxLevel, '
      'msp.Price, '
      'ipt.LogicalInventoryPointNo, '
      'pg.ActualThicknessMM, '
      'pg.ActualWidthMM,'
      'pt.TotalNoOfPieces'
      ''
      ''
      'FROM dbo.Client cl'
      
        'INNER JOIN dbo.PhysicalInventoryPoint pip '#9'ON pip.OwnerNo = cl.C' +
        'lientNo'
      ''
      
        'INNER JOIN dbo.LogicalInventoryPoint lip '#9'ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo '
      ''
      
        'INNER JOIN dbo.InventoryByPackageType ipt '#9'ON ipt.LogicalInvento' +
        'ryPointNo = lip.LogicalInventoryPointNo '
      ''
      
        'INNER JOIN dbo.PackageType pt '#9#9#9'ON pt.PackageTypeNo = ipt.Packa' +
        'geTypeNo'
      
        'INNER JOIN dbo.PackageTypeDetail ptd '#9#9'ON ptd.PackageTypeNo = pt' +
        '.PackageTypeNo'
      
        'INNER JOIN dbo.ProductLength prl '#9#9'ON prl.ProductLengthNo = ptd.' +
        'ProductLengthNo'
      'INNER JOIN dbo.Product pd '#9#9#9'ON pt.ProductNo = pd.ProductNo '
      
        'INNER JOIN dbo.ProductGroup pg '#9#9#9'ON pd.ProductGroupNo = pg.Prod' +
        'uctGroupNo '
      ''
      ''
      ''
      
        'LEFT OUTER JOIN dbo.PackageCode pcd '#9#9'ON pcd.PackageTypeNo = pt.' +
        'PackageTypeNo '
      
        'LEFT OUTER JOIN dbo.BarCode bc '#9#9#9'ON bc.BarCodeNo = pt.BarCodeID' +
        ' '
      
        'LEFT OUTER JOIN dbo.MinimumSalesPrice msp '#9'ON msp.PackageTypeNo ' +
        '= pt.PackageTypeNo '
      #9#9#9#9#9#9'AND cl.SalesRegionNo = msp.SalesRegionNo'
      ''
      ''
      'where cl.ClientNo = :SalesRegion'
      ''
      ''
      'group by'
      'pt.PackageTypeNo, '
      'cl.ClientCode, '
      'lip.LogicalInventoryName, '
      'pd.ProductDisplayName, '
      'prl.ActualLengthMM,'
      'bc.BarCode, '
      'pg.ProductGroupNo, '
      ''
      'pip.OwnerNo, '
      'cl.SalesRegionNo, '
      'ipt.NoOfPackages, '
      'pcd.PackageMainCode, '
      'pcd.PackageCodeNo, '
      'pt.ProductNo, '
      'ipt.MinLevel, '
      'ipt.MaxLevel, '
      'msp.Price, '
      'ipt.LogicalInventoryPointNo, '
      'pg.ActualThicknessMM, '
      'pg.ActualWidthMM,'
      'pt.TotalNoOfPieces'
      ''
      ''
      'ORDER BY pd.ProductDisplayName')
    Left = 64
    Top = 32
  end
  object dspInventory: TDataSetProvider
    DataSet = sq_Inventory
    Constraints = True
    Left = 64
    Top = 80
  end
  object cdsInventory: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInventory'
    OnCalcFields = cdsInventoryCalcFields
    Left = 64
    Top = 128
    object cdsInventoryTOSHIP: TFloatField
      FieldName = 'TOSHIP'
    end
    object cdsInventorySHIPPED: TIntegerField
      FieldName = 'SHIPPED'
    end
    object cdsInventoryINV_PKGS: TIntegerField
      FieldName = 'INV_PKGS'
    end
    object cdsInventoryPackageCodeNo: TStringField
      FieldName = 'PackageCodeNo'
    end
    object cdsInventoryPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object cdsInventoryClientCode: TStringField
      FieldName = 'ClientCode'
      Size = 3
    end
    object cdsInventoryLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object cdsInventoryProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object cdsInventoryBarCodeID: TStringField
      FieldName = 'BarCodeID'
    end
    object cdsInventoryProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object cdsInventoryOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object cdsInventorySalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object cdsInventoryPackageMainCode: TStringField
      FieldName = 'PackageMainCode'
    end
    object cdsInventoryProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cdsInventoryMinLevel: TIntegerField
      FieldName = 'MinLevel'
    end
    object cdsInventoryMaxLevel: TIntegerField
      FieldName = 'MaxLevel'
    end
    object cdsInventoryPrice: TFloatField
      FieldName = 'Price'
    end
    object cdsInventoryLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object cdsInventoryActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object cdsInventoryActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object cdsInventoryTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
    end
    object cdsInventoryNet_To_Sell: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net_To_Sell'
      Calculated = True
    end
    object cdsInventoryCOMMITTED: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMMITTED'
      Calculated = True
    end
  end
  object dsInventory: TDataSource
    DataSet = memInventory
    Left = 64
    Top = 224
  end
  object memInventory: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '3.05'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 64
    Top = 176
    object memInventoryTOSHIP: TFloatField
      FieldName = 'TOSHIP'
      DisplayFormat = '#.0'
    end
    object memInventorySHIPPED: TIntegerField
      FieldName = 'SHIPPED'
    end
    object memInventoryINV_PKGS: TIntegerField
      DisplayLabel = 'ON HAND'
      FieldName = 'INV_PKGS'
    end
    object memInventoryPackageCodeNo: TStringField
      FieldName = 'PackageCodeNo'
    end
    object memInventoryPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object memInventoryClientCode: TStringField
      FieldName = 'ClientCode'
      Size = 5
    end
    object memInventoryLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object memInventoryProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object memInventoryBarCodeID: TStringField
      FieldName = 'BarCodeID'
    end
    object memInventoryProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object memInventoryOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object memInventorySalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object memInventoryPackageMainCode: TStringField
      FieldName = 'PackageMainCode'
    end
    object memInventoryProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object memInventoryMinLevel: TIntegerField
      FieldName = 'MinLevel'
    end
    object memInventoryMaxLevel: TIntegerField
      FieldName = 'MaxLevel'
    end
    object memInventoryPrice: TFloatField
      FieldName = 'Price'
    end
    object memInventoryLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object memInventoryActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
    end
    object memInventoryActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
    end
    object memInventoryTotalNoOfPieces: TIntegerField
      DisplayLabel = 'PCS/PKG'
      FieldName = 'TotalNoOfPieces'
    end
    object memInventoryNet_To_Sell: TFloatField
      DisplayLabel = 'NET TO SELL'
      FieldName = 'Net_To_Sell'
      DisplayFormat = '#.0'
    end
    object memInventoryCOMMITTED: TFloatField
      FieldName = 'COMMITTED'
      DisplayFormat = '#.0'
    end
    object memInventoryPASTDUE: TFloatField
      FieldName = 'PASTDUE'
      DisplayFormat = '#.0'
    end
    object memInventoryWEEK_1: TFloatField
      FieldName = 'WEEK_1'
      DisplayFormat = '#.0'
    end
    object memInventoryWEEK_2: TFloatField
      FieldName = 'WEEK_2'
      DisplayFormat = '#.0'
    end
    object memInventoryWEEK_3: TFloatField
      FieldName = 'WEEK_3'
      DisplayFormat = '#.0'
    end
    object memInventoryWEEK_4: TFloatField
      FieldName = 'WEEK_4'
      DisplayFormat = '#.0'
    end
  end
  object memCommittedWeek: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'WeekNo'
        DataType = ftInteger
      end
      item
        Name = 'NoOfPkg'
        DataType = ftFloat
      end>
    IndexFieldNames = 'PackageTypeNo;WeekNo'
    IndexName = 'memCommittedWeekIndex1'
    IndexDefs = <
      item
        Name = 'memCommittedWeekIndex1'
        Fields = 'PackageTypeNo;WeekNo'
        Options = [ixPrimary, ixUnique]
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '3.05'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 496
    Top = 88
    object memCommittedWeekPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object memCommittedWeekWeekNo: TIntegerField
      FieldName = 'WeekNo'
    end
    object memCommittedWeekNoOfPkg: TFloatField
      FieldName = 'NoOfPkg'
    end
  end
  object sq_CommittedPerWeek: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'SalesRegionNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct CSH.ETDYearWeek,'
      
        '--LTRIM(STR(pt.PackageTypeNo)) + '#39','#39' + LTRIM(STR(ipt.LogicalInve' +
        'ntoryPointNo)) AS PKValue,'
      'ISNULL(SUM(CSD.NoOfUnits),0)-'
      ''
      '(SELECT ISNULL(COUNT(LD.PACKAGENO),0)'
      ' FROM'
      ' dbo.Loaddetail LD'#9#9#9
      ' INNER JOIN dbo.Loads'#9#9#9'   L'#9'ON'#9'L.LoadNo = LD.LoadNo'
      ''
      
        ' INNER JOIN dbo.CustomerShippingPlanHeader CSH2'#9'ON'#9'CSH2.Shipping' +
        'PlanNo = LD.ShippingPlanNo'
      ' INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo = CSH2.OrderNo'
      
        '-- INNER JOIN dbo.CustomerShippingPlanDetails CSD LDP.CustShipPl' +
        'anDetailObjectNo = CSD.CustShipPlanDetailObjectNo'
      ' WHERE'
      ' LD.PackageTypeNo  = pt.PackageTypeNo'
      ' AND LD.ShippingPlanNo = CSH2.ShippingPlanNo'
      'AND CSH2.ETDYearWeek = CSH.ETDYearWeek'
      '-- AND L.Loadcl.ClientNo'
      ' AND CSH2.ShippingPlanStatus = 1'
      'AND O.SalesRegionNo = cl.ClientNo'
      ') AS COMMITED,'
      ''
      ''
      ''
      ''
      ''
      'pcd.PackageCodeNo, '
      ''
      'pt.PackageTypeNo, '
      ''
      'pd.ProductDisplayName, '
      ''
      'pip.OwnerNo, '
      'cl.SalesRegionNo ,'
      'CSH.ETDYearWeek,'
      'CSH.ETDWeekEnd'
      ''
      ''
      ''
      ''
      'FROM dbo.Client cl '#9#9#9
      
        'INNER JOIN dbo.PhysicalInventoryPoint pip '#9'ON pip.OwnerNo = cl.C' +
        'lientNo '
      ''
      
        'INNER JOIN dbo.LogicalInventoryPoint lip '#9'ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo '
      ''
      
        'INNER JOIN dbo.InventoryByPackageType ipt '#9'ON ipt.LogicalInvento' +
        'ryPointNo = lip.LogicalInventoryPointNo '
      ''
      
        'INNER JOIN dbo.PackageType pt '#9#9#9'ON pt.PackageTypeNo = ipt.Packa' +
        'geTypeNo'
      ''
      ''
      'INNER JOIN dbo.Product pd '#9#9#9'ON pt.ProductNo = pd.ProductNo '
      
        'INNER JOIN dbo.ProductGroup pg '#9#9#9'ON pd.ProductGroupNo = pg.Prod' +
        'uctGroupNo '
      ''
      ''
      
        'LEFT OUTER JOIN dbo.PackageCode pcd '#9#9'ON pcd.PackageTypeNo = pt.' +
        'PackageTypeNo '
      
        'LEFT OUTER JOIN dbo.BarCode bc '#9#9#9'ON bc.BarCodeNo = pt.BarCodeID' +
        ' '
      
        'LEFT OUTER JOIN dbo.MinimumSalesPrice msp '#9'ON msp.PackageTypeNo ' +
        '= pt.PackageTypeNo '
      #9#9#9#9#9#9'AND cl.SalesRegionNo = msp.SalesRegionNo'
      ''
      
        'INNER JOIN dbo.OrderLine'#9#9'OL'#9'ON '#9'OL.PackageCode'#9'= pcd.PackageCod' +
        'eNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.OrderNo =' +
        ' OL.OrderNo'
      #9#9#9#9#9#9'AND'#9'CSD.OrderLineNo = OL.OrderLineNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON'#9'CSH.ShippingPla' +
        'nNo = CSD.ShippingPlanNo'
      ''
      'INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo = CSH.OrderNo'
      ''
      ''
      ''
      ''
      'where cl.ClientNo = :SalesRegionNo'
      'AND CSH.ShippingPlanStatus = 1'
      'AND O.SalesRegionNo = cl.ClientNo'
      '--AND CSH.ETDYearWeek = 313'
      ''
      'group by'
      'CSH.ETDYearWeek,'
      'CSH.ETDWeekEnd,'
      'pt.PackageTypeNo,'
      'cl.ClientCode,'
      'lip.LogicalInventoryName,'
      'pd.ProductDisplayName,'
      ''
      'pg.ProductGroupNo,'
      ''
      'pip.OwnerNo,'
      'cl.SalesRegionNo,'
      'ipt.NoOfPackages,'
      'pcd.PackageMainCode,'
      'pcd.PackageCodeNo,'
      ''
      ''
      'cl.ClientNo, CSH.ETDYearWeek'
      ''
      ''
      'ORDER BY CSH.ETDYearWeek, pd.ProductDisplayName')
    Left = 464
    Top = 24
  end
  object sq_PastDue: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'SalesRegionNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WeekPastDue'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct '
      
        '--LTRIM(STR(pt.PackageTypeNo)) + '#39','#39' + LTRIM(STR(ipt.LogicalInve' +
        'ntoryPointNo)) AS PKValue,'
      'ISNULL(SUM(CSD.NoOfUnits),0)-'
      ''
      '(SELECT ISNULL(COUNT(LD.PACKAGENO),0)'
      ' FROM'
      ' dbo.Loaddetail LD'#9#9#9
      ' INNER JOIN dbo.Loads'#9#9#9'   L'#9'ON'#9'L.LoadNo = LD.LoadNo'
      ''
      
        ' INNER JOIN dbo.CustomerShippingPlanHeader CSH2'#9'ON'#9'CSH2.Shipping' +
        'PlanNo = LD.ShippingPlanNo'
      ' INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo = CSH2.OrderNo'
      
        '-- INNER JOIN dbo.CustomerShippingPlanDetails CSD LDP.CustShipPl' +
        'anDetailObjectNo = CSD.CustShipPlanDetailObjectNo'
      ' WHERE'
      ' LD.PackageTypeNo  = pt.PackageTypeNo'
      ' AND LD.ShippingPlanNo = CSH2.ShippingPlanNo'
      '--AND CSH2.ETDYearWeek = CSH.ETDYearWeek'
      '-- AND L.Loadcl.ClientNo'
      ' AND CSH2.ShippingPlanStatus = 1'
      'AND O.SalesRegionNo = cl.ClientNo'
      ') AS COMMITED,'
      ''
      ''
      ''
      ''
      ''
      'pcd.PackageCodeNo, '
      ''
      'pt.PackageTypeNo, '
      ''
      'pd.ProductDisplayName, '
      ''
      'pip.OwnerNo, '
      'cl.SalesRegionNo '
      ''
      ''
      ''
      ''
      'FROM dbo.Client cl '#9#9#9
      
        'INNER JOIN dbo.PhysicalInventoryPoint pip '#9'ON pip.OwnerNo = cl.C' +
        'lientNo '
      ''
      
        'INNER JOIN dbo.LogicalInventoryPoint lip '#9'ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo '
      ''
      
        'INNER JOIN dbo.InventoryByPackageType ipt '#9'ON ipt.LogicalInvento' +
        'ryPointNo = lip.LogicalInventoryPointNo '
      ''
      
        'INNER JOIN dbo.PackageType pt '#9#9#9'ON pt.PackageTypeNo = ipt.Packa' +
        'geTypeNo'
      ''
      ''
      'INNER JOIN dbo.Product pd '#9#9#9'ON pt.ProductNo = pd.ProductNo '
      
        'INNER JOIN dbo.ProductGroup pg '#9#9#9'ON pd.ProductGroupNo = pg.Prod' +
        'uctGroupNo '
      ''
      ''
      
        'LEFT OUTER JOIN dbo.PackageCode pcd '#9#9'ON pcd.PackageTypeNo = pt.' +
        'PackageTypeNo '
      
        'LEFT OUTER JOIN dbo.BarCode bc '#9#9#9'ON bc.BarCodeNo = pt.BarCodeID' +
        ' '
      
        'LEFT OUTER JOIN dbo.MinimumSalesPrice msp '#9'ON msp.PackageTypeNo ' +
        '= pt.PackageTypeNo '
      #9#9#9#9#9#9'AND cl.SalesRegionNo = msp.SalesRegionNo'
      ''
      
        'INNER JOIN dbo.OrderLine'#9#9'OL'#9'ON '#9'OL.PackageCode'#9'= pcd.PackageCod' +
        'eNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON '#9'CSD.OrderNo =' +
        ' OL.OrderNo'
      #9#9#9#9#9#9'AND'#9'CSD.OrderLineNo = OL.OrderLineNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CSH'#9'ON'#9'CSH.ShippingPla' +
        'nNo = CSD.ShippingPlanNo'
      ''
      'INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo = CSH.OrderNo'
      ''
      ''
      ''
      ''
      'where cl.ClientNo = :SalesRegionNo'
      'AND CSH.ShippingPlanStatus = 1'
      'AND O.SalesRegionNo = cl.ClientNo'
      'AND CSH.ETDYearWeek <= :WeekPastDue'
      ''
      'group by'
      '--CSH.ETDYearWeek,'
      'pt.PackageTypeNo,'
      'cl.ClientCode,'
      'lip.LogicalInventoryName,'
      'pd.ProductDisplayName,'
      ''
      'pg.ProductGroupNo,'
      ''
      'pip.OwnerNo,'
      'cl.SalesRegionNo,'
      'ipt.NoOfPackages,'
      'pcd.PackageMainCode,'
      'pcd.PackageCodeNo,'
      ''
      ''
      'cl.ClientNo'
      ''
      ''
      'ORDER BY pd.ProductDisplayName')
    Left = 552
    Top = 24
  end
  object memCommittedPastDue: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'NoOfPkg'
        DataType = ftFloat
      end>
    IndexFieldNames = 'PackageTypeNo'
    IndexName = 'memCommittedPastDueIndex1'
    IndexDefs = <
      item
        Name = 'memCommittedPastDueIndex1'
        Fields = 'PackageTypeNo'
        Options = [ixPrimary, ixUnique]
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '3.05'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 632
    Top = 88
    object memCommittedPastDuePackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object memCommittedPastDueNoOfPkg: TFloatField
      FieldName = 'NoOfPkg'
    end
  end
  object sq_Vessels: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'SalesRegionNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      'CSH.ShippingPlanNo,'
      'isNull(Cr.CarrierName,'#39' '#39')'#9#9#9'AS VESSEL,'#9#9'-- Char 50'
      'Vg.ETD'#9#9#9#9#9#9'AS ETD,'#9#9#9'-- DateTime'
      'Vd.ETA'#9#9#9#9#9#9'AS ETA,'#9#9#9'-- DateTime'
      
        'Vg.LoadingPortNo                                AS LOADINGPORTNO' +
        ','
      'CASE'
      'WHEN SHIPPINGPLANSTATUS = 0 THEN '#39'PLAN'#39
      'WHEN SHIPPINGPLANSTATUS = 1 THEN '#39'PROGRESS'#39
      'WHEN SHIPPINGPLANSTATUS = 2 THEN '#39'ARRIVED'#39
      'END AS STATUS'
      ''
      ''
      ''
      ''
      'FROM '
      'dbo.CustomerShippingPlanHeader CSH'#9
      ''
      
        '--'#9'INNER JOIN ShippingPlan_ShippingAddress SSAD'#9'ON '#9'SSAD.Shippin' +
        'gPlanNo = CSH.ShippingPlanNo'
      '--'#9'INNER JOIN Address'#9'ADDR'#9#9#9'ON'#9'ADDR.ADDRESSNO'#9'= SSAD.ADDRESSNO'
      '--'#9'INNER JOIN dbo.City'#9'Cy '#9#9#9'ON  '#9'ADDR.CityNo'#9'= Cy.CityNo'
      #9#9#9#9#9#9#9
      #9#9#9#9#9#9#9
      ''
      '       '#9'LEFT OUTER JOIN dbo.Booking'#9#9'Bk'
      
        #9'LEFT OUTER JOIN dbo.VoyageDestination'#9'VD '#9'ON  '#9'Bk.BookingNo'#9#9'= ' +
        'vd.BookingNo'
      #9'Left Outer JOIN dbo.Voyage'#9#9'Vg '#9'ON  '#9'Bk.VoyageNo'#9#9'= Vg.VoyageNo'
      
        #9'Left outer JOIN dbo.Carrier            '#9'Cr '#9'ON  '#9'Vg.CarrierNo  ' +
        '  '#9'= Cr.CarrierNo'
      #9#9#9#9#9#9#9'ON  '#9'CSH.ShippingPlanNo '#9'= Bk.ShippingPlanNo'
      ''
      ''
      ''
      'WHERE'
      'CSH.CustomerNo = :SalesRegionNo'
      'AND CSH.SHIPPINGPLANSTATUS <> 2'
      '--AND ADDR.CityNo = 482'
      '--cl.ClientNo = 1042'
      ''
      'ORDER BY Vd.ETA')
    Left = 632
    Top = 24
    object sq_VesselsShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
    end
    object sq_VesselsVESSEL: TStringField
      FieldName = 'VESSEL'
      Size = 50
    end
    object sq_VesselsETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object sq_VesselsETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object sq_VesselsLOADINGPORTNO: TIntegerField
      FieldName = 'LOADINGPORTNO'
    end
    object sq_VesselsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 8
    end
  end
  object sq_AvropProduct: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'ShippingPlanNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      'pcd.PackageCodeNo'#9#9'AS PKG_CODE, '
      'pd.ProductDisplayName'#9#9'AS DESCRIPTION, '
      'bc.BarCode '#9#9#9'AS BARCODE, '
      'pt.TotalNoOfPieces'#9#9'AS PCSPKG,'
      'CSD.NoOfUnits'#9#9#9'AS PLANNED_PKG,'
      'pt.PackageTypeNo'#9#9'AS PACKAGETYPENO,'
      'Vd.ETA'#9#9#9#9'AS ETA,'
      'CSD.CustShipPlanDetailObjectNo'
      ''
      'FROM'
      'dbo.CustomerShippingPlanHeader CSH'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD'#9'ON CSD.ShippingPl' +
        'anNo = CSH.ShippingPlanNo'
      'INNER JOIN dbo.Orders O'#9#9#9#9'ON'#9'O.OrderNo = CSH.OrderNo'
      'INNER JOIN dbo.OrderLine'#9#9'OL'#9'ON '#9'OL.OrderNo = CSD.OrderNo'
      #9#9#9#9#9#9'AND'#9'OL.OrderLineNo = CSD.OrderLineNo'
      'INNER JOIN dbo.Client cl '#9#9#9'ON '#9'cl.ClientNo = CSH.CustomerNo'
      
        'INNER JOIN dbo.PackageType pt '#9#9#9'ON '#9'pt.PackageTypeNo = OL.Packa' +
        'geTypeNo'
      'INNER JOIN dbo.Product pd '#9#9#9'ON '#9'pt.ProductNo = pd.ProductNo'
      
        'INNER JOIN dbo.ProductGroup pg '#9#9#9'ON '#9'pd.ProductGroupNo = pg.Pro' +
        'ductGroupNo'
      ''
      ''
      
        'LEFT OUTER JOIN dbo.PackageCode pcd '#9#9'ON '#9'pcd.PackageTypeNo = pt' +
        '.PackageTypeNo'
      
        'LEFT OUTER JOIN dbo.BarCode bc '#9#9#9'ON '#9'bc.BarCodeNo = pt.BarCodeI' +
        'D'
      ''
      '       '#9'LEFT OUTER JOIN dbo.Booking'#9#9'Bk'
      
        #9'LEFT OUTER JOIN dbo.VoyageDestination'#9'VD '#9'ON  '#9'Bk.BookingNo'#9#9'= ' +
        'vd.BookingNo'
      #9#9#9#9#9#9#9'ON  '#9'CSH.ShippingPlanNo '#9'= Bk.ShippingPlanNo'
      ''
      ''
      ''
      ''
      ''
      'WHERE'
      'CSH.ShippingPlanNo = :ShippingPlanNo'
      ''
      'ORDER BY pd.ProductDisplayName')
    Left = 168
    Top = 32
  end
  object cdsAvropProduct: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAvropProduct'
    Left = 168
    Top = 128
    object cdsAvropProductPKG_CODE: TStringField
      FieldName = 'PKG_CODE'
    end
    object cdsAvropProductDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object cdsAvropProductBARCODE: TStringField
      FieldName = 'BARCODE'
    end
    object cdsAvropProductPCSPKG: TIntegerField
      FieldName = 'PCSPKG'
    end
    object cdsAvropProductPLANNED_PKG: TFloatField
      FieldName = 'PLANNED_PKG'
    end
    object cdsAvropProductPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object cdsAvropProductETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object cdsAvropProductCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
  end
  object dspAvropProduct: TDataSetProvider
    DataSet = sq_AvropProduct
    Constraints = True
    Left = 168
    Top = 80
  end
  object memAvropProduct: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PKG_CODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'BARCODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PCSPKG'
        DataType = ftInteger
      end
      item
        Name = 'PLANNED_PKG'
        DataType = ftFloat
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'NOOFPKGLOADED'
        DataType = ftFloat
      end
      item
        Name = 'NOOFPKGSONHAND'
        DataType = ftFloat
      end
      item
        Name = 'NOOFPKGAVAILABLE'
        DataType = ftFloat
      end
      item
        Name = 'NOOFPKGIN_LO'
        DataType = ftFloat
      end
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
      end
      item
        Name = 'ETA_WEEKNO'
        DataType = ftInteger
      end
      item
        Name = 'ETA'
        DataType = ftTimeStamp
      end>
    IndexFieldNames = 'PACKAGETYPENO;ETA_WEEKNO'
    IndexName = 'memAvropProductIndex2'
    IndexDefs = <
      item
        Name = 'memAvropProductIndex1'
        Fields = 'SHIPPINGPLANNO;PACKAGETYPENO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'memAvropProductIndex2'
        Fields = 'PACKAGETYPENO;ETA_WEEKNO'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '3.05'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 168
    Top = 176
    object memAvropProductPKG_CODE: TStringField
      FieldName = 'PKG_CODE'
    end
    object memAvropProductDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object memAvropProductBARCODE: TStringField
      FieldName = 'BARCODE'
    end
    object memAvropProductPCSPKG: TIntegerField
      FieldName = 'PCSPKG'
    end
    object memAvropProductPLANNED_PKG: TFloatField
      FieldName = 'PLANNED_PKG'
    end
    object memAvropProductPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object memAvropProductNOOFPKGLOADED: TFloatField
      FieldName = 'NOOFPKGLOADED'
    end
    object memAvropProductNOOFPKGSONHAND: TFloatField
      FieldName = 'NOOFPKGSONHAND'
    end
    object memAvropProductNOOFPKGAVAILABLE: TFloatField
      FieldName = 'NOOFPKGAVAILABLE'
    end
    object memAvropProductNOOFPKGIN_LO: TFloatField
      FieldName = 'NOOFPKGIN_LO'
    end
    object memAvropProductSHIPPINGPLANNO: TIntegerField
      FieldName = 'SHIPPINGPLANNO'
    end
    object memAvropProductETA_WEEKNO: TIntegerField
      FieldName = 'ETA_WEEKNO'
    end
    object memAvropProductETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object memAvropProductCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
  end
  object dsAvropProduct: TDataSource
    DataSet = memAvropProduct
    OnDataChange = dsAvropProductDataChange
    Left = 168
    Top = 224
  end
  object sq_LoadOrder: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'CustShipPlanDetailObjectNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'SP.CustShipPlanDetailObjectNo,'
      
        '         SP.ShippingPlanStatus,                           -- Int' +
        'eger'
      '         SP.ShippingPlanNo           AS LO,         -- Integer'
      
        '         SP.PackageCode              AS PKGCode,          -- Cha' +
        'r 10'
      
        '         SP.ProductDescription       AS PRODUCT,          -- Cha' +
        'r 100'
      
        '         SP.LengthDescription        AS LENGTH,           -- Cha' +
        'r 100'
      
        '         SP.NoOfUnits                AS NOOFUNITS,           -- ' +
        'Float'
      
        '         SP.SupplierShipPlanObjectNo,                     -- Int' +
        'eger'
      
        '         SP.ShowInGrid,                                   -- Sma' +
        'llInt'
      
        '         UN.VolumeUnitName           AS VOL_UNIT,         -- Var' +
        'Char 10'
      
        '      '#9' CL.ClientName               AS SUPPLIER,       -- LARS V' +
        'arChar 80'
      
        '         SP.SupplierNo               AS SUPPLIERNO,        -- In' +
        'teger'
      
        '         SP.ObjectType,                                  -- Inte' +
        'ger'
      
        '         SP.Price'#9#9#9'AS PRICE,                               -- F' +
        'loat'
      
        '         SP.CustomerShowInGrid,                          -- Smal' +
        'lInt'
      ''
      '(SELECT '
      'CASE '
      '-- use sub query to get volume if  not packages'
      
        'WHEN  UN.VolumeUnitName = '#39'Packages'#39' THEN COUNT( DISTINCT LD.LOA' +
        'DDETAILNO)'
      'WHEN  UN.VolumeUnitName = '#39'm3 FDxaL'#39' THEN SUM(PTD.m3Actual)'
      'WHEN  UN.VolumeUnitName = '#39'm3 nDxnL'#39' THEN SUM(PTD.m3Nominal)'
      
        'WHEN  UN.VolumeUnitName = '#39'Lopm a'#39' THEN SUM(PTD.LinealMeterActua' +
        'lLength)'
      'WHEN  UN.VolumeUnitName = '#39'Stycketal'#39' THEN SUM(PTD.NoOfPieces)'
      'END'
      ''
      ''
      ''
      
        'FROM dbo.LoaddetailPkgLength LDP, dbo.PackageTypeDetail PTD, dbo' +
        '.Loaddetail LD, dbo.Loads lo'
      'WHERE'
      'LDP.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo'
      'AND LD.LoadDetailNo = LDP.LoadDetailNo'
      'AND LD.LoadNo = LDP.LoadNo'
      ''
      'and lo.loadno = ldp.loadno'
      'and lo.supplierno = sp.supplierno'
      ''
      'AND LD.ShippingPlanNo = SP.SHIPPINGPLANNO'
      'AND PTD.PackageTypeNo  = LD.PackageTypeNo '
      'AND PTD.ProductLengthNo  = LDP.ProductLengthNo) AS DELIVERED'
      '         '
      ''
      ''
      'FROM            dbo.SupplierShippingPlan       SP   '
      
        '       INNER JOIN dbo.Client                     CL   ON  CL.Cli' +
        'entNo              = SP.SupplierNo            '
      
        '       INNER JOIN dbo.UnitName                   UN   ON  SP.Vol' +
        'umeUnitNo            = UN.VolumeUnit_No'
      ''
      ''
      
        'WHERE  SP.CustShipPlanDetailObjectNo = :CustShipPlanDetailObject' +
        'No'
      '  AND  SP.ShowInGrid         =  0'
      ''
      ''
      'ORDER BY  CL.ClientName')
    Left = 272
    Top = 32
  end
  object dspLoadOrder: TDataSetProvider
    DataSet = sq_LoadOrder
    Constraints = True
    UpdateMode = upWhereChanged
    Left = 272
    Top = 80
  end
  object cdsLoadOrder: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLoadOrder'
    OnCalcFields = cdsLoadOrderCalcFields
    Left = 272
    Top = 128
    object cdsLoadOrderCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
    end
    object cdsLoadOrderShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
    end
    object cdsLoadOrderLO: TIntegerField
      FieldName = 'LO'
    end
    object cdsLoadOrderPKGCode: TStringField
      FieldName = 'PKGCode'
      Size = 10
    end
    object cdsLoadOrderPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object cdsLoadOrderLENGTH: TStringField
      FieldName = 'LENGTH'
      Size = 100
    end
    object cdsLoadOrderNOOFUNITS: TFloatField
      FieldName = 'NOOFUNITS'
    end
    object cdsLoadOrderSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
    end
    object cdsLoadOrderShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
    end
    object cdsLoadOrderVOL_UNIT: TStringField
      FieldName = 'VOL_UNIT'
      Size = 10
    end
    object cdsLoadOrderDELIVERED: TFloatField
      FieldName = 'DELIVERED'
      DisplayFormat = '#.0'
    end
    object cdsLoadOrderSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Size = 80
    end
    object cdsLoadOrderSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object cdsLoadOrderObjectType: TIntegerField
      FieldName = 'ObjectType'
    end
    object cdsLoadOrderPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsLoadOrderCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
    end
    object cdsLoadOrderTO_SHIP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TO_SHIP'
      Calculated = True
    end
  end
  object dsLoadOrder: TDataSource
    DataSet = cdsLoadOrder
    Left = 272
    Top = 176
  end
  object sq_InventoryLoadingLocation: TSQLQuery
    NoMetadata = True
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PhyInvPointNameNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select ib.NoOfPackages, ib.PackageTypeNo, li.LogicalInventoryNam' +
        'e'
      'from'
      'inventorybypackagetype ib '
      
        'inner join dbo.LogicalInventoryPoint li on li.LogicalInventoryPo' +
        'intNo = ib.LogicalInventoryPointNo'
      
        'inner join  PhysicalInventoryPoint ph on ph.PhysicalInventoryPoi' +
        'ntNo = li.PhysicalInventoryPointNo'
      ''
      ''
      'where '
      'ib.PackageTypeNo = :PackageTypeNo'
      'and ph.PhysicalInventoryPointNo = :PhyInvPointNameNo')
    Left = 64
    Top = 320
    object sq_InventoryLoadingLocationNoOfPackages: TIntegerField
      FieldName = 'NoOfPackages'
    end
  end
end
