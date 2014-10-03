inherited fAvdelning: TfAvdelning
  Caption = 'Avdelning'
  ClientHeight = 700
  ClientWidth = 1049
  ExplicitWidth = 1057
  ExplicitHeight = 728
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel5: TPanel
    Width = 1049
    inherited Panel2: TPanel
      Left = 939
    end
  end
  inherited Panel1: TPanel
    Top = 659
    Width = 1049
  end
  inherited cxGrid1: TcxGrid
    Top = 81
    Width = 1049
    Height = 578
    ExplicitTop = 75
    ExplicitWidth = 1049
    ExplicitHeight = 578
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'Kontonr'
          Column = cxGrid1DBTableView1Kontonr
        end>
      NewItemRow.Visible = True
      object cxGrid1DBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
        Visible = False
      end
      object cxGrid1DBTableView1Kontonr: TcxGridDBColumn
        DataBinding.FieldName = 'Kontonr'
      end
      object cxGrid1DBTableView1Avdelning: TcxGridDBColumn
        DataBinding.FieldName = 'Avdelning'
      end
      object cxGrid1DBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        Visible = False
      end
      object cxGrid1DBTableView1DateCreated: TcxGridDBColumn
        Caption = 'Skapad'
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 41
    Width = 1049
    Height = 40
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 760
    object lcClient: TcxDBLookupComboBox
      Left = 169
      Top = 6
      DataBinding.DataField = 'Verk'
      DataBinding.DataSource = ds_Client
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      Width = 328
    end
    object cxLabel1: TcxLabel
      Left = 72
      Top = 8
      Caption = 'F'#246'rs'#228'ljningsregion:'
    end
  end
  inherited imglistActions: TImageList
    Left = 344
    Top = 221
  end
  inherited ActionList_DBForm: TActionList
    Left = 348
    Top = 164
    inherited acAddRecord: TAction
      OnUpdate = acAddRecordUpdate
    end
    object acRefresh: TAction
      Caption = 'Uppdatera'
      ImageIndex = 1
      OnExecute = acRefreshExecute
    end
  end
  inherited DataSource1: TDataSource
    DataSet = cds_Avdelning
    Left = 208
    Top = 216
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 80
    Top = 224
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited PopupMenu2: TPopupMenu
    Left = 80
    Top = 168
  end
  object ds_Client: TDataSource [10]
    DataSet = mtClient
    Left = 480
    Top = 104
  end
  object mtClient: TADMemTable [11]
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 480
    Top = 56
    object mtClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      OnChange = mtClientClientNoChange
    end
    object mtClientVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
  object cds_Avdelning: TADQuery [12]
    AfterInsert = cds_AvdelningAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'Select * FROM dbo.Avdelning'
      'WHERE ClientNo = :ClientNo')
    Left = 472
    Top = 228
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AvdelningClientNo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AvdelningKontonr: TStringField
      FieldName = 'Kontonr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object cds_AvdelningAvdelning: TStringField
      FieldName = 'Avdelning'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object cds_AvdelningCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_AvdelningDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_SR: TADQuery [13]
    CachedUpdates = True
    Connection = dmsConnector.ADConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select C.ClientName, C.ClientNo'
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      'WHERE  C.ClientNo = R.ClientNo'
      'AND  R.RoleType = 7'
      'Order by C.clientName')
    Left = 576
    Top = 184
    object cds_SRClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_SRClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
