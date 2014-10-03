object fFreightAvrSearch: TfFreightAvrSearch
  Left = 219
  Top = 106
  ActiveControl = EditSearchLO
  Caption = 'S'#246'k avr'#228'kning'
  ClientHeight = 498
  ClientWidth = 998
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
    Width = 998
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
      Left = 392
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
    object Label4: TLabel
      Left = 624
      Top = 19
      Width = 67
      Height = 13
      Caption = 'S'#246'k  fakturanr'
    end
    object editSearch: TEdit
      Left = 256
      Top = 11
      Width = 113
      Height = 21
      TabOrder = 1
      OnEnter = editSearchEnter
      OnExit = editSearchExit
      OnKeyUp = editSearchKeyUp
    end
    object EditSearchAvrNr: TEdit
      Left = 484
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 2
      OnEnter = EditSearchAvrNrEnter
      OnExit = EditSearchAvrNrExit
      OnKeyUp = EditSearchAvrNrKeyUp
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
    object EditSearchYourInvoiceNo: TEdit
      Left = 698
      Top = 11
      Width = 113
      Height = 21
      TabOrder = 3
      OnEnter = EditSearchYourInvoiceNoEnter
      OnExit = EditSearchYourInvoiceNoExit
      OnKeyUp = EditSearchYourInvoiceNoKeyUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 457
    Width = 998
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
  object grdFreightAvrSearch: TcxGrid
    Left = 0
    Top = 41
    Width = 998
    Height = 416
    Align = alClient
    TabOrder = 2
    object grdFreightAvrSearchDBTableView1: TcxGridDBTableView
      OnDblClick = atOKExecute
      OnKeyUp = grdFreightAvrSearchDBTableView1KeyUp
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_SearchOrder
      DataController.KeyFieldNames = 'AvrNr'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdFreightAvrSearchDBTableView1AvrNr: TcxGridDBColumn
        DataBinding.FieldName = 'AvrNr'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 127
      end
      object grdFreightAvrSearchDBTableView1Verk: TcxGridDBColumn
        DataBinding.FieldName = 'Verk'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 439
      end
      object grdFreightAvrSearchDBTableView1Speditr: TcxGridDBColumn
        DataBinding.FieldName = 'Spedit'#246'r'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 438
      end
    end
    object grdFreightAvrSearchLevel1: TcxGridLevel
      GridView = grdFreightAvrSearchDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 184
    Top = 128
    object atOK: TAction
      Caption = '&OK'
      Hint = 'OK'
      OnExecute = atOKExecute
      OnUpdate = atOKUpdate
    end
  end
  object ds_SearchOrder: TDataSource
    DataSet = cds_SearchOrder
    Left = 184
    Top = 248
  end
  object cds_SearchOrder: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      
        'LFCH.AvrakningsNo AS AvrNr, Verk.clientName AS Verk, shipper.cli' +
        'entName AS Spedit'#246'r'
      'FROM   dbo.LoadFreightCostHeader LFCH'
      ''
      
        'Inner join Client Shipper on shipper.clientno = LFCH.LocalShippe' +
        'rNo'
      'Inner join Client Verk on Verk.clientno = LFCH.VerkNo'
      
        'Inner Join dbo.LoadFreightCost LFC on LFC.AvrakningsNo = LFCH.Av' +
        'rakningsNo'
      'Inner Join dbo.LoadShippingPlan LSP on LSP.LoadNo = LFC.LoadNo'
      '')
    Left = 184
    Top = 192
    object cds_SearchOrderAvrNr: TIntegerField
      FieldName = 'AvrNr'
      Origin = 'AvrNr'
      Required = True
    end
    object cds_SearchOrderVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object cds_SearchOrderSpeditör: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      Size = 80
    end
  end
end
