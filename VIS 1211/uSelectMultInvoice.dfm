object fSelectMultInvoice: TfSelectMultInvoice
  Left = 229
  Top = 107
  ActiveControl = grdMultInvoice
  Caption = 'V'#228'lj en faktura'
  ClientHeight = 241
  ClientWidth = 462
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
    Top = 200
    Width = 462
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 211
    ExplicitWidth = 470
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object grdMultInvoice: TcxGrid
    Left = 0
    Top = 0
    Width = 462
    Height = 200
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 470
    ExplicitHeight = 211
    object grdMultInvoiceDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmVidaInvoice.ds_NoOfInvoices
      DataController.KeyFieldNames = 'InternalInvoiceNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdMultInvoiceDBTableView1LO: TcxGridDBColumn
        DataBinding.FieldName = 'LO'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 120
      end
      object grdMultInvoiceDBTableView1Fakturnr: TcxGridDBColumn
        DataBinding.FieldName = 'Fakturnr'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 141
      end
      object grdMultInvoiceDBTableView1Fakturadatum: TcxGridDBColumn
        DataBinding.FieldName = 'Fakturadatum'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 207
      end
    end
    object grdMultInvoiceLevel1: TcxGridLevel
      GridView = grdMultInvoiceDBTableView1
    end
  end
end
