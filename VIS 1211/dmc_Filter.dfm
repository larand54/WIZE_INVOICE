object dm_Filter: Tdm_Filter
  OldCreateOrder = False
  Left = 229
  Top = 107
  Height = 407
  Width = 838
  object sq_verk: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6))'
      ''
      'Order by C.clientName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 32
    Top = 16
  end
  object dsp_verk: TDataSetProvider
    DataSet = sq_verk
    Left = 32
    Top = 64
  end
  object cds_Verk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_verk'
    Left = 32
    Top = 112
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Size = 80
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 32
    Top = 160
  end
  object sq_Producer: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 2'
      ''
      'Order by C.clientName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 112
    Top = 16
  end
  object dsp_producer: TDataSetProvider
    DataSet = sq_Producer
    Left = 112
    Top = 64
  end
  object cds_producer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_verk'
    Left = 112
    Top = 112
    object cds_producerClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object cds_producerClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
    object cds_producerSearchName: TStringField
      FieldName = 'SearchName'
      Size = 80
    end
  end
  object ds_Producer: TDataSource
    DataSet = cds_producer
    Left = 112
    Top = 160
  end
  object sq_PIP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LegoOwnerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS PIPNAME'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY, ClientRole CR'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND CR.ClientNo = PH.OwnerNo'
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)')
    SQLConnection = dmsConnector.SQLConnection
    Left = 200
    Top = 17
  end
  object sq_LIP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PIPNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1')
    SQLConnection = dmsConnector.SQLConnection
    Left = 288
    Top = 17
  end
  object dsp_PIP: TDataSetProvider
    DataSet = sq_PIP
    Left = 200
    Top = 64
  end
  object dsp_LIP: TDataSetProvider
    DataSet = sq_LIP
    Left = 288
    Top = 64
  end
  object cds_PIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PIP'
    Left = 200
    Top = 112
    object cds_PIPPIPNO: TIntegerField
      FieldName = 'PIPNO'
    end
    object cds_PIPPIPNAME: TStringField
      FieldName = 'PIPNAME'
      Size = 50
    end
  end
  object cds_LIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LIP'
    Left = 288
    Top = 112
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object cds_LIPLIPName: TStringField
      FieldName = 'LIPName'
      Size = 50
    end
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 200
    Top = 160
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 288
    Top = 160
  end
  object sq_RegPoint: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT   Distinct RP.RegPointName AS ProductionUnitName,'
      'PU.RegistrationPointNo'
      'FROM dbo.ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      'WHERE'
      ' PU.ClientNo = :ClientNo'
      'ORDER BY RP.RegPointName'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 368
    Top = 16
  end
  object dsp_RegPoint: TDataSetProvider
    DataSet = sq_RegPoint
    Left = 368
    Top = 64
  end
  object cds_RegPoint: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_RegPoint'
    Left = 368
    Top = 112
    object cds_RegPointProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      FixedChar = True
      Size = 30
    end
    object cds_RegPointRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
    end
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 368
    Top = 160
  end
  object sq_LengthGroup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT  Distinct GroupNo, GroupName '
      'FROM dbo.ProductLengthGroupName '
      'ORDER BY GroupName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 464
    Top = 16
  end
  object dsp_LengthGroup: TDataSetProvider
    DataSet = sq_LengthGroup
    Exported = False
    Left = 464
    Top = 64
  end
  object cds_LengthGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_LengthGroup'
    Left = 464
    Top = 112
    object cds_LengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
    end
    object cds_LengthGroupGroupName: TStringField
      FieldName = 'GroupName'
      FixedChar = True
    end
  end
  object ds_LengthGroup: TDataSource
    DataSet = cds_LengthGroup
    Left = 464
    Top = 160
  end
end
