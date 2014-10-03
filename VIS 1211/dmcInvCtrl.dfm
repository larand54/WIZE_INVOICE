object dmInvCtrl: TdmInvCtrl
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 242
  Top = 104
  Height = 656
  Width = 1035
  object sq_InvCtrlGrp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_GrpNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.InvControlGrp'
      'WHERE IC_GrpNo = :IC_GrpNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 24
    Top = 24
    object sq_InvCtrlGrpIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrlGrpPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlGrpOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlGrpInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlGrpNote: TMemoField
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sq_InvCtrlGrpVerkNo: TIntegerField
      FieldName = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlGrpStatus: TIntegerField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlGrpGrupperRapportPerTS: TIntegerField
      FieldName = 'GrupperRapportPerTS'
    end
    object sq_InvCtrlGrpMaxDatum: TSQLTimeStampField
      FieldName = 'MaxDatum'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_InvCtrlRow: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.InvControlRow icr'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icr.PackageNo'
      'AND pn.SupplierCode = icr.SupplierCode'
      'WHERE icr.PackageNo = :PackageNo'
      'AND IC_grpno = :IC_grpno'
      'AND pn.Status = :Status'
      'AND icr.LogicalInventoryPointNo = :LogicalInventoryPointNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 104
    Top = 24
    object sq_InvCtrlRowLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object sq_InvCtrlRowPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object sq_InvCtrlRowSuppliercode: TStringField
      FieldName = 'Suppliercode'
      Size = 3
    end
    object sq_InvCtrlRowPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object sq_InvCtrlRowOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
  end
  object sq_InvCtrlMetod: TSQLQuery
    DataSource = ds_InvCtrlGrp
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select * FROM'
      'dbo.InvCtrlMetod'
      'WHERE IC_GrpNo = :IC_GrpNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 192
    Top = 24
    object sq_InvCtrlMetodIC_grpNo: TIntegerField
      FieldName = 'IC_grpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrlMetodLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrlMetodInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrlMetodLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_InvCtrlMetodOwnerName: TStringField
      FieldName = 'OwnerName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sq_InvCtrlMetodOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
  end
  object sq_InvCtrl_LagerStallen: TSQLQuery
    DataSource = ds_InvCtrlGrp
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select * FROM'
      'dbo.InvCtrl_LagerStallen'
      'WHERE IC_grpno = :IC_grpno')
    SQLConnection = dmsConnector.SQLConnection
    Left = 304
    Top = 24
    object sq_InvCtrl_LagerStallenIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrl_LagerStallenPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrl_LagerStallenOwnerName: TStringField
      FieldName = 'OwnerName'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object dsp_InvCtrlGrp: TDataSetProvider
    DataSet = sq_InvCtrlGrp
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 80
  end
  object dsp_InvCtrlRow: TDataSetProvider
    DataSet = sq_InvCtrlRow
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 80
  end
  object dsp_InvCtrlMetod: TDataSetProvider
    DataSet = sq_InvCtrlMetod
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 80
  end
  object dsp_PhysInv: TDataSetProvider
    DataSet = sq_PhysInv
    Left = 400
    Top = 80
  end
  object cds_InvCtrlGrp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvCtrlGrp'
    AfterInsert = cds_InvCtrlGrpAfterInsert
    Left = 24
    Top = 128
    object cds_InvCtrlGrpIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InvCtrlGrpPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlGrpOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlGrpInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlGrpNote: TMemoField
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_InvCtrlGrpVerkNo: TIntegerField
      FieldName = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlGrpStatus: TIntegerField
      FieldName = 'Status'
    end
    object cds_InvCtrlGrpGrupperRapportPerTS: TIntegerField
      FieldName = 'GrupperRapportPerTS'
    end
    object cds_InvCtrlGrpMaxDatum: TSQLTimeStampField
      FieldName = 'MaxDatum'
    end
  end
  object cds_PhysInv: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PhyInvPointNameNo'
        DataType = ftInteger
      end
      item
        Name = 'LagerStalle'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PhysicalInventoryPointNo'
        DataType = ftInteger
      end
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <
      item
        Name = 'cds_PhysInvIndex1'
        Fields = 'LagerStalle'
      end>
    IndexName = 'cds_PhysInvIndex1'
    Params = <>
    ProviderName = 'dsp_PhysInv'
    StoreDefs = True
    Left = 400
    Top = 128
    object cds_PhysInvPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
    end
    object cds_PhysInvLagerStalle: TStringField
      FieldName = 'LagerStalle'
      Size = 50
    end
    object cds_PhysInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
    object cds_PhysInvClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object cds_InvCtrlMetod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvCtrlMetod'
    AfterInsert = cds_InvCtrlMetodAfterInsert
    Left = 192
    Top = 128
    object cds_InvCtrlMetodIC_grpNo: TIntegerField
      FieldName = 'IC_grpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InvCtrlMetodLogicalInventoryPointNo: TIntegerField
      DisplayLabel = 'LIP'
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_InvCtrlMetodInventeringsMetod: TIntegerField
      DisplayLabel = 'Metod'
      FieldName = 'InventeringsMetod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_InvCtrlMetodLogicalInventoryName: TStringField
      DisplayLabel = 'LAGERGRUPP'
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object cds_InvCtrlMetodOwnerName: TStringField
      DisplayLabel = #196'GARE'
      FieldName = 'OwnerName'
      Size = 80
    end
    object cds_InvCtrlMetodMetod: TStringField
      DisplayLabel = 'METOD'
      FieldKind = fkLookup
      FieldName = 'Metod'
      LookupDataSet = mtMetod
      LookupKeyFields = 'InventeringsMetod'
      LookupResultField = 'Metod'
      KeyFields = 'InventeringsMetod'
      Size = 15
      Lookup = True
    end
    object cds_InvCtrlMetodOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
  end
  object ds_InvCtrlGrp: TDataSource
    DataSet = cds_InvCtrlGrp
    OnDataChange = ds_InvCtrlGrpDataChange
    Left = 24
    Top = 176
  end
  object ds_InvCtrlMetod: TDataSource
    DataSet = cds_InvCtrlMetod
    OnDataChange = ds_InvCtrlMetodDataChange
    Left = 192
    Top = 176
  end
  object sq_PhysInv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT PIP.PhyInvPointNameNo,'
      'CY.CITYNAME+'#39' ('#39'+C.ClientName+'#39')'#39' AS LagerStalle,'
      'PIP.PhysicalInventoryPointNo, C.ClientName, CY.CITYNAME'
      'FROM'
      'DBO.PHYSICALINVENTORYPOINT PIP'
      'INNER JOIN DBO.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      'INNER JOIN DBO.Client C ON C.ClientNo = PIP.OwnerNo'
      'WHERE'
      'CY.CITYNAME <> '#39'Transfer'#39
      ''
      ''
      'AND PIP.PhyInvPointNameNo in (Select PhyInvPointNameNo'
      
        ' FROM dbo.PhysicalInventoryPoint WHERE  PhyInvPointNameNo = PIP.' +
        'PhyInvPointNameNo AND  Ownerno = :Ownerno)'
      ''
      'Order By CY.CITYNAME, C.ClientName ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 400
    Top = 25
    object sq_PhysInvPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
    end
    object sq_PhysInvLagerStalle: TStringField
      FieldName = 'LagerStalle'
      Size = 50
    end
    object sq_PhysInvPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
    object sq_PhysInvClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object ds_PhysInv: TDataSource
    DataSet = cds_PhysInv
    Left = 400
    Top = 176
  end
  object dsp_InvCtrl_LagerStallen: TDataSetProvider
    DataSet = sq_InvCtrl_LagerStallen
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 72
  end
  object cds_InvCtrl_LagerStallen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvCtrl_LagerStallen'
    AfterInsert = cds_InvCtrl_LagerStallenAfterInsert
    Left = 304
    Top = 120
    object cds_InvCtrl_LagerStallenIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
    end
    object cds_InvCtrl_LagerStallenPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
    end
    object cds_InvCtrl_LagerStallenLAGERSTALLE: TStringField
      FieldKind = fkLookup
      FieldName = 'LAGERSTALLE'
      LookupDataSet = cds_PhysInv
      LookupKeyFields = 'PhysicalInventoryPointNo'
      LookupResultField = 'LagerStalle'
      KeyFields = 'PhysicalInventoryPointNo'
      Size = 130
      Lookup = True
    end
    object cds_InvCtrl_LagerStallenOwnerName: TStringField
      FieldName = 'OwnerName'
      Size = 80
    end
  end
  object ds_InvCtrl_LagerStallen: TDataSource
    DataSet = cds_InvCtrl_LagerStallen
    Left = 304
    Top = 176
  end
  object sq_GetLagergrupper: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ''
      'Select distinct '
      
        'RTRIM(ci.cityname)+'#39' /  '#39'+RTRIM(LIP.LogicalInventoryName) AS LOG' +
        'INVNAME, LIP.LOGICALINVENTORYPOINTNO AS LIP'
      ', pip.Ownerno, cl.clientName, LIP.LogicalInventoryName'
      ''
      'From '
      ' dbo.InvCtrl_Lagerstallen LS '
      ''
      
        'Inner Join dbo.LogicalInventoryPoint LIP ON LIP.PhysicalInventor' +
        'yPointNo = LS.PhysicalInventoryPointNo'
      ''
      
        ' Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.PhysicalInvent' +
        'oryPointNo = LIP.PhysicalInventoryPointNo'
      ' Inner Join dbo.City CI ON ci.cityno = PIP.PhyInvPointNameNo'
      ' Inner Join dbo.Client CL on cl.clientNo = pip.ownerNo'
      ''
      'WHERE '
      'IC_grpno = :IC_grpno'
      'Order By LIP.LogicalInventoryName'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 280
    Top = 352
    object sq_GetLagergrupperLOGINVNAME: TStringField
      FieldName = 'LOGINVNAME'
      Size = 50
    end
    object sq_GetLagergrupperLIP: TIntegerField
      FieldName = 'LIP'
    end
    object sq_GetLagergrupperclientName: TStringField
      FieldName = 'clientName'
      Size = 80
    end
    object sq_GetLagergrupperOwnerno: TIntegerField
      FieldName = 'Ownerno'
    end
    object sq_GetLagergrupperLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
  end
  object sq_SaveToInvCtrlRow_PktNr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InventeringsMetod'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '-- spara paket till InvControlRow - paketnr metod'
      ''
      'Insert into dbo.InvControlRow'
      ''
      'Select'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.PackageTypeNo,'
      '1,'
      '1,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      '1 AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo'
      ''
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Inner Join dbo.City'#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      ' AND (pn.Status = 1)'
      ''
      'AND icm.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND icm.InventeringsMetod = :InventeringsMetod')
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 232
  end
  object sq_InvCtrl_LG: TSQLQuery
    DataSource = ds_InvCtrlGrp
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct'
      'icr.IC_grpno,'
      'icr.LogicalInventoryName,'
      'icr.InventeringsMetod,'
      'icr.LogicalInventoryPointNo'
      ''
      ''
      'FROM  dbo.InvControlRow icr'
      ''
      'WHERE'
      'icr.IC_grpno = :IC_grpno'
      ''
      'UNION'
      ''
      'Select distinct'
      'icr.IC_grpno,'
      'icr.LogicalInventoryName,'
      'icr.InventeringsMetod,'
      'icr.LogicalInventoryPointNo'
      ''
      ''
      'FROM  dbo.InvCtrlrowPkt icr'
      ''
      'WHERE'
      'icr.IC_grpno = :IC_grpno'
      ''
      'order by'
      'icr.LogicalInventoryName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 640
    Top = 24
    object sq_InvCtrl_LGIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrl_LGLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_InvCtrl_LGInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrl_LGLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
  end
  object dsp_InvCtrl_LG: TDataSetProvider
    DataSet = sq_InvCtrl_LG
    UpdateMode = upWhereKeyOnly
    Left = 640
    Top = 72
  end
  object cds_InvCtrl_LG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvCtrl_LG'
    Left = 640
    Top = 128
    object cds_InvCtrl_LGIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
    end
    object cds_InvCtrl_LGLogicalInventoryName: TStringField
      DisplayLabel = 'LAGERGRUPPRAPPORT'
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object cds_InvCtrl_LGInventeringsMetod: TIntegerField
      DisplayLabel = 'METOD'
      FieldName = 'InventeringsMetod'
    end
    object cds_InvCtrl_LGMETOD: TStringField
      FieldKind = fkLookup
      FieldName = 'METOD'
      LookupDataSet = mtMetod
      LookupKeyFields = 'InventeringsMetod'
      LookupResultField = 'Metod'
      KeyFields = 'InventeringsMetod'
      Size = 15
      Lookup = True
    end
    object cds_InvCtrl_LGLogicalInventoryPointNo: TIntegerField
      DisplayLabel = 'LIPNO'
      FieldName = 'LogicalInventoryPointNo'
    end
  end
  object ds_InvCtrl_LG: TDataSource
    DataSet = cds_InvCtrl_LG
    Left = 640
    Top = 176
  end
  object mtMetod: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 16
    Top = 560
    object mtMetodInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
    end
    object mtMetodMetod: TStringField
      FieldName = 'Metod'
      Size = 15
    end
  end
  object sq_printPktNrMetod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '-- Skriv ut lagerlista, metod paketnr'
      'Select'
      'icr.IC_grpno,'
      'icr.LogicalInventoryPointNo AS LIP,'
      'icr.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.PackageTypeNo,'
      ''
      'LIP.LogicalInventoryName AS Lagergrupp,'
      '0 AS STATUS,'
      ''
      'Verk.ClientName,'
      'pn.Original_In_Date,'
      'pn.datecreated,'
      'pn.CreatedOfPkgStr,'
      'Cy.CityName AS LagerSt'#228'lle,'
      ''
      'SPE.SpeciesName AS TS, '
      'SUR.SurfacingName AS UT, '
      'Gr.GradeName AS KV,'
      'pg.ActualThicknessMM AS "AT",'
      'pg.ActualWidthMM AS AB,'
      ''
      'pt.TotalNoOfPieces AS PPP,'
      'pt.Totalm3Actual  AS AM3,'
      'pt.Totalm3Nominal AS NM3,'
      ''
      'CASE'
      'WHEN  pg.ActualThicknessMM < 100 then'
      'CASE WHEN pg.ActualWidthMM < 100 then'
      
        #39' '#39'+CAST((  pg.ActualThicknessMM    ) As Varchar(6))+'#39'x '#39'+CAST((' +
        '  pg.ActualWidthMM    ) As Varchar(6))'
      ' else'
      
        #39' '#39'+CAST((  pg.ActualThicknessMM    ) As Varchar(6))+'#39'x'#39'+CAST(( ' +
        ' pg.ActualWidthMM    ) As Varchar(6))'
      'END'
      'else'
      'CASE WHEN pg.ActualWidthMM < 100 then'
      
        'CAST((  pg.ActualThicknessMM    ) As Varchar(6))+'#39'x '#39'+CAST((  pg' +
        '.ActualWidthMM    ) As Varchar(6))'
      ' else'
      
        ' CAST((  pg.ActualThicknessMM    ) As Varchar(6))+'#39'x'#39'+CAST((  pg' +
        '.ActualWidthMM    ) As Varchar(6))'
      'END'
      'END +'#39', '#39'+Gr.GradeName AS PROD'
      ''
      'FROM  dbo.InvControlRow icr'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icr.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo '
      ''
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icr.PackageNo'
      #9#9#9#9#9'AND pn.SupplierCode = icr.SupplierCode'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Inner Join dbo.City'#9#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      '-- LEFT OUTER JOIN Client cl ON cl.ClientNo = pip.OwnerNo'
      ''
      'WHERE '
      'icr.IC_grpno = 139'
      '-- AND icr.LogicalInventoryName = '#39'S'#197'GAT JUSTERAT'#39
      ''
      ''
      'order by'
      'LIP.LogicalInventoryName,'
      'SPE.SpeciesName, '
      'SUR.SurfacingName, '
      'Gr.GradeName,'
      'pg.ActualThicknessMM,'
      'pg.ActualWidthMM,'
      'pn.PackageNo,'
      ' pn.Original_In_Date desc,'
      'pn.datecreated')
    SQLConnection = dmsConnector.SQLConnection
    Left = 24
    Top = 248
  end
  object dsp_printPktNrMetod: TDataSetProvider
    DataSet = sq_printPktNrMetod
    Left = 24
    Top = 296
  end
  object cds_printPktNrMetod: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IC_grpno'
        DataType = ftInteger
      end
      item
        Name = 'LIP'
        DataType = ftInteger
      end
      item
        Name = 'InventeringsMetod'
        DataType = ftInteger
      end
      item
        Name = 'PAKETNR'
        DataType = ftInteger
      end
      item
        Name = 'LEVKOD'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'Lagergrupp'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
      end
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Original_In_Date'
        DataType = ftTimeStamp
      end
      item
        Name = 'datecreated'
        DataType = ftTimeStamp
      end
      item
        Name = 'CreatedOfPkgStr'
        DataType = ftInteger
      end
      item
        Name = 'LagerSt'#228'lle'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'KV'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AT'
        DataType = ftFloat
      end
      item
        Name = 'AB'
        DataType = ftFloat
      end
      item
        Name = 'PPP'
        DataType = ftInteger
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'NM3'
        DataType = ftFloat
      end
      item
        Name = 'PROD'
        DataType = ftString
        Size = 47
      end>
    IndexDefs = <
      item
        Name = 'cds_printPktNrMetodIndex1'
        Fields = 'Lagergrupp;TS;Prod;PAKETNR'
      end>
    IndexName = 'cds_printPktNrMetodIndex1'
    Params = <>
    ProviderName = 'dsp_printPktNrMetod'
    StoreDefs = True
    Left = 24
    Top = 344
    object cds_printPktNrMetodIC_grpno: TIntegerField
      DisplayWidth = 12
      FieldName = 'IC_grpno'
    end
    object cds_printPktNrMetodLIP: TIntegerField
      DisplayWidth = 12
      FieldName = 'LIP'
    end
    object cds_printPktNrMetodInventeringsMetod: TIntegerField
      DisplayWidth = 18
      FieldName = 'InventeringsMetod'
    end
    object cds_printPktNrMetodPAKETNR: TIntegerField
      DisplayWidth = 12
      FieldName = 'PAKETNR'
    end
    object cds_printPktNrMetodLEVKOD: TStringField
      DisplayWidth = 9
      FieldName = 'LEVKOD'
      Size = 3
    end
    object cds_printPktNrMetodPackageTypeNo: TIntegerField
      DisplayWidth = 16
      FieldName = 'PackageTypeNo'
    end
    object cds_printPktNrMetodLagergrupp: TStringField
      DisplayWidth = 11
      FieldName = 'Lagergrupp'
      Size = 50
    end
    object cds_printPktNrMetodSTATUS: TIntegerField
      DisplayWidth = 12
      FieldName = 'STATUS'
    end
    object cds_printPktNrMetodClientName: TStringField
      DisplayWidth = 96
      FieldName = 'ClientName'
      Size = 80
    end
    object cds_printPktNrMetodOriginal_In_Date: TSQLTimeStampField
      DisplayWidth = 41
      FieldName = 'Original_In_Date'
    end
    object cds_printPktNrMetoddatecreated: TSQLTimeStampField
      DisplayWidth = 41
      FieldName = 'datecreated'
    end
    object cds_printPktNrMetodCreatedOfPkgStr: TIntegerField
      DisplayWidth = 16
      FieldName = 'CreatedOfPkgStr'
    end
    object cds_printPktNrMetodLagerStlle: TStringField
      DisplayWidth = 60
      FieldName = 'LagerSt'#228'lle'
      Size = 50
    end
    object cds_printPktNrMetodTS: TStringField
      DisplayWidth = 36
      FieldName = 'TS'
      Size = 30
    end
    object cds_printPktNrMetodUT: TStringField
      DisplayWidth = 36
      FieldName = 'UT'
      Size = 30
    end
    object cds_printPktNrMetodKV: TStringField
      DisplayWidth = 36
      FieldName = 'KV'
      Size = 30
    end
    object cds_printPktNrMetodAT: TFloatField
      DisplayWidth = 12
      FieldName = 'AT'
    end
    object cds_printPktNrMetodAB: TFloatField
      DisplayWidth = 12
      FieldName = 'AB'
    end
    object cds_printPktNrMetodPPP: TIntegerField
      DisplayWidth = 12
      FieldName = 'PPP'
    end
    object cds_printPktNrMetodAM3: TFloatField
      DisplayWidth = 12
      FieldName = 'AM3'
    end
    object cds_printPktNrMetodNM3: TFloatField
      DisplayWidth = 12
      FieldName = 'NM3'
    end
    object cds_printPktNrMetodPROD: TStringField
      DisplayWidth = 57
      FieldName = 'PROD'
      Size = 47
    end
  end
  object ds_printPktNrMetod: TDataSource
    DataSet = cds_printPktNrMetod
    Left = 24
    Top = 392
  end
  object mtInvCtrlStatus: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 16
    Top = 464
    object mtInvCtrlStatusStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtInvCtrlStatusStatusNamn: TStringField
      FieldName = 'StatusNamn'
      Size = 30
    end
  end
  object ds_InvCtrlStatus: TDataSource
    DataSet = mtInvCtrlStatus
    Left = 16
    Top = 512
  end
  object sq_SaveToInvCtrlRow_PktTyp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InventeringsMetod'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Insert into dbo.InvCtrlRowPkt'
      'Select distinct'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pt.PackageTypeNo,'
      '(Select Count(*) FROM dbo.PackageNumber WHERE'
      'PackageTypeNo = pn.PackageTypeNo'
      'AND LogicalInventoryPointNo = lip.LogicalInventoryPointNo'
      'AND Status = 1) AS NoOfPkg,'
      ''
      '(Select Count(*) FROM dbo.PackageNumber WHERE'
      'PackageTypeNo = pn.PackageTypeNo'
      'AND LogicalInventoryPointNo = lip.LogicalInventoryPointNo'
      'AND Status = 1) AS AntPktILager,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      ''
      '0 AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo '
      ''
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      'AND icm.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND icm.InventeringsMetod = :InventeringsMetod'
      'AND pn.Status = 1'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 360
  end
  object sq_SaveInvLista_PktNr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InventeringsMetod'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MaxDatum'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MaxDatum'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '-- L'#228'gg till paket som producerades eller AR f'#246're max datum'
      '-- och inte finns med p'#229' icr listan '
      ''
      'Insert into dbo.InvControlRow'
      ''
      'Select'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.PackageTypeNo,'
      '1,'
      '1,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      '0 AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo '
      ''
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      'Inner Join dbo.Species'#9'SPE'#9'ON SPE.SpeciesNo = pg.SpeciesNo'
      #9#9#9#9'AND SPE.LanguageCode = 1'
      'Inner Join dbo.Surfacing'#9'SUR'#9'ON SUR.SurfacingNo = pg.SurfacingNo'
      #9#9#9#9'AND SUR.LanguageCode = 1'
      'Inner Join dbo.Grade   '#9'Gr'#9'ON Gr.GradeNo = pd.GradeNo'
      #9#9#9#9'AND Gr.LanguageCode = 1'
      'Inner Join dbo.City'#9#9'Cy'#9'ON Cy.CityNo = pip.PhyInvPointNameNo'
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      'AND pn.Status = 1'
      'AND icm.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND icm.InventeringsMetod = :InventeringsMetod'
      ''
      'AND pn.PackageNo in (Select PackageNo'
      'from dbo.PackageNumberLog PNL'
      'WHERE PackageNo = pn.PackageNo'
      'AND Status = 1'
      'AND SupplierCode = PN.SupplierCode'
      'AND pn.datecreated < :MaxDatum'
      '-- AND RegistrationPointNo <> 5'
      'AND ( ( Operation = 0) OR (Operation = 7)) )'
      ''
      '-- F'#246'r att inte f'#229' med paket som '#228'r utlastade f'#246're maxdatum'
      'AND pn.PackageNo not in (Select LD.packageNo'
      'FROM dbo.LoadDetail LD'
      'Inner Join dbo.Loads L ON L.LoadNo = LD.LoadNo'
      'WHERE'
      'LD.SupplierCode = pn.SupplierCode'
      'AND L.SenderLoadStatus <> 0'
      'AND L.LoadedDate <= :MaxDatum)'
      ''
      ''
      'AND pn.PackageNo not in (Select PackageNo'
      'from dbo.InvControlrow icr'
      'WHERE IC_grpno = icm.IC_grpno'
      'AND PackageNo = pn.PackageNo'
      'AND SupplierCode = PN.SupplierCode)'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 416
  end
  object sq_SaveInvListaPktTyp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InventeringsMetod'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ''
      'Insert into dbo.InvCtrlRowPkt'
      'Select distinct'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pt.PackageTypeNo,'
      '(Select Count(*) FROM dbo.PackageNumber WHERE'
      'PackageTypeNo = pn.PackageTypeNo'
      'AND LogicalInventoryPointNo = lip.LogicalInventoryPointNo'
      'AND Status = 1) AS NoOfPkg,'
      ''
      '(Select Count(*) FROM dbo.PackageNumber WHERE'
      'PackageTypeNo = pn.PackageTypeNo'
      'AND LogicalInventoryPointNo = lip.LogicalInventoryPointNo'
      'AND Status = 1) AS AntPktILager,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      ''
      '0 AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo '
      ''
      
        'INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = ' +
        'lip.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      'AND icm.LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'AND icm.InventeringsMetod = :InventeringsMetod'
      'AND pn.Status = 1'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 464
  end
  object sq_DelCtrlRowPktNr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete from dbo.InvControlRow'
      'where IC_grpno = :IC_grpno')
    SQLConnection = dmsConnector.SQLConnection
    Left = 280
    Top = 240
  end
  object sq_DelCtrlRowPktTyp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InventeringsMetod'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete from dbo.InvCtrlRowPkt'
      'where IC_grpno = :IC_grpno'
      'AND InventeringsMetod = :InventeringsMetod')
    SQLConnection = dmsConnector.SQLConnection
    Left = 280
    Top = 296
  end
  object cds_InvCtrlRow: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvCtrlRow'
    Left = 104
    Top = 128
    object cds_InvCtrlRowLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object cds_InvCtrlRowPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cds_InvCtrlRowSuppliercode: TStringField
      FieldName = 'Suppliercode'
      Size = 3
    end
    object cds_InvCtrlRowPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object cds_InvCtrlRowOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
  end
  object ds_InvCtrlRow: TDataSource
    DataSet = cds_InvCtrlRow
    Left = 104
    Top = 184
  end
  object sq_GetPkt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ownerno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '-- S'#246'k paket inom verkets dom'#228'ner'
      
        'SELECT DISTINCT pn.PackageNo, PIP.PhyInvPointNameNo AS CityNo, C' +
        'Y.CITYNAME AS LagerStalle,'
      
        'PIP.PhysicalInventoryPointNo AS PIP, C.ClientName, pn.SupplierCo' +
        'de, LIP.LogicalInventoryName,'
      
        'LIP.LOGICALINVENTORYPOINTNO AS LIP, PIP.OwnerNo AS SupplierNo, P' +
        '.ProductDisplayName,'
      
        'ptl.PcsPerLength AS LengthDescription, P.ProductNo, pt.PackageTy' +
        'peNo'
      'FROM'
      'DBO.PHYSICALINVENTORYPOINT PIP'
      
        'Inner Join dbo.LogicalInventoryPoint LIP ON LIP.PhysicalInventor' +
        'yPointNo = PIP.PhysicalInventoryPointNo'
      
        'Inner Join dbo.PackageNumber pn ON pn.LOGICALINVENTORYPOINTNO = ' +
        'LIP.LOGICALINVENTORYPOINTNO'
      
        'Inner Join dbo.PackageType pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      'Inner Join dbo.Product P on p.ProductNo = pt.ProductNo'
      'INNER JOIN DBO.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      'INNER JOIN DBO.Client C ON C.ClientNo = PIP.OwnerNo'
      'WHERE'
      'CY.CITYNO = PIP.PhyInvPointNameNo'
      'AND C.ClientNo = PIP.OwnerNo'
      'AND pn.PackageNo = :PackageNo'
      'AND pn.Status = :Status'
      ''
      'AND PIP.PhyInvPointNameNo in (Select PhyInvPointNameNo'
      
        ' FROM dbo.PhysicalInventoryPoint WHERE  PhyInvPointNameNo = PIP.' +
        'PhyInvPointNameNo AND  Ownerno = :Ownerno)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 464
    Top = 24
  end
  object dsp_GetPkt: TDataSetProvider
    DataSet = sq_GetPkt
    Left = 464
    Top = 80
  end
  object cds_GetPkt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_GetPkt'
    Left = 464
    Top = 128
    object cds_GetPktPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cds_GetPktCityNo: TIntegerField
      FieldName = 'CityNo'
    end
    object cds_GetPktLagerStalle: TStringField
      FieldName = 'LagerStalle'
      Size = 50
    end
    object cds_GetPktPIP: TIntegerField
      FieldName = 'PIP'
    end
    object cds_GetPktClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cds_GetPktSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object cds_GetPktLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object cds_GetPktLIP: TIntegerField
      FieldName = 'LIP'
    end
    object cds_GetPktSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object cds_GetPktProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 100
    end
    object cds_GetPktLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Size = 255
    end
    object cds_GetPktProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object cds_GetPktPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
  end
  object ds_GetPkt: TDataSource
    DataSet = cds_GetPkt
    Left = 464
    Top = 176
  end
  object sq_INS_CtrlRowPktNr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InventeringsMetod'
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
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LogicalInventoryName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Insert into dbo.InvControlRow'
      '(IC_grpno,'
      'LogicalInventoryPointNo,'
      'InventeringsMetod,'
      'PackageNo,'
      'SupplierCode,'
      'PackageTypeNo,'
      'NoOfPkgs,'
      'AntalPaketILager,'
      'LogicalInventoryName,'
      'STATUS,'
      'OwnerNo)'
      ''
      'Values(:IC_grpno,'
      ':LogicalInventoryPointNo,'
      ':InventeringsMetod,'
      ':PackageNo,'
      ':SupplierCode,'
      ':PackageTypeNo,'
      '1,'
      '1,'
      ':LogicalInventoryName,'
      '1,'
      ':OwnerNo)'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 416
    Top = 240
  end
  object sq_SetPkgTypeNo_PktNr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Suppliercode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.InvControlRow'
      'Set PackageTypeNo = :PackageTypeNo'
      'where IC_grpno = :IC_grpno'
      'AND PackageNo = :PackageNo'
      'AND Suppliercode = :Suppliercode')
    SQLConnection = dmsConnector.SQLConnection
    Left = 416
    Top = 296
  end
  object sq_SetNoOfPkg_PKTTYP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NoOfPkgs'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ic_grpNo'
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
      end>
    SQL.Strings = (
      'Update dbo.InvCtrlRowPkt'
      'Set NoOfPkgs = NoOfPkgs + :NoOfPkgs'
      'WHERE ic_grpNo = :ic_grpNo'
      'AND PackageTypeNo = :PackageTypeNo'
      'AND LogicalInventoryPointNo = :LogicalInventoryPointNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 416
    Top = 352
  end
  object sq_InsPkgType_NoOfPkgs: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ic_grpNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NoOfPkgs'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LogicalInventoryName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Insert into dbo.InvCtrlrowPkt'
      '(IC_grpno,'
      'LogicalInventoryPointNo,'
      'InventeringsMetod,'
      'PackageTypeNo,'
      'NoOfPkgs,'
      'AntalPaketILager,'
      'LogicalInventoryName,'
      'STATUS,'
      'OwnerNo)'
      ''
      'Values(:IC_grpno,'
      ':LogicalInventoryPointNo,'
      '2,'
      ':PackageTypeNo,'
      ':NoOfPkgs,'
      '0,'
      ':LogicalInventoryName,'
      '0,'
      ':OwnerNo)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 576
  end
  object sq_PkgTypExistIn_InvCtrlPkt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ic_grpNo'
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
      end>
    SQL.Strings = (
      'Select PackageTypeNo FROM dbo.InvCtrlRowPkt'
      'WHERE ic_grpNo = :ic_grpNo'
      'AND PackageTypeNo = :PackageTypeNo'
      'AND LogicalInventoryPointNo = :LogicalInventoryPointNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 520
    object sq_PkgTypExistIn_InvCtrlPktPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
  end
  object sq_InvCtrlList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'VerkNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.InvControlGrp'
      'WHERE VerkNo = :VerkNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 544
    Top = 24
  end
  object dsp_InvCtrlList: TDataSetProvider
    DataSet = sq_InvCtrlList
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 80
  end
  object cds_InvCtrlList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvCtrlList'
    AfterInsert = cds_InvCtrlGrpAfterInsert
    Left = 544
    Top = 128
    object cds_InvCtrlListIC_grpno: TIntegerField
      DisplayLabel = 'INVENTERINGSNR'
      FieldName = 'IC_grpno'
    end
    object cds_InvCtrlListInventeringsdatum: TSQLTimeStampField
      DisplayLabel = 'INVENTERINGSDATUM'
      FieldName = 'Inventeringsdatum'
    end
    object cds_InvCtrlListNote: TMemoField
      DisplayLabel = 'NOTERING'
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object cds_InvCtrlListStatus: TIntegerField
      DisplayLabel = 'STATUS'
      FieldName = 'Status'
    end
    object cds_InvCtrlListMaxDatum: TSQLTimeStampField
      DisplayLabel = 'MAXDATUM'
      FieldName = 'MaxDatum'
    end
    object cds_InvCtrlListPhyInvPointNameNo: TIntegerField
      FieldName = 'PhyInvPointNameNo'
    end
    object cds_InvCtrlListOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object cds_InvCtrlListVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object cds_InvCtrlListGrupperRapportPerTS: TIntegerField
      FieldName = 'GrupperRapportPerTS'
    end
  end
  object ds_InvCtrlList: TDataSource
    DataSet = cds_InvCtrlList
    OnDataChange = ds_InvCtrlGrpDataChange
    Left = 544
    Top = 176
  end
  object sq_InvCtrl_Pkgs: TSQLQuery
    DataSource = ds_InvCtrlGrp
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select * FROM dbo.InvCtrl_Pkgs'
      'WHERE IC_GrpNo = :IC_GrpNo'
      'AND ((Operation = 0) or (Operation = 6))')
    SQLConnection = dmsConnector.SQLConnection
    Left = 856
    Top = 232
    object sq_InvCtrl_PkgsIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrl_PkgsPackageNo: TIntegerField
      FieldName = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrl_PkgsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object sq_InvCtrl_PkgsOperation: TIntegerField
      FieldName = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrl_PkgsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_InvCtrl_Pkgs: TDataSetProvider
    DataSet = sq_InvCtrl_Pkgs
    UpdateMode = upWhereKeyOnly
    Left = 856
    Top = 280
  end
  object cds_InvCtrl_Pkgs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvCtrl_Pkgs'
    AfterInsert = cds_InvCtrl_PkgsAfterInsert
    BeforePost = cds_InvCtrl_PkgsBeforePost
    AfterPost = cds_InvCtrl_PkgsAfterPost
    BeforeDelete = cds_InvCtrl_PkgsBeforeDelete
    Left = 856
    Top = 328
    object cds_InvCtrl_PkgsIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
    end
    object cds_InvCtrl_PkgsPackageNo: TIntegerField
      DisplayLabel = 'PaketNr'
      FieldName = 'PackageNo'
    end
    object cds_InvCtrl_PkgsSupplierCode: TStringField
      DisplayLabel = 'Lev.kod'
      FieldName = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_InvCtrl_PkgsOperation: TIntegerField
      FieldName = 'Operation'
    end
    object cds_InvCtrl_PkgsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object ds_InvCtrl_Pkgs: TDataSource
    DataSet = cds_InvCtrl_Pkgs
    Left = 856
    Top = 376
  end
  object sq_InvCtrl_PaReg: TSQLQuery
    DataSource = ds_InvCtrlGrp
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select * FROM dbo.InvCtrl_Pkgs'
      'WHERE IC_GrpNo = :IC_GrpNo'
      'AND Operation = 5')
    SQLConnection = dmsConnector.SQLConnection
    Left = 752
    Top = 232
    object sq_InvCtrl_PaRegIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrl_PaRegPackageNo: TIntegerField
      FieldName = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrl_PaRegSupplierCode: TStringField
      FieldName = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object sq_InvCtrl_PaRegOperation: TIntegerField
      FieldName = 'Operation'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrl_PaRegDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object sq_InvCtrl_PaRegLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_InvCtrl_PaReg: TDataSetProvider
    DataSet = sq_InvCtrl_PaReg
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 280
  end
  object cds_InvCtrl_PaReg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvCtrl_PaReg'
    AfterInsert = cds_InvCtrl_PaRegAfterInsert
    BeforePost = cds_InvCtrl_PaRegBeforePost
    AfterPost = cds_InvCtrl_PaRegAfterPost
    Left = 752
    Top = 328
    object cds_InvCtrl_PaRegIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
    end
    object cds_InvCtrl_PaRegPackageNo: TIntegerField
      DisplayLabel = 'PaketNr'
      FieldName = 'PackageNo'
    end
    object cds_InvCtrl_PaRegSupplierCode: TStringField
      DisplayLabel = 'Lev.kod'
      FieldName = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_InvCtrl_PaRegOperation: TIntegerField
      FieldName = 'Operation'
    end
    object cds_InvCtrl_PaRegDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_InvCtrl_PaRegLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
  end
  object ds_InvCtrl_PaReg: TDataSource
    DataSet = cds_InvCtrl_PaReg
    Left = 752
    Top = 376
  end
  object sq_InvCtrlPkt: TSQLQuery
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
      end
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.InvControlRow icr'
      'WHERE icr.PackageNo = :PackageNo'
      'AND icr.SupplierCode = :SupplierCode'
      'AND icr.IC_grpno = :IC_grpno')
    SQLConnection = dmsConnector.SQLConnection
    Left = 720
    Top = 24
    object sq_InvCtrlPktIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrlPktLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlPktInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlPktPackageNo: TIntegerField
      FieldName = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_InvCtrlPktSuppliercode: TStringField
      FieldName = 'Suppliercode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object sq_InvCtrlPktPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlPktNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlPktAntalPaketILager: TIntegerField
      FieldName = 'AntalPaketILager'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlPktLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_InvCtrlPktStatus: TSmallintField
      FieldName = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sq_InvCtrlPktOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_InvCtrlPkt: TDataSetProvider
    DataSet = sq_InvCtrlPkt
    UpdateMode = upWhereKeyOnly
    Left = 720
    Top = 72
  end
  object cds_InvCtrlPkt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InvCtrlPkt'
    Left = 720
    Top = 128
    object cds_InvCtrlPktIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
    end
    object cds_InvCtrlPktLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
    end
    object cds_InvCtrlPktInventeringsMetod: TIntegerField
      FieldName = 'InventeringsMetod'
    end
    object cds_InvCtrlPktPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object cds_InvCtrlPktSuppliercode: TStringField
      FieldName = 'Suppliercode'
      FixedChar = True
      Size = 3
    end
    object cds_InvCtrlPktPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object cds_InvCtrlPktNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
    end
    object cds_InvCtrlPktAntalPaketILager: TIntegerField
      FieldName = 'AntalPaketILager'
    end
    object cds_InvCtrlPktLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Size = 50
    end
    object cds_InvCtrlPktStatus: TSmallintField
      FieldName = 'Status'
    end
    object cds_InvCtrlPktOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
  end
  object sp_PkgCngInv: TSQLStoredProc
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
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
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
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vis_PkgCngInv'
    Left = 944
    Top = 472
  end
  object sp_PkgAddInv: TSQLStoredProc
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
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
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
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InventeringsMetod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'vis_PkgAddInv'
    Left = 944
    Top = 520
  end
  object sq_InsInLeveranser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Insert into dbo.InvCtrl_Pkgs'
      ''
      'Select 28, LD.PackageNo, LD.SupplierCode, 3, GetDate()'
      'FROM dbo.Loads L'
      'Inner Join dbo.LoadDetail LD ON LD.LoadNo = L.LoadNo'
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo'
      
        'Inner Join dbo.Confirmed_Load CL ON CL.Confirmed_LoadNo = L.Load' +
        'No'
      'WHERE L.customerNo = 232'
      'AND L.LoadedDate < '#39'2005-12-06 23:59:59'#39
      'AND pn.Status = 1'
      'AND LD.PackageNo not in (Select PackageNo'
      'from dbo.InvControlrow icr'
      'WHERE IC_grpno = -128'
      'AND PackageNo = LD.PackageNo'
      'AND SupplierCode = LD.SupplierCode)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 944
    Top = 264
  end
  object sq_InLev: TSQLQuery
    DataSource = ds_InvCtrlGrp
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select * FROM dbo.InvCtrl_Pkgs'
      'WHERE IC_GrpNo = :IC_GrpNo'
      'AND Operation = 3')
    SQLConnection = dmsConnector.SQLConnection
    Left = 672
    Top = 232
  end
  object dsp_InLev: TDataSetProvider
    DataSet = sq_InLev
    Left = 672
    Top = 280
  end
  object cds_InLev: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_InLev'
    Left = 672
    Top = 328
    object cds_InLevIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
    end
    object cds_InLevPackageNo: TIntegerField
      DisplayLabel = 'PaketNr'
      FieldName = 'PackageNo'
    end
    object cds_InLevSupplierCode: TStringField
      DisplayLabel = 'Lev.kod'
      FieldName = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_InLevOperation: TIntegerField
      FieldName = 'Operation'
    end
    object cds_InLevDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object ds_InLev: TDataSource
    DataSet = cds_InLev
    Left = 672
    Top = 376
  end
  object sq_UtLev: TSQLQuery
    DataSource = ds_InvCtrlGrp
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_GrpNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.InvCtrl_Pkgs'
      'WHERE IC_GrpNo = :IC_GrpNo'
      'AND Operation = 2')
    SQLConnection = dmsConnector.SQLConnection
    Left = 608
    Top = 232
  end
  object dsp_UtLev: TDataSetProvider
    DataSet = sq_UtLev
    Left = 608
    Top = 280
  end
  object cds_UtLev: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_UtLev'
    Left = 608
    Top = 328
    object cds_UtLevIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
    end
    object cds_UtLevPackageNo: TIntegerField
      DisplayLabel = 'PaketNr'
      FieldName = 'PackageNo'
    end
    object cds_UtLevSupplierCode: TStringField
      DisplayLabel = 'Lev.kod'
      FieldName = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_UtLevOperation: TIntegerField
      FieldName = 'Operation'
    end
    object cds_UtLevDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object ds_UtLev: TDataSource
    DataSet = cds_UtLev
    Left = 608
    Top = 376
  end
  object sq_GetPrd: TSQLQuery
    DataSource = ds_InvCtrlGrp
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'Select * FROM dbo.InvCtrl_Pkgs'
      'WHERE IC_GrpNo = :IC_GrpNo'
      'AND Operation = 4')
    SQLConnection = dmsConnector.SQLConnection
    Left = 544
    Top = 232
  end
  object dsp_GetPrd: TDataSetProvider
    DataSet = sq_GetPrd
    Left = 544
    Top = 280
  end
  object cds_GetPrd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_GetPrd'
    Left = 544
    Top = 328
    object cds_GetPrdIC_GrpNo: TIntegerField
      FieldName = 'IC_GrpNo'
    end
    object cds_GetPrdPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
    end
    object cds_GetPrdSupplierCode: TStringField
      DisplayLabel = 'Lev.kod'
      FieldName = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_GetPrdOperation: TIntegerField
      FieldName = 'Operation'
    end
    object cds_GetPrdDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
  end
  object ds_GetPrd: TDataSource
    DataSet = cds_GetPrd
    Left = 544
    Top = 376
  end
  object sq_AddToICR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.InvControlRow'
      'WHERE'
      'IC_grpno = :IC_grpno'
      'AND ((Status = 3) or (Status = 4) or (Status = 5))'
      ''
      'Insert into dbo.InvControlRow'
      '-- L'#228'gg in production och inleverans paket'
      'Select'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pn.PackageTypeNo,'
      '1,'
      '1,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      'ICP.Operation AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM  dbo.InvCtrlMetod icm'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = icm.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.InvCtrl_Pkgs ICP ON ICP.IC_grpno = icm.IC_grpno'
      
        #9#9#9#9'AND ICP.LogicalInventoryPointNo = ICM.LogicalInventoryPointN' +
        'o'
      ''
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = ICP.PackageNo'
      #9#9#9#9'AND pn.SupplierCode = ICP.SupplierCode'
      ''
      'WHERE'
      'icm.IC_grpno = :IC_grpno'
      '-- AND pn.Status = 1'
      
        'AND ((ICP.Operation = 3) or (ICP.Operation = 4) or (ICP.Operatio' +
        'n = 5))'
      ''
      'AND pn.PackageNo not in (Select PackageNo'
      'from dbo.InvControlrow icr'
      'WHERE IC_grpno = icm.IC_grpno'
      'AND PackageNo = pn.PackageNo'
      'AND SupplierCode = PN.SupplierCode)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 472
  end
  object sq_RemFromICR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.InvControlRow '
      'Set Status = 1'
      'FROM dbo.InvCtrl_Pkgs ICP'
      
        'Inner Join dbo.InvControlRow ON dbo.InvControlRow.PackageNo = IC' +
        'P.PackageNo'
      #9#9#9#9'AND dbo.InvControlRow.SupplierCode = ICP.SupplierCode'
      'WHERE'
      'icp.IC_grpno = :IC_grpno'
      
        'AND ((ICP.Operation = 0) or (ICP.Operation = 2) or (ICP.Operatio' +
        'n = 6))'
      ''
      'Update dbo.InvControlRow'
      'Set Status = ICP.Operation'
      'FROM dbo.InvCtrl_Pkgs ICP'
      
        'Inner Join dbo.InvControlRow ON dbo.InvControlRow.PackageNo = IC' +
        'P.PackageNo'
      #9#9#9#9'AND dbo.InvControlRow.SupplierCode = ICP.SupplierCode'
      'WHERE'
      'icp.IC_grpno = :IC_grpno'
      
        'AND ((ICP.Operation = 0) or (ICP.Operation = 2) or (ICP.Operatio' +
        'n = 6))')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 528
  end
  object sq_PkgExist: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PkgNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SuppCode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Status FROM dbo.PackageNumber'
      'WHERE PackageNo = :PkgNo'
      'AND SupplierCode = :SuppCode')
    SQLConnection = dmsConnector.SQLConnection
    Left = 944
    Top = 360
    object sq_PkgExistStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object sq_PkgExistInKL: TSQLQuery
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
      end
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select icr.Status FROM dbo.InvControlRow icr'
      'WHERE icr.PackageNo = :PackageNo'
      'AND icr.SupplierCode = :SupplierCode'
      'AND icr.IC_grpno = :IC_grpno')
    SQLConnection = dmsConnector.SQLConnection
    Left = 944
    Top = 312
    object sq_PkgExistInKLStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object sq_CleanICR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Delete dbo.InvControlRow'
      'WHERE IC_grpno = :IC_grpno AND  ((Status = 3) or (Status = 4))'
      ''
      'Update dbo.InvControlRow'
      'Set Status = 1'
      'WHERE IC_grpno = :IC_grpno')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 424
  end
  object sq_PriceListGrp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.PriceListGrp'
      'WHERE ClientNo = :ClientNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 848
    Top = 24
    object sq_PriceListGrpPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PriceListGrpSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListGrpPriceListDate: TSQLTimeStampField
      FieldName = 'PriceListDate'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListGrpNote: TStringField
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_PriceListGrpCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListGrpDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListGrpClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_PriceListRow: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PriceListNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.PriceListRow'
      'WHERE PriceListNo = :PriceListNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 944
    Top = 24
    object sq_PriceListRowPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PriceListRowPriceListRowNo: TIntegerField
      FieldName = 'PriceListRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_PriceListRowMinAT: TFloatField
      FieldName = 'MinAT'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListRowMaxAT: TFloatField
      FieldName = 'MaxAT'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListRowMinAB: TFloatField
      FieldName = 'MinAB'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListRowMaxAB: TFloatField
      FieldName = 'MaxAB'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListRowSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListRowPricePerAM3: TFloatField
      FieldName = 'PricePerAM3'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListRowGradeGroupNo: TIntegerField
      FieldName = 'GradeGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_PriceListRowSurfacingGroupNo: TIntegerField
      FieldName = 'SurfacingGroupNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_PriceListGrp: TDataSetProvider
    DataSet = sq_PriceListGrp
    UpdateMode = upWhereKeyOnly
    Left = 848
    Top = 72
  end
  object dsp_PriceListRow: TDataSetProvider
    DataSet = sq_PriceListRow
    UpdateMode = upWhereKeyOnly
    Left = 944
    Top = 72
  end
  object cds_PriceListGrp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PriceListGrp'
    AfterInsert = cds_PriceListGrpAfterInsert
    BeforePost = cds_PriceListGrpBeforePost
    Left = 848
    Top = 120
    object cds_PriceListGrpPriceListNo: TIntegerField
      DisplayLabel = 'PRISLISTANR'
      FieldName = 'PriceListNo'
    end
    object cds_PriceListGrpSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object cds_PriceListGrpPriceListDate: TSQLTimeStampField
      DisplayLabel = 'DATUM'
      FieldName = 'PriceListDate'
    end
    object cds_PriceListGrpNote: TStringField
      DisplayLabel = 'NOTERING'
      FieldName = 'Note'
      Size = 50
    end
    object cds_PriceListGrpCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
    object cds_PriceListGrpDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_PriceListGrpTS: TStringField
      FieldKind = fkLookup
      FieldName = 'TS'
      LookupDataSet = dmsSystem.cds_Species_SV
      LookupKeyFields = 'SpeciesNo'
      LookupResultField = 'SpeciesName'
      KeyFields = 'SpeciesNo'
      Size = 30
      Lookup = True
    end
    object cds_PriceListGrpClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
  end
  object cds_PriceListRow: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'PriceListNo'
    MasterFields = 'PriceListNo'
    MasterSource = ds_PriceListGrp
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp_PriceListRow'
    AfterInsert = cds_PriceListRowAfterInsert
    Left = 944
    Top = 120
    object cds_PriceListRowPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_PriceListRowPriceListRowNo: TIntegerField
      FieldName = 'PriceListRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_PriceListRowMinAT: TFloatField
      FieldName = 'MinAT'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceListRowMaxAT: TFloatField
      FieldName = 'MaxAT'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceListRowMinAB: TFloatField
      FieldName = 'MinAB'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceListRowMaxAB: TFloatField
      FieldName = 'MaxAB'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceListRowSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceListRowPricePerAM3: TFloatField
      DisplayLabel = 'PRIS'
      FieldName = 'PricePerAM3'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PriceListRowTS: TStringField
      FieldKind = fkLookup
      FieldName = 'TS'
      LookupDataSet = dmsSystem.cds_Species_SV
      LookupKeyFields = 'SpeciesNo'
      LookupResultField = 'SpeciesName'
      KeyFields = 'SpeciesNo'
      Size = 30
      Lookup = True
    end
    object cds_PriceListRowKV: TStringField
      FieldKind = fkLookup
      FieldName = 'KV'
      LookupDataSet = cds_GradeGroupHdr
      LookupKeyFields = 'GradeGroupNo'
      LookupResultField = 'GradeGroupName'
      KeyFields = 'GradeGroupNo'
      Size = 30
      Lookup = True
    end
    object cds_PriceListRowUT: TStringField
      FieldKind = fkLookup
      FieldName = 'UT'
      LookupDataSet = cds_SurfGrpHdr
      LookupKeyFields = 'SurfacingGroupNo'
      LookupResultField = 'SurfacingGroupName'
      KeyFields = 'SurfacingGroupNo'
      Size = 30
      Lookup = True
    end
    object cds_PriceListRowGradeGroupNo: TIntegerField
      FieldName = 'GradeGroupNo'
    end
    object cds_PriceListRowSurfacingGroupNo: TIntegerField
      FieldName = 'SurfacingGroupNo'
    end
  end
  object ds_PriceListGrp: TDataSource
    DataSet = cds_PriceListGrp
    Left = 848
    Top = 168
  end
  object ds_PriceListRow: TDataSource
    DataSet = cds_PriceListRow
    Left = 944
    Top = 168
  end
  object sq_GradeGroupHdr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.GradeGroupHdr'
      'WHERE ClientNo = :ClientNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 504
    Top = 432
    object sq_GradeGroupHdrGradeGroupNo: TIntegerField
      FieldName = 'GradeGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GradeGroupHdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GradeGroupHdrGradeGroupName: TStringField
      FieldName = 'GradeGroupName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_GradeGroupHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GradeGroupHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_GradeGroupHdr: TDataSetProvider
    DataSet = sq_GradeGroupHdr
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 480
  end
  object cds_GradeGroupHdr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_GradeGroupHdr'
    AfterInsert = cds_GradeGroupHdrAfterInsert
    Left = 504
    Top = 528
    object cds_GradeGroupHdrGradeGroupNo: TIntegerField
      FieldName = 'GradeGroupNo'
    end
    object cds_GradeGroupHdrClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_GradeGroupHdrGradeGroupName: TStringField
      DisplayLabel = 'KVALITETSGRUPP'
      FieldName = 'GradeGroupName'
      Size = 30
    end
    object cds_GradeGroupHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
    end
    object cds_GradeGroupHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
    end
  end
  object ds_GradeGroupHdr: TDataSource
    DataSet = cds_GradeGroupHdr
    Left = 504
    Top = 576
  end
  object sq_GradeGroupRow: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'GradeGroupNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select GGR.* FROM dbo.GradeGroupRow GGR '
      'WHERE GGR.GradeGroupNo = :GradeGroupNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 608
    Top = 432
    object sq_GradeGroupRowGradeGroupNo: TIntegerField
      FieldName = 'GradeGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GradeGroupRowGradeNo: TIntegerField
      FieldName = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsp_GradeGroupRow: TDataSetProvider
    DataSet = sq_GradeGroupRow
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 480
  end
  object cds_GradeGroupRow: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'GradeGroupNo'
    MasterFields = 'GradeGroupNo'
    MasterSource = ds_GradeGroupHdr
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp_GradeGroupRow'
    AfterInsert = cds_GradeGroupRowAfterInsert
    Left = 608
    Top = 528
    object cds_GradeGroupRowGradeGroupNo: TIntegerField
      FieldName = 'GradeGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_GradeGroupRowGradeNo: TIntegerField
      FieldName = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_GradeGroupRowKV: TStringField
      DisplayLabel = 'KVALITET'
      FieldKind = fkLookup
      FieldName = 'KV'
      LookupDataSet = dmsSystem.cds_Grade_SV
      LookupKeyFields = 'GradeNo'
      LookupResultField = 'GradeName'
      KeyFields = 'GradeNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_GradeGroupRow: TDataSource
    DataSet = cds_GradeGroupRow
    Left = 608
    Top = 576
  end
  object sq_SurfGrpHdr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.SurfacingGroupHdr'
      'WHERE ClientNo = :ClientNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 736
    Top = 432
    object sq_SurfGrpHdrSurfacingGroupNo: TIntegerField
      FieldName = 'SurfacingGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SurfGrpHdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SurfGrpHdrSurfacingGroupName: TStringField
      FieldName = 'SurfacingGroupName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sq_SurfGrpHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sq_SurfGrpHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_SurGrpRow: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SurfacingGroupNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * FROM dbo.SurfacingGroupRow'
      'WHERE SurfacingGroupNo = :SurfacingGroupNo')
    SQLConnection = dmsConnector.SQLConnection
    Left = 848
    Top = 432
    object sq_SurGrpRowSurfacingGroupNo: TIntegerField
      FieldName = 'SurfacingGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_SurGrpRowSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsp_SurfGrpHdr: TDataSetProvider
    DataSet = sq_SurfGrpHdr
    UpdateMode = upWhereKeyOnly
    Left = 736
    Top = 480
  end
  object dsp_SurGrpRow: TDataSetProvider
    DataSet = sq_SurGrpRow
    UpdateMode = upWhereKeyOnly
    Left = 848
    Top = 480
  end
  object cds_SurfGrpHdr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_SurfGrpHdr'
    AfterInsert = cds_SurfGrpHdrAfterInsert
    Left = 736
    Top = 528
    object cds_SurfGrpHdrSurfacingGroupNo: TIntegerField
      FieldName = 'SurfacingGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_SurfGrpHdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SurfGrpHdrSurfacingGroupName: TStringField
      DisplayLabel = 'UTF'#214'RANDEGRUPP'
      FieldName = 'SurfacingGroupName'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_SurfGrpHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SurfGrpHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_SurGrpRow: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SurfacingGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_SurGrpRowIndex1'
        Fields = 'SurfacingGroupNo'
      end
      item
        Name = 'cds_SurGrpRowIndex2'
        Fields = 'SurfacingGroupNo;SurfacingNo'
      end>
    IndexFieldNames = 'SurfacingGroupNo'
    MasterFields = 'SurfacingGroupNo'
    MasterSource = ds_SurfGrpHdr
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp_SurGrpRow'
    StoreDefs = True
    AfterInsert = cds_SurGrpRowAfterInsert
    OnReconcileError = cds_SurGrpRowReconcileError
    Left = 848
    Top = 528
    object cds_SurGrpRowSurfacingGroupNo: TIntegerField
      FieldName = 'SurfacingGroupNo'
    end
    object cds_SurGrpRowSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object cds_SurGrpRowUTFRANDE: TStringField
      FieldKind = fkLookup
      FieldName = 'UTF'#214'RANDE'
      LookupDataSet = dmsSystem.cds_Surfacing_SV
      LookupKeyFields = 'SurfacingNo'
      LookupResultField = 'SurfacingName'
      KeyFields = 'SurfacingNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_SurfGrpHdr: TDataSource
    DataSet = cds_SurfGrpHdr
    Left = 736
    Top = 576
  end
  object ds_SurGrpRow: TDataSource
    DataSet = cds_SurGrpRow
    Left = 848
    Top = 576
  end
  object sq_SaveToInvCtrlRow_PktNr2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '-- spara paket till InvControlRow - paketnr metod'
      ''
      'Insert into dbo.InvControlRow'
      ''
      ''
      '--//Get packages on loads not shipped yet'
      'Select'
      'icm.IC_grpno,'
      'icm.LogicalInventoryPointNo AS LIP,'
      'icm.InventeringsMetod,'
      'pn.PackageNo AS PAKETNR,'
      'pn.SupplierCode AS LEVKOD,'
      'pt.PackageTypeNo,'
      '1,'
      '1,'
      'LIP.LogicalInventoryName AS Lagergrupp,'
      '1 AS STATUS,'
      'pip.OwnerNo'
      ''
      'FROM dbo.Loads L'
      'Inner Join dbo.LoadDetail LD on LD.LoadNo = L.LoadNo'
      
        'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = LD.PackageNo a' +
        'nd pn.SupplierCode = LD.SupplierCode'
      
        'Inner Join dbo.InvCtrlMetod icm on icm.LogicalInventoryPointNo =' +
        ' pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint pip ON pip.PhysicalInvento' +
        'ryPointNo = lip.PhysicalInventoryPointNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = pip.OwnerNo'
      ''
      ''
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      'WHERE'
      'L.SupplierNo = :SupplierNo'
      'AND L.SenderLoadStatus = 0'
      'AND icm.IC_grpno = :IC_grpno'
      'AND pn.Status = 0'
      ''
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 144
    Top = 288
  end
  object sq_GetChangesToPackages: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Update dbo.InvControlRow'
      'Set PackageTypeNo = pn.PackageTypeNo,'
      'LogicalInventoryPointNo = pn.LogicalInventoryPointNo,'
      'LogicalInventoryName = LIP.LogicalInventoryName'
      'FROM  dbo.InvControlGrp ICG'
      'INNER JOIN dbo.InvControlRow icr on icr.IC_grpno = ICG.IC_grpno'
      ''
      'INNER JOIN dbo.PackageNumber pn ON pn.PackageNo = icr.PackageNo'
      #9#9#9#9#9'AND pn.SupplierCode = icr.SupplierCode'
      
        'Inner Join dbo.LogicalInventoryPoint lip ON lip.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      
        'Inner Join dbo.PackageNumberLog pnl ON pnl.PackageNo = icr.Packa' +
        'geNo'
      #9#9#9#9#9'AND pnl.SupplierCode = icr.SupplierCode'
      ''
      ''
      'WHERE  ICG.IC_grpno = :IC_grpno'
      'AND icr.Status = 1'
      'and ((pnl.Operation = 1) or (pnl.Operation = 2))'
      'and pnl.EventDate <= ICG.MaxDatum '
      'AND pnl.EventDate >= ICG.Inventeringsdatum')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 576
  end
  object sp_GenInvenSummary: TSQLStoredProc
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
        Name = 'IC_grpno'
        ParamType = ptInput
      end>
    SQLConnection = dmsConnector.SQLConnection
    StoredProcName = 'VIS_GenInvenSummary'
    Left = 264
    Top = 416
  end
end
