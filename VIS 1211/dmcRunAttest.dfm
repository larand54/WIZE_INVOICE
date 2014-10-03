object dmRunAttest: TdmRunAttest
  OldCreateOrder = False
  Left = 400
  Top = 118
  Height = 494
  Width = 832
  object sq_AttestHdr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select ARH.AttestNo, ARH.SupplierNo, ARH.Status, ARH.DateCreated' +
        ','
      'ARH.CreatedUser, ARH.ModifiedUser, ARH.DateModified,'
      
        'SUM(ARR.AM3) AS AM3, SUM(ARR.NM3) AS NM3, SUM(ARR.Pcs) AS Styck,' +
        ' '
      'SUM(ARR.Pkgs) AS Paket, SUM(ARR.RowValue) AS V'#228'rde'
      'FROM dbo.ARHdr ARH'
      'Left Outer Join dbo.ARRows ARR on ARR.AttestNo = ARH.AttestNo'
      'WHERE ARH.SupplierNo = :SupplierNo'
      'AND ARH.Status = :Status'
      
        'Group By ARH.AttestNo, ARH.SupplierNo, ARH.Status, ARH.DateCreat' +
        'ed,'
      'ARH.CreatedUser, ARH.ModifiedUser, ARH.DateModified')
    SQLConnection = dmsConnector.SQLConnection
    Left = 72
    Top = 40
    object sq_AttestHdrAttestNo: TIntegerField
      FieldName = 'AttestNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_AttestHdrSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_AttestHdrStatus: TIntegerField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestHdrAM3: TFloatField
      FieldName = 'AM3'
      ProviderFlags = []
    end
    object sq_AttestHdrNM3: TFloatField
      FieldName = 'NM3'
      ProviderFlags = []
    end
    object sq_AttestHdrStyck: TIntegerField
      FieldName = 'Styck'
      ProviderFlags = []
    end
    object sq_AttestHdrPaket: TIntegerField
      FieldName = 'Paket'
      ProviderFlags = []
    end
    object sq_AttestHdrVrde: TFloatField
      FieldName = 'V'#228'rde'
      ProviderFlags = []
    end
    object sq_AttestHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestHdrModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestHdrDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_AttestRows: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'AttestNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.ARRows'
      'WHERE AttestNo = :AttestNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 176
    Top = 40
    object sq_AttestRowsAttestNo: TIntegerField
      FieldName = 'AttestNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_AttestRowsRunNo: TStringField
      FieldName = 'RunNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 10
    end
    object sq_AttestRowsProductNo: TIntegerField
      FieldName = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_AttestRowsProductDesc: TStringField
      FieldName = 'ProductDesc'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sq_AttestRowsAM3: TFloatField
      FieldName = 'AM3'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsNM3: TFloatField
      FieldName = 'NM3'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsPcs: TIntegerField
      FieldName = 'Pcs'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsPkgs: TIntegerField
      FieldName = 'Pkgs'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsPrice: TFloatField
      FieldName = 'Price'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsRowValue: TFloatField
      FieldName = 'RowValue'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsRegPointName: TStringField
      FieldName = 'RegPointName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_AttestRowsRunStartDate: TSQLTimeStampField
      FieldName = 'RunStartDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsRunEndDate: TSQLTimeStampField
      FieldName = 'RunEndDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_AttestRowsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_AttestHdr: TDataSetProvider
    DataSet = sq_AttestHdr
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dsp_AttestHdrGetTableName
    Left = 72
    Top = 96
  end
  object dsp_AttestRows: TDataSetProvider
    DataSet = sq_AttestRows
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 96
  end
  object cds_AttestHdr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_AttestHdr'
    AfterInsert = cds_AttestHdrAfterInsert
    Left = 72
    Top = 160
    object cds_AttestHdrAttestNo: TIntegerField
      DisplayLabel = 'Attesteringnr'
      FieldName = 'AttestNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_AttestHdrSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_AttestHdrStatus: TIntegerField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_AttestHdrAM3: TFloatField
      FieldName = 'AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_AttestHdrNM3: TFloatField
      FieldName = 'NM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###.000'
    end
    object cds_AttestHdrStyck: TIntegerField
      FieldName = 'Styck'
      ProviderFlags = []
      DisplayFormat = '########'
    end
    object cds_AttestHdrPaket: TIntegerField
      FieldName = 'Paket'
      ProviderFlags = []
      DisplayFormat = '##########'
    end
    object cds_AttestHdrVrde: TFloatField
      FieldName = 'V'#228'rde'
      ProviderFlags = []
      DisplayFormat = '#,###,###.00'
    end
    object cds_AttestHdrDateCreated: TSQLTimeStampField
      DisplayLabel = 'Skapad'
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_AttestHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_AttestHdrModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_AttestHdrDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_AttestRows: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AttestNo'
    MasterFields = 'AttestNo'
    MasterSource = ds_AttestHdr
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp_AttestRows'
    Left = 176
    Top = 160
    object cds_AttestRowsAttestNo: TIntegerField
      FieldName = 'AttestNo'
    end
    object cds_AttestRowsRunNo: TStringField
      DisplayLabel = 'K'#246'rnr'
      FieldName = 'RunNo'
      FixedChar = True
      Size = 10
    end
    object cds_AttestRowsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_AttestRowsProductDesc: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDesc'
      Size = 200
    end
    object cds_AttestRowsAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '#,###,###.000'
    end
    object cds_AttestRowsNM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###.000'
    end
    object cds_AttestRowsPcs: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'Pcs'
      DisplayFormat = '#########'
    end
    object cds_AttestRowsPkgs: TIntegerField
      DisplayLabel = 'Paket'
      FieldName = 'Pkgs'
      DisplayFormat = '###########'
    end
    object cds_AttestRowsPrice: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'Price'
    end
    object cds_AttestRowsRowValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'RowValue'
      DisplayFormat = '#,###,###.00'
    end
    object cds_AttestRowsRegPointName: TStringField
      DisplayLabel = 'M'#228'tpunkt'
      FieldName = 'RegPointName'
      Size = 30
    end
    object cds_AttestRowsRunStartDate: TSQLTimeStampField
      DisplayLabel = 'Starttid'
      FieldName = 'RunStartDate'
    end
    object cds_AttestRowsRunEndDate: TSQLTimeStampField
      DisplayLabel = 'Sluttid'
      FieldName = 'RunEndDate'
    end
    object cds_AttestRowsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_AttestRowsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_AttestRowsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
  end
  object ds_AttestHdr: TDataSource
    DataSet = cds_AttestHdr
    Left = 72
    Top = 224
  end
  object sp_AttestRows: TDataSource
    DataSet = cds_AttestRows
    Left = 176
    Top = 224
  end
  object sq_Runs: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Distinct'
      'PU.RegPointNo,'
      'PP.SupplierNo,'
      'pp.RunNo,'
      ''
      '(Select MAX(pp2.ProductionDate) FROM dbo.Package_Production PP2 '
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PP.ProductionUnitNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      ') AS MaxDatum,'
      ''
      '(Select MIN(pp2.ProductionDate) FROM dbo.Package_Production PP2 '
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PP.ProductionUnitNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      ') AS MinDatum,'
      ''
      'Verk.ClientName AS Verk,'
      'PU.RegPointName AS M'#228'tpunkt,'
      ''
      'SUM(ptd.m3Actual) AS AM3,'
      'SUM(ptd.m3Nominal) AS NM3,'
      'SUM(ptd.NoOfPieces) AS Styck,'
      ''
      '-- Count(Distinct pn.PackageNo) AS Paket,'
      '(Select Count(pp2.PackageNo) FROM dbo.Package_Production PP2'
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PP.ProductionUnitNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      ') AS Paket'
      ''
      'FROM  dbo.Package_Production PP'
      'Inner Join dbo.PackageNumber pn '#9'ON pn.PackageNo = PP.PackageNo'
      'AND pn.SupplierCode = PP.SupplierCode'
      
        'Inner Join dbo.RegistrationPoint PU ON PU.RegPointNo = PP.Produc' +
        'tionUnitNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = PP.SupplierNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = PP.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.PackageTypeDetail ptd '#9'ON ptd.PackageTypeNo = pt.' +
        'PackageTypeNo'
      
        'Inner Join dbo.ProductLength pl '#9'ON pl.ProductLengthNo = ptd.Pro' +
        'ductLengthNo'
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      ''
      'WHERE'
      'PP.SupplierNo  = :SupplierNo'
      'AND pp.RunNo > 0'
      'AND pp.ProductionDate > '#39'2008-04-01'#39
      'and PP.Operation = 0'
      'AND PU.RegPointNo = 1'
      'AND pp.RunNo not in (Select ARR.RunNo FROM dbo.ARRows ARR'
      'Inner Join dbo.ARHdr ARH on ARH.AttestNo = ARR.AttestNo'
      'WHERE ARR.RunNo = pp.RunNo'
      'AND ARH.SupplierNo = pp.SupplierNo)'
      ''
      'Group by Verk.ClientName,'
      'PU.RegPointName,'
      'pp.RunNo,'
      'PP.ProductionUnitNo,'
      'PP.SupplierNo,'
      'PU.RegPointNo,'
      'PP.Operation')
    SQLConnection = dmsConnector.SQLConnection
    Left = 320
    Top = 40
  end
  object dsp_Runs: TDataSetProvider
    DataSet = sq_Runs
    Left = 320
    Top = 96
  end
  object cds_Runs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Runs'
    Left = 320
    Top = 160
    object cds_RunsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object cds_RunsSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cds_RunsRunNo: TIntegerField
      DisplayLabel = 'K'#246'rnr'
      FieldName = 'RunNo'
    end
    object cds_RunsMaxDatum: TSQLTimeStampField
      DisplayLabel = 'Sluttid'
      FieldName = 'MaxDatum'
    end
    object cds_RunsMinDatum: TSQLTimeStampField
      DisplayLabel = 'Starttid'
      FieldName = 'MinDatum'
    end
    object cds_RunsVerk: TStringField
      FieldName = 'Verk'
      Size = 80
    end
    object cds_RunsMtpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      FixedChar = True
      Size = 30
    end
    object cds_RunsAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '#,###,###.000'
    end
    object cds_RunsNM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###.000'
    end
    object cds_RunsStyck: TIntegerField
      FieldName = 'Styck'
      DisplayFormat = '##########'
    end
    object cds_RunsPaket: TIntegerField
      FieldName = 'Paket'
      DisplayFormat = '##########'
    end
  end
  object ds_Runs: TDataSource
    DataSet = cds_Runs
    Left = 320
    Top = 216
  end
  object sq_RunDtl: TSQLQuery
    DataSource = ds_Runs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RunNo'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'RegPointNo'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select Distinct'
      'PP.SupplierNo,'
      'pp.RunNo,'
      'PT.ProductNo,'
      'pd.ProductDisplayName AS Produkt,'
      'SUM(pt.Totalm3Actual) AS AM3,'
      'SUM(pt.Totalm3Nominal) AS NM3,'
      'SUM(pt.TotalNoOfPieces) AS Styck,'
      ''
      '(Select Count(pp2.PackageNo) FROM dbo.Package_Production PP2 '
      
        'Inner Join dbo.PackageType pt2 '#9'ON pt2.PackageTypeNo = PP2.Packa' +
        'geTypeNo'
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PU.RegPointNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      'and pt2.ProductNo = PT.ProductNo'
      ') AS Paket,'
      'LPL.Price AS Pris,'
      'LPL.Price * SUM(pt.Totalm3Actual) AS RowValue,'
      'PU.RegPointName AS M'#228'tpunkt,'
      'PU.RegPointNo,'
      ''
      '(Select MIN(pp2.ProductionDate) FROM dbo.Package_Production PP2 '
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PU.RegPointNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      ') AS MinDatum,'
      ''
      '(Select MAX(pp2.ProductionDate) FROM dbo.Package_Production PP2 '
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PU.RegPointNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      ') AS MaxDatum'
      ''
      ''
      'FROM  dbo.Package_Production PP'
      
        'Inner Join dbo.ProductionUnit pun on pun.RegistrationPointNo = P' +
        'P.ProductionUnitNo'
      'and pun.ClientNo = PP.SupplierNo'
      'Inner Join dbo.PackageNumber pn '#9'ON pn.PackageNo = PP.PackageNo'
      'AND pn.SupplierCode = PP.SupplierCode'
      
        'Inner Join dbo.RegistrationPoint PU ON PU.RegPointNo = PP.Produc' +
        'tionUnitNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = PP.SupplierNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = PP.PackageT' +
        'ypeNo'
      'Inner Join dbo.Product p '#9'ON p.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg '#9'ON pg.ProductGroupNo = p.Product' +
        'GroupNo'
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Left Outer Join dbo.LegoPrisLista LPL on LPL.ProductionUnitNo = ' +
        'PUN.ProductionUnitNo'
      #9#9#9#9#9'AND LPL.ATMM = pg.ActualThicknessMM'
      #9#9#9#9#9'AND LPL.ABMM = pg.ActualWidthMM'
      ''
      'WHERE  pp.RunNo = :RunNo'
      ' AND PP.SupplierNo  = :SupplierNo'
      ' AND PU.RegPointNo = :RegPointNo'
      ' AND PP.Operation = 0'
      ''
      'Group by Verk.ClientName,'
      'PU.RegPointName,'
      'pd.ProductDisplayName,'
      'pp.RunNo,'
      'PP.SupplierNo,'
      'PP.Operation,'
      'PT.ProductNo,'
      'PU.RegPointNo,'
      'LPL.Price')
    SQLConnection = dmsConnector.SQLConnection
    Left = 432
    Top = 40
  end
  object dsp_RunDtl: TDataSetProvider
    DataSet = sq_RunDtl
    Left = 432
    Top = 96
  end
  object cds_RunDtl: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'RunNo;SupplierNo;RegPointNo'
    MasterFields = 'RunNo;SupplierNo;RegPointNo'
    MasterSource = ds_Runs
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp_RunDtl'
    Left = 432
    Top = 160
    object cds_RunDtlRunNo: TIntegerField
      DisplayLabel = 'K'#246'rnr'
      FieldName = 'RunNo'
    end
    object cds_RunDtlProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_RunDtlProdukt: TStringField
      FieldName = 'Produkt'
      Size = 100
    end
    object cds_RunDtlAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '#,###,###.000'
    end
    object cds_RunDtlNM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###.000'
    end
    object cds_RunDtlStyck: TIntegerField
      FieldName = 'Styck'
      DisplayFormat = '###########'
    end
    object cds_RunDtlPaket: TIntegerField
      FieldName = 'Paket'
      DisplayFormat = '###########'
    end
    object cds_RunDtlPris: TFloatField
      FieldName = 'Pris'
    end
    object cds_RunDtlRowValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'RowValue'
      DisplayFormat = '#,###,###.00'
    end
    object cds_RunDtlMtpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      FixedChar = True
      Size = 30
    end
    object cds_RunDtlMinDatum: TSQLTimeStampField
      DisplayLabel = 'Starttid'
      FieldName = 'MinDatum'
    end
    object cds_RunDtlMaxDatum: TSQLTimeStampField
      DisplayLabel = 'Sluttid'
      FieldName = 'MaxDatum'
    end
    object cds_RunDtlSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cds_RunDtlRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
  end
  object ds_RunDtl: TDataSource
    DataSet = cds_RunDtl
    Left = 432
    Top = 216
  end
  object sq_InsARRows: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'AttestNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RunNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegPointNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Insert into dbo.ARRows'
      'Select Distinct'
      ':AttestNo,'
      'pp.RunNo,'
      'PT.ProductNo,'
      'pd.ProductDisplayName AS Produkt,'
      'SUM(pt.Totalm3Actual) AS AM3,'
      'SUM(pt.Totalm3Nominal) AS NM3,'
      'SUM(pt.TotalNoOfPieces) AS Styck,'
      ''
      '(Select Count(pp2.PackageNo) FROM dbo.Package_Production PP2'
      
        'Inner Join dbo.PackageType pt2 '#9'ON pt2.PackageTypeNo = PP2.Packa' +
        'geTypeNo'
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PP.ProductionUnitNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      'and pt2.ProductNo = PT.ProductNo'
      ') AS Paket,'
      'LPL.Price AS Pris,'
      'LPL.Price * SUM(pt.Totalm3Actual) AS RowValue,'
      'PU.RegPointName AS M'#228'tpunkt,'
      ''
      '(Select MIN(pp2.ProductionDate) FROM dbo.Package_Production PP2'
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PP.ProductionUnitNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      ') AS MinDatum,'
      ''
      '(Select MAX(pp2.ProductionDate) FROM dbo.Package_Production PP2'
      'WHERE'
      'pp2.RunNo = pp.RunNo'
      'AND PP2.ProductionUnitNo = PP.ProductionUnitNo'
      'AND PP2.SupplierNo  = PP.SupplierNo'
      'and PP2.Operation = PP.Operation'
      ') AS MaxDatum,'
      'PP.ProductionUnitNo,'
      'GetDate(),'
      ':UserID'
      ''
      'FROM  dbo.Package_Production PP'
      
        'Inner Join dbo.ProductionUnit pun on pun.RegistrationPointNo = P' +
        'P.ProductionUnitNo'
      'and pun.ClientNo = PP.SupplierNo'
      'Inner Join dbo.PackageNumber pn '#9'ON pn.PackageNo = PP.PackageNo'
      'AND pn.SupplierCode = PP.SupplierCode'
      
        'Inner Join dbo.RegistrationPoint PU ON PU.RegPointNo = PP.Produc' +
        'tionUnitNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = PP.SupplierNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = PP.PackageT' +
        'ypeNo'
      'Inner Join dbo.Product p '#9'ON p.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg '#9'ON pg.ProductGroupNo = p.Product' +
        'GroupNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Left Outer Join dbo.LegoPrisLista LPL on LPL.ProductionUnitNo = ' +
        'PUN.ProductionUnitNo'
      #9#9#9#9#9'AND LPL.ATMM = pg.ActualThicknessMM'
      #9#9#9#9#9'AND LPL.ABMM = pg.ActualWidthMM'
      ''
      'WHERE pp.RunNo = :RunNo'
      'AND PP.SupplierNo  = :SupplierNo'
      'and PP.Operation = 0'
      'AND PU.RegPointNo = :RegPointNo'
      ''
      'Group by Verk.ClientName,'
      'PU.RegPointName,'
      'pd.ProductDisplayName,'
      'pp.RunNo,'
      'PP.SupplierNo,'
      'PP.Operation,'
      'PT.ProductNo,'
      'PP.ProductionUnitNo,'
      'LPL.Price')
    SQLConnection = dmsConnector.SQLConnection
    Left = 568
    Top = 48
  end
  object sq_GetAttestNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select ARH.AttestNo'
      'FROM dbo.ARHdr ARH'
      'WHERE ARH.SupplierNo = :SupplierNo'
      'AND ARH.Status = :Status'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 72
    Top = 304
    object sq_GetAttestNoAttestNo: TIntegerField
      FieldName = 'AttestNo'
    end
  end
end
