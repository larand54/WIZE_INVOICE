object fInScannedPkgs: TfInScannedPkgs
  Left = 229
  Top = 107
  Caption = 'Skapade laster'
  ClientHeight = 341
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 455
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = acOpen
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Action = acClose
      TabOrder = 1
    end
  end
  object grdCreatedLoads: TcxGrid
    Left = 0
    Top = 41
    Width = 447
    Height = 300
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 455
    ExplicitHeight = 311
    object grdCreatedLoadsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsImportedLoads
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdCreatedLoadsDBTableView1LoadNo: TcxGridDBColumn
        DataBinding.FieldName = 'LoadNo'
      end
      object grdCreatedLoadsDBTableView1LONo: TcxGridDBColumn
        DataBinding.FieldName = 'LONo'
      end
    end
    object grdCreatedLoadsLevel1: TcxGridLevel
      GridView = grdCreatedLoadsDBTableView1
    end
  end
  object dsImportedLoads: TDataSource
    DataSet = frmLoadOrder.mtImportedLoads
    Left = 200
    Top = 88
  end
  object ActionList1: TActionList
    Left = 296
    Top = 136
    object acOpen: TAction
      Caption = #214'ppna'
      OnExecute = acOpenExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      OnExecute = acCloseExecute
    end
  end
end
