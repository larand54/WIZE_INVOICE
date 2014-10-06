object FormSelectClient: TFormSelectClient
  Left = 317
  Top = 96
  ActiveControl = grdClients
  Caption = 'Klientlista'
  ClientHeight = 442
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 502
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 412
    ExplicitWidth = 510
    object BitBtn1: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdClients: TcxGrid
    Left = 0
    Top = 33
    Width = 502
    Height = 368
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    ExplicitWidth = 510
    ExplicitHeight = 379
    object grdClientsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmModule1.dsClient
      DataController.KeyFieldNames = 'ClientNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdClientsDBTableView1ClientName: TcxGridDBColumn
        Caption = 'KLIENT'
        DataBinding.FieldName = 'ClientName'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    object grdClientsLevel1: TcxGridLevel
      GridView = grdClientsDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 502
    Height = 33
    Align = alTop
    Caption = 'Skriv in klienten du s'#246'ker...'
    TabOrder = 2
    ExplicitWidth = 510
  end
end
