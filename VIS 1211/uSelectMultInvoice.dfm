object fSelectMultInvoice: TfSelectMultInvoice
  Left = 229
  Top = 107
  Width = 478
  Height = 279
  ActiveControl = grdMultInvoice
  Caption = 'V'#228'lj en faktura'
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
    Top = 211
    Width = 470
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
  object grdMultInvoice: TcxGrid
    Left = 0
    Top = 0
    Width = 470
    Height = 211
    Align = alClient
    TabOrder = 1
    object grdMultInvoiceDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
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
