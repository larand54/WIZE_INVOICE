object frmInvoiceGroup: TfrmInvoiceGroup
  Left = 192
  Top = 107
  Width = 748
  Height = 480
  Caption = 'frmInvoiceGroup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 194
    Width = 740
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clBlack
    ParentColor = False
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 740
    Height = 44
    Align = dalTop
    BarManager = dxBarManager1
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 44
    Width = 740
    Height = 150
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alTop
    TabOrder = 3
    DataSource = daMoLM1.ds_InvoiceGroup
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    object dxDBGrid1InvoiceGroupNo: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'InvoiceGroupNo'
    end
    object dxDBGrid1CreatedUser: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CreatedUser'
    end
    object dxDBGrid1ModifiedUser: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ModifiedUser'
    end
    object dxDBGrid1CreatedDate: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CreatedDate'
    end
    object dxDBGrid1ModifiedDate: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ModifiedDate'
    end
    object dxDBGrid1Note: TdxDBGridMemoColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Note'
    end
  end
  object dxDBGrid2: TdxDBGrid
    Left = 0
    Top = 225
    Width = 740
    Height = 228
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 5
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
  end
  object Panel1: TPanel
    Left = 0
    Top = 197
    Width = 740
    Height = 28
    Align = alTop
    Caption = 'Invoices'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        Caption = 'Custom 1'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 276
        FloatTop = 216
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = lbPrint
            Visible = True
          end
          item
            Item = lbDelete
            Visible = True
          end
          item
            BeginGroup = True
            Item = lbDelete
            Visible = True
          end>
        Name = 'Custom 1'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 168
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object lbExit: TdxBarLargeButton
      Caption = 'Exit'
      Category = 0
      Hint = 'Exit'
      Visible = ivAlways
    end
    object lbPrint: TdxBarLargeButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
    end
    object lbDelete: TdxBarLargeButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      Visible = ivAlways
    end
  end
end
