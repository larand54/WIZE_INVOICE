object fSelectLONoByInvoiceSerie: TfSelectLONoByInvoiceSerie
  Left = 229
  Top = 107
  Width = 436
  Height = 339
  Caption = 'Multipla fakturanr'
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
    Top = 0
    Width = 428
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 271
    Width = 428
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 144
      Top = 8
      Width = 75
      Height = 28
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 8
      Width = 75
      Height = 28
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object grdSelectLONo: TcxGrid
    Left = 0
    Top = 41
    Width = 428
    Height = 230
    Align = alClient
    TabOrder = 2
    object grdSelectLONoDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = daMoLM1.ds_GetLOByInvNo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdSelectLONoDBTableView1LO: TcxGridDBColumn
        DataBinding.FieldName = 'LO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 175
      end
      object grdSelectLONoDBTableView1Fakturaserie: TcxGridDBColumn
        DataBinding.FieldName = 'Fakturaserie'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 298
      end
      object grdSelectLONoDBTableView1InternalInvoiceNo: TcxGridDBColumn
        DataBinding.FieldName = 'InternalInvoiceNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 159
      end
      object grdSelectLONoDBTableView1InvoiceType: TcxGridDBColumn
        DataBinding.FieldName = 'InvoiceType'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 157
      end
      object grdSelectLONoDBTableView1Fakturanr: TcxGridDBColumn
        DataBinding.FieldName = 'Fakturanr'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 195
      end
    end
    object grdSelectLONoLevel1: TcxGridLevel
      GridView = grdSelectLONoDBTableView1
    end
  end
end
