object fSelectLIPNo: TfSelectLIPNo
  Left = 0
  Top = 0
  ActiveControl = lcPIP
  Caption = 'fSelectLIPNo'
  ClientHeight = 151
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 94
    Width = 476
    Height = 57
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 176
    ExplicitWidth = 441
    object cxButton1: TcxButton
      Left = 120
      Top = 16
      Width = 97
      Height = 33
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 240
      Top = 16
      Width = 97
      Height = 33
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PanelLager: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 94
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 16
    ExplicitTop = 1
    ExplicitWidth = 626
    ExplicitHeight = 259
    object cxLabel1: TcxLabel
      Left = 18
      Top = 17
      Caption = 'Lagerst'#228'lle:'
    end
    object cxLabel2: TcxLabel
      Left = 18
      Top = 37
      Caption = 'Lagergrupp:'
    end
    object lcPIP: TcxDBLookupComboBox
      Left = 80
      Top = 8
      DataBinding.DataField = 'PIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      OnEnter = lcPIPEnter
      OnExit = lcPIPExit
      Width = 305
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 80
      Top = 32
      DataBinding.DataField = 'LIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 3
      OnEnter = lcLIPEnter
      OnExit = lcLIPExit
      Width = 305
    end
  end
  object cds_LO_LookUp: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT '
      'CSH.LoadingLocationNo AS LoadingPIPNo, CSH.LoadingLIPNo'
      'FROM dbo.CustomerShippingPlanHeader CSH'
      'WHERE'
      'CSH.ShippingPlanNo = :ShippingPlanNo')
    Left = 208
    Top = 88
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LO_LookUpLoadingPIPNo: TIntegerField
      FieldName = 'LoadingPIPNo'
      Origin = 'LoadingPIPNo'
    end
    object cds_LO_LookUpLoadingLIPNo: TIntegerField
      FieldName = 'LoadingLIPNo'
      Origin = 'LoadingLIPNo'
    end
  end
  object mtProps: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.12.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 89
    Top = 85
    object mtPropsFakturanr: TIntegerField
      FieldName = 'Fakturanr'
    end
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPropsPIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'ORT'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 89
    Top = 133
  end
  object ds_LIP2: TDataSource
    DataSet = cds_LIP
    Left = 368
    Top = 128
  end
  object ds_PIP2: TDataSource
    DataSet = cds_PIP
    Left = 288
    Top = 128
  end
  object cds_PIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT PIP.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAME AS ORT' +
        ', PIP.OwnerNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      ''
      'WHERE PIP.SequenceNo = 1')
    Left = 288
    Top = 72
    object cds_PIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_PIPORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      Size = 50
    end
    object cds_PIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object cds_LIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS LAGERGRUPP, LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM'
      'dbo.LogicalInventoryPoint LIP'
      'WHERE LIP.SequenceNo = 1')
    Left = 368
    Top = 72
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIPLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      Size = 50
    end
    object cds_LIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
end
