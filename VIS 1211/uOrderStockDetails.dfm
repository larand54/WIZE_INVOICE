object fOrderStockDetails: TfOrderStockDetails
  Left = 218
  Top = 230
  Caption = 'Orderstock radinfo'
  ClientHeight = 618
  ClientWidth = 1063
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1063
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1071
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 113
      Height = 49
      Action = acSaveLayout
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 128
      Top = 8
      Width = 113
      Height = 49
      Action = acPrint
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 920
      Top = 8
      Width = 137
      Height = 49
      Action = acClose
      TabOrder = 2
    end
  end
  object grdOrderStockDetails: TcxGrid
    Left = 0
    Top = 65
    Width = 1063
    Height = 553
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1071
    ExplicitHeight = 564
    object grdOrderStockDetailsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dmModule1.ds_OrderstockDtl
      DataController.KeyFieldNames = 'ORDER_NO;Orderradnr'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###,###.0'
          Kind = skSum
          FieldName = 'LevNM3ext'
          Column = grdOrderStockDetailsDBTableView1LevNM3ext
        end
        item
          Format = '#,###,###,###.0'
          Kind = skSum
          FieldName = 'LevNM3int'
          Column = grdOrderStockDetailsDBTableView1LevNM3int
        end
        item
          Format = '#,###,###,###.0'
          Kind = skSum
          FieldName = 'OrderNM3ext'
          Column = grdOrderStockDetailsDBTableView1OrderNM3ext
        end
        item
          Format = '#,###,###,###.0'
          Kind = skSum
          FieldName = 'OrderNM3int'
          Column = grdOrderStockDetailsDBTableView1OrderNM3int
        end
        item
          Format = '#,###,###,###.0'
          Kind = skSum
          FieldName = 'OrderstockNM3ext'
          Column = grdOrderStockDetailsDBTableView1OrderstockNM3ext
        end
        item
          Format = '#,###,###,###.0'
          Kind = skSum
          FieldName = 'OrderstockNM3int'
          Column = grdOrderStockDetailsDBTableView1OrderstockNM3int
        end
        item
          Format = '#,###,###,###.0'
          Kind = skSum
          FieldName = 'OrderstockSEK'
          Column = grdOrderStockDetailsDBTableView1OrderstockSEK
        end
        item
          Format = '#,###,###,###.0'
          Kind = skSum
          FieldName = 'OrderstockValuta'
          Column = grdOrderStockDetailsDBTableView1OrderstockValuta
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdOrderStockDetailsDBTableView1ORDER_NO: TcxGridDBColumn
        Caption = 'Kontrakt'
        DataBinding.FieldName = 'ORDER_NO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 49
      end
      object grdOrderStockDetailsDBTableView1Orderradnr: TcxGridDBColumn
        DataBinding.FieldName = 'Orderradnr'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 54
      end
      object grdOrderStockDetailsDBTableView1Statistikland: TcxGridDBColumn
        DataBinding.FieldName = 'Statistikland'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 83
      end
      object grdOrderStockDetailsDBTableView1Produkt: TcxGridDBColumn
        DataBinding.FieldName = 'Produkt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 206
      end
      object grdOrderStockDetailsDBTableView1Valuta: TcxGridDBColumn
        DataBinding.FieldName = 'Valuta'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 76
      end
      object grdOrderStockDetailsDBTableView1Frsljningsregion: TcxGridDBColumn
        DataBinding.FieldName = 'F'#246'rs'#228'ljningsregion'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 107
      end
      object grdOrderStockDetailsDBTableView1Kund: TcxGridDBColumn
        DataBinding.FieldName = 'Kund'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 116
      end
      object grdOrderStockDetailsDBTableView1OrderNM3int: TcxGridDBColumn
        DataBinding.FieldName = 'OrderNM3int'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 61
      end
      object grdOrderStockDetailsDBTableView1LevNM3int: TcxGridDBColumn
        DataBinding.FieldName = 'LevNM3int'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 63
      end
      object grdOrderStockDetailsDBTableView1OrderstockNM3int: TcxGridDBColumn
        DataBinding.FieldName = 'OrderstockNM3int'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 61
      end
      object grdOrderStockDetailsDBTableView1OrderNM3ext: TcxGridDBColumn
        DataBinding.FieldName = 'OrderNM3ext'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 35
      end
      object grdOrderStockDetailsDBTableView1LevNM3ext: TcxGridDBColumn
        DataBinding.FieldName = 'LevNM3ext'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 35
      end
      object grdOrderStockDetailsDBTableView1OrderstockNM3ext: TcxGridDBColumn
        DataBinding.FieldName = 'OrderstockNM3ext'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 35
      end
      object grdOrderStockDetailsDBTableView1OrderstockValuta: TcxGridDBColumn
        DataBinding.FieldName = 'OrderstockValuta'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 61
      end
      object grdOrderStockDetailsDBTableView1OrderstockSEK: TcxGridDBColumn
        DataBinding.FieldName = 'OrderstockSEK'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 58
      end
      object grdOrderStockDetailsDBTableView1SalesRegionNo: TcxGridDBColumn
        DataBinding.FieldName = 'SalesRegionNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
      end
      object grdOrderStockDetailsDBTableView1CountryNo: TcxGridDBColumn
        DataBinding.FieldName = 'CountryNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
      end
      object grdOrderStockDetailsDBTableView1CurrencyNo: TcxGridDBColumn
        DataBinding.FieldName = 'CurrencyNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
      end
      object grdOrderStockDetailsDBTableView1MPNH: TcxGridDBColumn
        Caption = 'Nettopris/NM3'
        DataBinding.FieldName = 'MPNH'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 62
      end
    end
    object grdOrderStockDetailsLevel1: TcxGridLevel
      GridView = grdOrderStockDetailsDBTableView1
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 336
    Top = 160
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 0
      OnExecute = acCloseExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut'
      ImageIndex = 5
      OnExecute = acPrintExecute
    end
    object acSaveLayout: TAction
      Caption = 'Spara layout'
      ImageIndex = 15
      OnExecute = acSaveLayoutExecute
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdOrderStockDetails
    PopupMenus = <>
    Left = 264
    Top = 144
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 320
    Top = 224
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdOrderStockDetails
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end
