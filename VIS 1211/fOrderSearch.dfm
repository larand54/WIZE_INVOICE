object frmOrderSearch: TfrmOrderSearch
  Left = 219
  Top = 106
  Width = 1014
  Height = 536
  ActiveControl = EditSearchLO
  Caption = 'S'#246'k kontrakt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 19
      Width = 51
      Height = 13
      Caption = 'S'#246'k Lastnr'
    end
    object Label2: TLabel
      Left = 488
      Top = 19
      Width = 86
      Height = 13
      Caption = 'S'#246'k  avr'#228'kningsnr'
    end
    object Label3: TLabel
      Left = 16
      Top = 19
      Width = 36
      Height = 13
      Caption = 'S'#246'k LO'
    end
    object editSearch: TEdit
      Left = 280
      Top = 11
      Width = 193
      Height = 21
      TabOrder = 1
      OnEnter = editSearchEnter
      OnExit = editSearchExit
      OnKeyUp = editSearchKeyUp
    end
    object EditSearchRef: TEdit
      Left = 584
      Top = 11
      Width = 193
      Height = 21
      TabOrder = 2
      OnEnter = EditSearchRefEnter
      OnExit = EditSearchRefExit
      OnKeyUp = EditSearchRefKeyUp
    end
    object EditSearchLO: TEdit
      Left = 56
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
      OnEnter = EditSearchLOEnter
      OnExit = EditSearchLOExit
      OnKeyUp = EditSearchLOKeyUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 468
    Width = 1006
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Button2: TButton
      Left = 488
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object Button1: TButton
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Action = atOK
      TabOrder = 0
    end
  end
  object grdSearchOrder: TcxGrid
    Left = 0
    Top = 41
    Width = 1006
    Height = 427
    Align = alClient
    TabOrder = 2
    object grdSearchOrderDBTableView1: TcxGridDBTableView
      OnDblClick = atOKExecute
      OnKeyUp = grdSearchOrderDBTableView1KeyUp
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_SearchOrder
      DataController.KeyFieldNames = 'OrderNo;LO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdSearchOrderDBTableView1OrderNoText: TcxGridDBColumn
        DataBinding.FieldName = 'OrderNoText'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 121
      end
      object grdSearchOrderDBTableView1ClientName: TcxGridDBColumn
        DataBinding.FieldName = 'ClientName'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 285
      end
      object grdSearchOrderDBTableView1AGENT: TcxGridDBColumn
        DataBinding.FieldName = 'AGENT'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 215
      end
      object grdSearchOrderDBTableView1LO: TcxGridDBColumn
        DataBinding.FieldName = 'LO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 87
      end
      object grdSearchOrderDBTableView1Reference: TcxGridDBColumn
        DataBinding.FieldName = 'Reference'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 175
      end
      object grdSearchOrderDBTableView1ALO: TcxGridDBColumn
        DataBinding.FieldName = 'ALO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 63
      end
      object grdSearchOrderDBTableView1CustomerNo: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 48
      end
      object grdSearchOrderDBTableView1OrderNo: TcxGridDBColumn
        DataBinding.FieldName = 'OrderNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 41
      end
      object grdSearchOrderDBTableView1Objecttype: TcxGridDBColumn
        DataBinding.FieldName = 'Objecttype'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Intern LO'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'ADD LO'
            Value = 1
          end
          item
            Description = 'Order LO'
            Value = 2
          end>
        Properties.ReadOnly = True
        Width = 86
      end
    end
    object grdSearchOrderLevel1: TcxGridLevel
      GridView = grdSearchOrderDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 160
    Top = 152
    object atOK: TAction
      Caption = '&OK'
      Hint = 'OK'
      OnExecute = atOKExecute
      OnUpdate = atOKUpdate
    end
  end
  object sq_SearchOrder: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select O.OrderNo, O.OrderNoText, O.CustomerNo, C.ClientName, '
      'ssp.LO_No AS LO, ssp.LO_No AS ALO,'
      'AC.ClientName AS AGENT, CSH.Reference, ssp.Objecttype'
      'FROM dbo.Orders O'
      'Inner Join dbo.Client C ON C.ClientNo = O.CustomerNo'
      'Left Outer Join dbo.Client AC ON AC.ClientNo = O.AgentNo'
      
        'LEFT JOIN dbo.SupplierShippingPlan ssp ON ssp.OrderNo = O.OrderN' +
        'o'
      
        'LEFT JOIN dbo.CustomerShippingPlanHeader CSH ON CSH.OrderNo = O.' +
        'OrderNo'
      'WHERE O.OrderNoText LIKE '#39'%0%'#39)
    SQLConnection = dmsConnector.SQLConnection
    Left = 80
    Top = 104
  end
  object dsp_SearchOrder: TDataSetProvider
    DataSet = sq_SearchOrder
    Left = 80
    Top = 136
  end
  object cds_SearchOrder: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_SearchOrder'
    Left = 80
    Top = 168
    object cds_SearchOrderOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object cds_SearchOrderOrderNoText: TStringField
      DisplayLabel = 'KONTRAKTSNR'
      FieldName = 'OrderNoText'
    end
    object cds_SearchOrderCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object cds_SearchOrderClientName: TStringField
      DisplayLabel = 'KLIENT'
      FieldName = 'ClientName'
      Size = 80
    end
    object cds_SearchOrderLO: TIntegerField
      FieldName = 'LO'
    end
    object cds_SearchOrderALO: TIntegerField
      FieldName = 'ALO'
    end
    object cds_SearchOrderAGENT: TStringField
      FieldName = 'AGENT'
      Size = 80
    end
    object cds_SearchOrderReference: TStringField
      DisplayLabel = 'ER REFERENS'
      FieldName = 'Reference'
      Size = 30
    end
    object cds_SearchOrderObjecttype: TIntegerField
      DisplayLabel = 'LO typ'
      FieldName = 'Objecttype'
    end
  end
  object ds_SearchOrder: TDataSource
    DataSet = cds_SearchOrder
    Left = 80
    Top = 208
  end
end
