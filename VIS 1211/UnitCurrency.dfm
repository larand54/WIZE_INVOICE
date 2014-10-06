object FormCurrency: TFormCurrency
  Left = 270
  Top = 126
  ActiveControl = grdCurr
  Caption = 'Valuta'
  ClientHeight = 455
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 404
    Width = 334
    Height = 51
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 415
    ExplicitWidth = 342
    object BitBtn1: TBitBtn
      Left = 88
      Top = 13
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 13
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdCurr: TcxGrid
    Left = 0
    Top = 0
    Width = 334
    Height = 404
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 342
    ExplicitHeight = 415
    object grdCurrDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.ds_Currency
      DataController.KeyFieldNames = 'CurrencyNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdCurrDBTableView1CurrencyName: TcxGridDBColumn
        Caption = 'VALUTA'
        DataBinding.FieldName = 'CurrencyName'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    object grdCurrLevel1: TcxGridLevel
      GridView = grdCurrDBTableView1
    end
  end
end
