inherited fOrderStocken: TfOrderStocken
  Caption = 'fOrderStocken'
  ClientHeight = 759
  ClientWidth = 1129
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 1137
  ExplicitHeight = 787
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1129
    ExplicitWidth = 1129
    inherited Panel2: TPanel
      Width = 638
      ExplicitWidth = 638
      inherited dxBarDockControl1: TdxBarDockControl
        Width = 636
        ExplicitWidth = 636
      end
    end
    inherited Panel3: TPanel
      Left = 1059
      ExplicitLeft = 1059
    end
    inherited Panel4: TPanel
      Left = 638
      Width = 421
      ExplicitLeft = 638
      ExplicitWidth = 421
      object cxLabel1: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'Orderstock'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        AnchorX = 211
      end
    end
  end
  inherited Panel5: TPanel
    Width = 1129
    Height = 700
    ExplicitWidth = 1129
    ExplicitHeight = 700
    object grdOrderStock: TcxGrid
      Left = 1
      Top = 1
      Width = 1127
      Height = 698
      Align = alClient
      TabOrder = 0
      object grdOrderStockDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
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
        DataController.DataSource = dmModule1.ds_vis_GenOSRunAll
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object grdOrderStockDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmModule1.ds_Orderstock
        DataController.KeyFieldNames = 'F'#246'rs'#228'ljningsregion;CountryNo;CurrencyNo;PriceOK'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'LevNM3ext'
            Column = grdOrderStockDBBandedTableView1LevNM3ext
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'LevNM3int'
            Column = grdOrderStockDBBandedTableView1LevNM3int
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderNM3ext'
            Column = grdOrderStockDBBandedTableView1OrderNM3ext
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderNM3int'
            Column = grdOrderStockDBBandedTableView1OrderNM3int
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderstockNM3ext'
            Column = grdOrderStockDBBandedTableView1OrderstockNM3ext
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderstockNM3int'
            Column = grdOrderStockDBBandedTableView1OrderstockNM3int
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderstockSEK'
            Column = grdOrderStockDBBandedTableView1OrderstockSEK
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'MPNH'
            Column = grdOrderStockDBBandedTableView1MPNH
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'InternalValue'
            Column = grdOrderStockDBBandedTableView1InternalValue
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        DataController.Summary.OnAfterSummary = grdOrderStockDBBandedTableView1DataControllerSummaryAfterSummary
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Grupp'
            Options.HoldOwnColumnsOnly = True
            Width = 255
          end
          item
            Caption = 'V'#228'rde orderstock'
            Options.HoldOwnColumnsOnly = True
            Width = 207
          end
          item
            Caption = 'NM3 ext'
            Options.HoldOwnColumnsOnly = True
            Width = 259
          end
          item
            Caption = 'NM3 int'
            Options.HoldOwnColumnsOnly = True
            Width = 400
          end>
        object grdOrderStockDBBandedTableView1Frsljningsregion: TcxGridDBBandedColumn
          DataBinding.FieldName = 'F'#246'rs'#228'ljningsregion'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 104
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1Lev_Land: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Lev_Land'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 87
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1Valuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Valuta'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 64
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderNM3int: TcxGridDBBandedColumn
          Caption = 'Order'
          DataBinding.FieldName = 'OrderNM3int'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1LevNM3int: TcxGridDBBandedColumn
          Caption = 'Levererat'
          DataBinding.FieldName = 'LevNM3int'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderstockNM3int: TcxGridDBBandedColumn
          Caption = 'Orderstock'
          DataBinding.FieldName = 'OrderstockNM3int'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderNM3ext: TcxGridDBBandedColumn
          Caption = 'Order'
          DataBinding.FieldName = 'OrderNM3ext'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1LevNM3ext: TcxGridDBBandedColumn
          Caption = 'Levererat'
          DataBinding.FieldName = 'LevNM3ext'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderstockNM3ext: TcxGridDBBandedColumn
          Caption = 'Orderstock'
          DataBinding.FieldName = 'OrderstockNM3ext'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderstockValuta: TcxGridDBBandedColumn
          Caption = 'Per valuta'
          DataBinding.FieldName = 'OrderstockValuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderstockSEK: TcxGridDBBandedColumn
          Caption = 'Per SEK'
          DataBinding.FieldName = 'OrderstockSEK'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1SalesRegionNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesRegionNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1CountryNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CountryNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1CurrencyNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CurrencyNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1MPNH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MPNH'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1PriceOK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PriceOK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1InternalValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InternalValue'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 3
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object grdOrderStockLevel1: TcxGridLevel
        GridView = grdOrderStockDBBandedTableView1
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 320
    Top = 144
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end>
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acGenerateOrderstock
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acSaveGridLayout
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acShowOSDetails
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acSaveGridLayout
      Category = 0
    end
  end
  inherited ActionList1: TActionList
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
    inherited acPrint: TAction
      OnExecute = acPrintExecute
    end
    inherited acExportXLS: TAction
      ImageIndex = 17
    end
    object acGenerateOrderstock: TAction
      Caption = 'Generera orderstock F9'
      ImageIndex = 16
      ShortCut = 120
      OnExecute = acGenerateOrderstockExecute
    end
    object acSaveGridLayout: TAction
      Caption = 'Spara layout'
      ImageIndex = 15
      OnExecute = acSaveGridLayoutExecute
    end
    object acShowOSDetails: TAction
      Caption = 'Visa radinfo'
      ImageIndex = 9
      OnExecute = acShowOSDetailsExecute
    end
  end
  inherited cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 336
    Top = 296
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdOrderStock
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdOrderStock
    PopupMenus = <>
    Left = 256
    Top = 171
  end
end
