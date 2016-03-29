inherited fTradingAnalyze: TfTradingAnalyze
  Caption = 'fTradingAnalyze'
  ClientHeight = 885
  ClientWidth = 1391
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 1138
  ExplicitHeight = 747
  PixelsPerInch = 120
  TextHeight = 16
  inherited Panel1: TPanel
    Width = 1391
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1391
    inherited Panel2: TPanel
      Width = 737
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 737
      inherited dxBarDockControl1: TdxBarDockControl
        Width = 735
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 735
      end
    end
    inherited Panel3: TPanel
      Left = 1305
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Constraints.MaxWidth = 130
      ExplicitLeft = 1305
      inherited dxBarDockControl2: TdxBarDockControl
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
      end
    end
    inherited Panel4: TPanel
      Left = 737
      Width = 568
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 737
      ExplicitWidth = 568
      object deStartPeriod: TcxDBDateEdit
        Left = 128
        Top = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'StartPeriod'
        DataBinding.DataSource = ds_Props
        Properties.ImmediatePost = True
        TabOrder = 0
        Width = 149
      end
      object cxLabel1: TcxLabel
        Left = 59
        Top = 34
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Period:'
      end
      object deEndPeriod: TcxDBDateEdit
        Left = 305
        Top = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'EndPeriod'
        DataBinding.DataSource = ds_Props
        Properties.ImmediatePost = True
        TabOrder = 2
        Width = 149
      end
      object cxLabel2: TcxLabel
        Left = 1
        Top = 1
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        Caption = 'Trading analys'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        AnchorX = 284
      end
    end
  end
  inherited Panel5: TPanel
    Width = 1391
    Height = 812
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1391
    ExplicitHeight = 812
    object grdTradingAnalyze: TcxGrid
      Left = 1
      Top = 1
      Width = 1389
      Height = 810
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      object grdTradingAnalyzeDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmModule1.ds_Vis_GenTradingAnalyze
        DataController.KeyFieldNames = 'PO_Fakturanr;POPrefix'
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'Diff_SEK'
            Column = grdTradingAnalyzeDBBandedTableView1Diff_SEK
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'PO_Belopp_SEK'
            Column = grdTradingAnalyzeDBBandedTableView1PO_Belopp_SEK
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'PO_AM3'
            Column = grdTradingAnalyzeDBBandedTableView1PO_AM3
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'Sales_Belopp_SEK'
            Column = grdTradingAnalyzeDBBandedTableView1Sales_Belopp_SEK
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'Sales_AM3'
            Column = grdTradingAnalyzeDBBandedTableView1Sales_AM3
          end
          item
            Format = '#,###,###.0'
            Kind = skSum
            FieldName = 'Diff_SEK'
            Column = grdTradingAnalyzeDBBandedTableView1Diff_SEK
          end
          item
            Format = '######'
            Kind = skCount
            FieldName = 'PO_Fakturanr'
            Column = grdTradingAnalyzeDBBandedTableView1PO_Fakturanr
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
                Column = grdTradingAnalyzeDBBandedTableView1Lev
              end
              item
                Column = grdTradingAnalyzeDBBandedTableView1FR
              end
              item
                Column = grdTradingAnalyzeDBBandedTableView1Kund
              end>
            SummaryItems = <
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'Diff_SEK'
                Column = grdTradingAnalyzeDBBandedTableView1Diff_SEK
              end
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'PO_AM3'
                Column = grdTradingAnalyzeDBBandedTableView1PO_AM3
              end
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'PO_Belopp_SEK'
                Column = grdTradingAnalyzeDBBandedTableView1PO_Belopp_SEK
              end
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'PO_Belopp_Valuta'
                Column = grdTradingAnalyzeDBBandedTableView1PO_Belopp_Valuta
              end
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'PO_ProduktV'#228'rde_Valuta'
                Column = grdTradingAnalyzeDBBandedTableView1PO_ProduktVrde_Valuta
              end
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'Sales_AM3'
                Column = grdTradingAnalyzeDBBandedTableView1Sales_AM3
              end
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'Sales_Belopp_SEK'
                Column = grdTradingAnalyzeDBBandedTableView1Sales_Belopp_SEK
              end
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'Sales_Belopp_Valuta'
                Column = grdTradingAnalyzeDBBandedTableView1Sales_Belopp_Valuta
              end
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'Sales_ProduktV'#228'rde_Valuta'
                Column = grdTradingAnalyzeDBBandedTableView1Sales_ProduktVrde_Valuta
              end
              item
                Format = '######'
                Kind = skCount
                FieldName = 'PO_Fakturanr'
                Column = grdTradingAnalyzeDBBandedTableView1PO_Fakturanr
              end>
          end>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Bands = <
          item
            Caption = 'Ink'#246'p'
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Styles.Header = cxStyle9
            Width = 557
          end
          item
            Caption = 'Diff'
            Options.HoldOwnColumnsOnly = True
            Width = 75
          end
          item
            Caption = 'F'#246'rs'#228'ljning'
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Styles.Header = cxStyle11
            Width = 502
          end>
        object grdTradingAnalyzeDBBandedTableView1Lev: TcxGridDBBandedColumn
          Caption = 'Leverant'#246'r'
          DataBinding.FieldName = 'Lev'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.Header = cxStyle9
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Kontraktnr: TcxGridDBBandedColumn
          Caption = 'Kontrakt'
          DataBinding.FieldName = 'PO_Kontraktnr'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.Header = cxStyle9
          Width = 58
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Fakturanr: TcxGridDBBandedColumn
          Caption = 'Fakturanr'
          DataBinding.FieldName = 'PO_Fakturanr'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.Header = cxStyle9
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1POPrefix: TcxGridDBBandedColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'POPrefix'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.Header = cxStyle9
          Width = 62
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Fakturadatum: TcxGridDBBandedColumn
          Caption = 'Fakturerad'
          DataBinding.FieldName = 'PO_Fakturadatum'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.Header = cxStyle9
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Valuta: TcxGridDBBandedColumn
          Caption = 'Valuta'
          DataBinding.FieldName = 'PO_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Styles.Header = cxStyle9
          Width = 34
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Belopp_Valuta: TcxGridDBBandedColumn
          Caption = 'Belopp valuta'
          DataBinding.FieldName = 'PO_Belopp_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Styles.Header = cxStyle9
          Width = 34
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Belopp_SEK: TcxGridDBBandedColumn
          Caption = 'Belopp SEK'
          DataBinding.FieldName = 'PO_Belopp_SEK'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Styles.Header = cxStyle9
          Width = 33
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_ProduktVrde_Valuta: TcxGridDBBandedColumn
          Caption = 'Produktv'#228'rde valuta'
          DataBinding.FieldName = 'PO_ProduktV'#228'rde_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Styles.Header = cxStyle9
          Width = 34
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_AM3: TcxGridDBBandedColumn
          Caption = 'AM3'
          DataBinding.FieldName = 'PO_AM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Styles.Header = cxStyle9
          Width = 102
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1POIntInvNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'POIntInvNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Styles.Header = cxStyle9
          VisibleForCustomization = False
          Width = 47
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1FR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FR'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.Header = cxStyle9
          Width = 64
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Valuta: TcxGridDBBandedColumn
          Caption = 'Valuta'
          DataBinding.FieldName = 'Sales_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Styles.Header = cxStyle11
          Width = 67
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_ProduktVrde_Valuta: TcxGridDBBandedColumn
          Caption = 'Produktv'#228'rde valuta'
          DataBinding.FieldName = 'Sales_ProduktV'#228'rde_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Styles.Header = cxStyle11
          Width = 50
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_AM3: TcxGridDBBandedColumn
          Caption = 'AM3'
          DataBinding.FieldName = 'Sales_AM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Styles.Header = cxStyle11
          Width = 49
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Belopp_Valuta: TcxGridDBBandedColumn
          Caption = 'Belopp valuta'
          DataBinding.FieldName = 'Sales_Belopp_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Styles.Header = cxStyle11
          Width = 48
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Belopp_SEK: TcxGridDBBandedColumn
          Caption = 'Belopp SEK'
          DataBinding.FieldName = 'Sales_Belopp_SEK'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Styles.Header = cxStyle11
          Width = 49
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Kund: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kund'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.Header = cxStyle11
          Width = 75
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Fakturanr: TcxGridDBBandedColumn
          Caption = 'Fakturanr'
          DataBinding.FieldName = 'Sales_Fakturanr'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.Header = cxStyle11
          Width = 96
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Fakturadatum: TcxGridDBBandedColumn
          Caption = 'Fakturerad'
          DataBinding.FieldName = 'Sales_Fakturadatum'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.Header = cxStyle11
          Width = 112
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1SalesIntInvNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesIntInvNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Styles.Header = cxStyle11
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Diff_SEK: TcxGridDBBandedColumn
          Caption = 'Diff SEK'
          DataBinding.FieldName = 'Diff_SEK'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1DiffOfSales: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DiffOfSales'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object grdTradingAnalyzeLevel1: TcxGridLevel
        GridView = grdTradingAnalyzeDBBandedTableView1
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Top = 176
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
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acSaveLayout
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acOpenPOInvoice
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acOpenSalesInvoice
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
      ImageIndex = 16
    end
    object acSaveLayout: TAction
      Caption = 'Spara layout'
      ImageIndex = 15
      OnExecute = acSaveLayoutExecute
    end
    object acOpenPOInvoice: TAction
      Caption = #214'ppna Ink'#246'psfaktura'
      OnExecute = acOpenPOInvoiceExecute
      OnUpdate = acOpenPOInvoiceUpdate
    end
    object acOpenSalesInvoice: TAction
      Caption = #214'ppna f'#246'rs'#228'ljningsfaktura'
      OnExecute = acOpenSalesInvoiceExecute
      OnUpdate = acOpenSalesInvoiceUpdate
    end
  end
  inherited cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 272
    Top = 187
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdTradingAnalyze
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
      BuiltInReportLink = True
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdTradingAnalyze
    PopupMenus = <>
    Left = 184
    Top = 179
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 216
    Top = 243
    PixelsPerInch = 120
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11458790
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14150898
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14150898
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15524833
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8313560
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet
      Caption = 'Maple'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField'
      'HelpFile'
      'Origin'
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'PropertiesClassName'
      'AutoIncFields'
      'CaseInsFields'
      'Categories'
      'ClassName'
      'CommandText'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'LockSQL'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'RegistryPath'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'PropertiesClassName')
    Left = 616
    Top = 259
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600540072006100640069006E00670041006E006100
      6C0079007A00650001006600540072006100640069006E00670041006E006100
      6C0079007A0065000100010001000D000A00640078004200610072004D006100
      6E0061006700650072003100420061007200310001004D00610069006E000100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      31004200610072003200010045007800690074000100010001000D000A006100
      6300520065006600720065007300680001005500700070006400610074006500
      720061002000460036000100010001000D000A006100630043006C006F007300
      6500010053007400E4006E00670020004600310032000100010001000D000A00
      610063004E006500770001004C00E400670067002000740069006C006C000100
      010001000D000A00610063005000720069006E007400010053006B0072006900
      76002000750074002000460038000100010001000D000A006100630053006100
      760065000100530070006100720061000100010001000D000A00610063004500
      780070006F007200740058004C00530001004500780070006F00720074006500
      72006100200058004C00530020004600310031000100010001000D000A006300
      78004C006100620065006C003100010050006500720069006F0064003A000100
      010001000D000A00630078004C006100620065006C0032000100540072006100
      640069006E006700200061006E0061006C00790073000100010001000D000A00
      670072006400540072006100640069006E00670041006E0061006C0079007A00
      650044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C006500760001004C00650076006500720061006E007400F600
      72000100010001000D000A00670072006400540072006100640069006E006700
      41006E0061006C0079007A00650044004200420061006E006400650064005400
      610062006C0065005600690065007700310050004F005F004B006F006E007400
      720061006B0074006E00720001004B006F006E007400720061006B0074000100
      010001000D000A00670072006400540072006100640069006E00670041006E00
      61006C0079007A00650044004200420061006E00640065006400540061006200
      6C0065005600690065007700310050004F005F00460061006B00740075007200
      61006E0072000100460061006B0074007500720061006E007200010001000100
      0D000A00670072006400540072006100640069006E00670041006E0061006C00
      79007A00650044004200420061006E006400650064005400610062006C006500
      5600690065007700310050004F00500072006500660069007800010050007200
      65006600690078000100010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C0065005600690065007700310050004F005F004600
      61006B00740075007200610064006100740075006D000100460061006B007400
      7500720065007200610064000100010001000D000A0067007200640054007200
      6100640069006E00670041006E0061006C0079007A0065004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050004F00
      5F00560061006C007500740061000100560061006C0075007400610001000100
      01000D000A00670072006400540072006100640069006E00670041006E006100
      6C0079007A00650044004200420061006E006400650064005400610062006C00
      65005600690065007700310050004F005F00420065006C006F00700070005F00
      560061006C007500740061000100420065006C006F0070007000200076006100
      6C007500740061000100010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C0065005600690065007700310050004F005F004200
      65006C006F00700070005F00530045004B000100420065006C006F0070007000
      2000530045004B000100010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C0065005600690065007700310050004F005F005000
      72006F00640075006B00740056007200640065005F00560061006C0075007400
      61000100500072006F00640075006B0074007600E40072006400650020007600
      61006C007500740061000100010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C0065005600690065007700310050004F005F00
      41004D003300010041004D0033000100010001000D000A006700720064005400
      72006100640069006E00670041006E0061006C0079007A006500440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      4F0049006E00740049006E0076004E006F00010050004F0049006E0074004900
      6E0076004E006F000100010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C006500560069006500770031004600520001004600
      52000100010001000D000A00670072006400540072006100640069006E006700
      41006E0061006C0079007A00650044004200420061006E006400650064005400
      610062006C00650056006900650077003100530061006C00650073005F005600
      61006C007500740061000100560061006C007500740061000100010001000D00
      0A00670072006400540072006100640069006E00670041006E0061006C007900
      7A00650044004200420061006E006400650064005400610062006C0065005600
      6900650077003100530061006C00650073005F00500072006F00640075006B00
      740056007200640065005F00560061006C007500740061000100500072006F00
      640075006B0074007600E4007200640065002000760061006C00750074006100
      0100010001000D000A00670072006400540072006100640069006E0067004100
      6E0061006C0079007A00650044004200420061006E0064006500640054006100
      62006C00650056006900650077003100530061006C00650073005F0041004D00
      3300010041004D0033000100010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530061006C00
      650073005F00420065006C006F00700070005F00560061006C00750074006100
      0100420065006C006F00700070002000760061006C0075007400610001000100
      01000D000A00670072006400540072006100640069006E00670041006E006100
      6C0079007A00650044004200420061006E006400650064005400610062006C00
      650056006900650077003100530061006C00650073005F00420065006C006F00
      700070005F00530045004B000100420065006C006F0070007000200053004500
      4B000100010001000D000A00670072006400540072006100640069006E006700
      41006E0061006C0079007A00650044004200420061006E006400650064005400
      610062006C006500560069006500770031004B0075006E00640001004B007500
      6E0064000100010001000D000A00670072006400540072006100640069006E00
      670041006E0061006C0079007A00650044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530061006C00650073005F00
      460061006B0074007500720061006E0072000100460061006B00740075007200
      61006E0072000100010001000D000A0067007200640054007200610064006900
      6E00670041006E0061006C0079007A00650044004200420061006E0064006500
      64005400610062006C00650056006900650077003100530061006C0065007300
      5F00460061006B00740075007200610064006100740075006D00010046006100
      6B0074007500720065007200610064000100010001000D000A00670072006400
      540072006100640069006E00670041006E0061006C0079007A00650044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      530061006C006500730049006E00740049006E0076004E006F00010053006100
      6C006500730049006E00740049006E0076004E006F000100010001000D000A00
      670072006400540072006100640069006E00670041006E0061006C0079007A00
      650044004200420061006E006400650064005400610062006C00650056006900
      65007700310044006900660066005F00530045004B0001004400690066006600
      2000530045004B000100010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C006500560069006500770031004400690066006600
      4F006600530061006C00650073000100250020006100760020006600F6007200
      7300E4006C006A002E000100010001000D000A00610063005300610076006500
      4C00610079006F007500740001005300700061007200610020006C0061007900
      6F00750074000100010001000D000A00610063004F00700065006E0050004F00
      49006E0076006F006900630065000100D600700070006E006100200049006E00
      6B00F60070007300660061006B0074007500720061000100010001000D000A00
      610063004F00700065006E00530061006C006500730049006E0076006F006900
      630065000100D600700070006E00610020006600F60072007300E4006C006A00
      6E0069006E0067007300660061006B0074007500720061000100010001000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B00310001004E0065007700520065007000
      6F00720074000100010001000D000A0047007200690064005400610062006C00
      650056006900650077005300740079006C006500530068006500650074004D00
      610070006C00650001004D00610070006C0065000100010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A006300640073005F00500072006F00
      7000730055007300650072004900440001005500730065007200490044000100
      010001000D000A006300640073005F00500072006F007000730046006F007200
      6D00010046006F0072006D000100010001000D000A006300640073005F005000
      72006F00700073005600650072006B004E006F0001005600650072006B004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004F00
      77006E00650072004E006F0001004F0077006E00650072004E006F0001000100
      01000D000A006300640073005F00500072006F00700073005000490050004E00
      6F0001005000490050004E006F000100010001000D000A006300640073005F00
      500072006F00700073004C00490050004E006F0001004C00490050004E006F00
      0100010001000D000A006300640073005F00500072006F007000730049006E00
      7000750074004F007000740069006F006E00010049006E007000750074004F00
      7000740069006F006E000100010001000D000A006300640073005F0050007200
      6F007000730052006500670050006F0069006E0074004E006F00010052006500
      670050006F0069006E0074004E006F000100010001000D000A00630064007300
      5F00500072006F00700073005200650067004400610074006500010052006500
      670044006100740065000100010001000D000A006300640073005F0050007200
      6F007000730043006F0070007900500063007300010043006F00700079005000
      630073000100010001000D000A006300640073005F00500072006F0070007300
      520075006E004E006F000100520075006E004E006F000100010001000D000A00
      6300640073005F00500072006F0070007300500072006F006400750063006500
      72004E006F000100500072006F00640075006300650072004E006F0001000100
      01000D000A006300640073005F00500072006F00700073004100750074006F00
      43006F006C005700690064007400680001004100750074006F0043006F006C00
      570069006400740068000100010001000D000A006300640073005F0050007200
      6F007000730053007500700070006C0069006500720043006F00640065000100
      53007500700070006C0069006500720043006F00640065000100010001000D00
      0A006300640073005F00500072006F00700073004C0065006E00670074006800
      4F007000740069006F006E0001004C0065006E006700740068004F0070007400
      69006F006E000100010001000D000A006300640073005F00500072006F007000
      73004C0065006E00670074006800470072006F00750070004E006F0001004C00
      65006E00670074006800470072006F00750070004E006F000100010001000D00
      0A006300640073005F00500072006F00700073004E0065007700490074006500
      6D0052006F00770001004E00650077004900740065006D0052006F0077000100
      010001000D000A006300640073005F00500072006F0070007300530061006C00
      6500730052006500670069006F006E004E006F000100530061006C0065007300
      52006500670069006F006E004E006F000100010001000D000A00630064007300
      5F00500072006F00700073004D00610072006B00650074005200650067006900
      6F006E004E006F0001004D00610072006B006500740052006500670069006F00
      6E004E006F000100010001000D000A006300640073005F00500072006F007000
      73004F00720064006500720054007900700065004E006F0001004F0072006400
      6500720054007900700065004E006F000100010001000D000A00630064007300
      5F00500072006F00700073005300740061007400750073000100530074006100
      7400750073000100010001000D000A006300640073005F00500072006F007000
      7300460069006C007400650072004F0072006400650072004400610074006500
      0100460069006C007400650072004F0072006400650072004400610074006500
      0100010001000D000A006300640073005F00500072006F007000730053007400
      61007200740050006500720069006F0064000100530074006100720074005000
      6500720069006F0064000100010001000D000A006300640073005F0050007200
      6F007000730045006E00640050006500720069006F006400010045006E006400
      50006500720069006F0064000100010001000D000A006300640073005F005000
      72006F007000730043006C00690065006E0074004E006F00010043006C006900
      65006E0074004E006F000100010001000D000A006300640073005F0050007200
      6F0070007300530061006C006500730050006500720073006F006E004E006F00
      0100530061006C006500730050006500720073006F006E004E006F0001000100
      01000D000A006300640073005F00500072006F00700073005600650072006B00
      53007500700070006C006900650072004E006F0001005600650072006B005300
      7500700070006C006900650072004E006F000100010001000D000A0063006400
      73005F00500072006F00700073005600650072006B004B0075006E0064004E00
      6F0001005600650072006B004B0075006E0064004E006F000100010001000D00
      0A006300640073005F00500072006F00700073004C004F004F0062006A006500
      63007400540079007000650001004C004F004F0062006A006500630074005400
      7900700065000100010001000D000A006300640073005F00500072006F007000
      730042006100720043006F00640065004E006F00010042006100720043006F00
      640065004E006F000100010001000D000A006300640073005F00500072006F00
      70007300470072006100640065005300740061006D0070004E006F0001004700
      72006100640065005300740061006D0070004E006F000100010001000D000A00
      6300640073005F00500072006F007000730056006F006C0075006D0065005500
      6E00690074004E006F00010056006F006C0075006D00650055006E0069007400
      4E006F000100010001000D000A006300640073005F00500072006F0070007300
      4C0065006E0067007400680046006F0072006D00610074004E006F0001004C00
      65006E0067007400680046006F0072006D00610074004E006F00010001000100
      0D000A006300640073005F00500072006F00700073004C0065006E0067007400
      680056006F006C0055006E00690074004E006F0001004C0065006E0067007400
      680056006F006C0055006E00690074004E006F000100010001000D000A006300
      640073005F00500072006F0070007300470072006F0075007000420079004200
      6F0078000100470072006F00750070004200790042006F007800010001000100
      0D000A006300640073005F00500072006F0070007300470072006F0075007000
      530075006D006D006100720079000100470072006F0075007000530075006D00
      6D006100720079000100010001000D000A006300640073005F00500072006F00
      700073004100670065006E0074004E006F0001004100670065006E0074004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004C00
      6F006100640069006E0067004C006F0063006100740069006F006E004E006F00
      01004C006F006100640069006E0067004C006F0063006100740069006F006E00
      4E006F000100010001000D000A006300640073005F00500072006F0070007300
      53006800690070007000650072004E006F000100530068006900700070006500
      72004E006F000100010001000D000A006300640073005F00500072006F007000
      730042006F006F006B0069006E00670054007900700065004E006F0001004200
      6F006F006B0069006E00670054007900700065004E006F000100010001000D00
      0A006300640073005F00500072006F007000730043007500730074006F006D00
      650072004E006F00010043007500730074006F006D00650072004E006F000100
      010001000D000A006300640073005F00500072006F0070007300530068006F00
      7700500072006F0064007500630074000100530068006F007700500072006F00
      64007500630074000100010001000D000A006300640073005F00500072006F00
      700073004D00610072006B006E006100640001004D00610072006B006E006100
      64000100010001000D000A006300640073005F00500072006F00700073004B00
      75006E00640001004B0075006E0064000100010001000D000A00630064007300
      5F00500072006F0070007300530052000100530052000100010001000D000A00
      6300640073005F00500072006F0070007300530061006C006A00670072007500
      700070000100530061006C006A00670072007500700070000100010001000D00
      0A006300640073005F00500072006F00700073005600650072006B0001005600
      650072006B000100010001000D000A007300740046006F006E00740073005F00
      55006E00690063006F00640065000D000A005400660054007200610064006900
      6E00670041006E0061006C0079007A00650001004D0053002000530061006E00
      73002000530065007200690066000100010001000D000A006400780042006100
      72004D0061006E006100670065007200310001005400610068006F006D006100
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200310001005400610068006F006D006100010001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      61007200320001005400610068006F006D0061000100010001000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0031000100540069006D006500730020004E006500
      7700200052006F006D0061006E000100010001000D000A006300780053007400
      79006C006500310001004D006900630072006F0073006F006600740020005300
      61006E0073002000530065007200690066000100010001000D000A0063007800
      5300740079006C006500320001005400610068006F006D006100010001000100
      0D000A00630078005300740079006C006500330001005400610068006F006D00
      61000100010001000D000A00630078005300740079006C006500340001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      7200690066000100010001000D000A00630078005300740079006C0065003500
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      530065007200690066000100010001000D000A00630078005300740079006C00
      6500360001004D006900630072006F0073006F00660074002000530061006E00
      73002000530065007200690066000100010001000D000A006300780053007400
      79006C006500370001004D006900630072006F0073006F006600740020005300
      61006E0073002000530065007200690066000100010001000D000A0063007800
      5300740079006C006500380001004D006900630072006F0073006F0066007400
      2000530061006E0073002000530065007200690066000100010001000D000A00
      630078005300740079006C006500390001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001000100
      0D000A00630078005300740079006C0065003100300001004D00690063007200
      6F0073006F00660074002000530061006E007300200053006500720069006600
      0100010001000D000A00630078005300740079006C0065003100310001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      7200690066000100010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      31002E00440065007300690067006E0065007200430061007000740069006F00
      6E00010046006F0072006D006100740020005200650070006F00720074000100
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0067007200640054007200
      6100640069006E00670041006E0061006C0079007A0065004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0030005D002E00430061007000740069006F006E000100
      49006E006B00F60070000100010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C006500560069006500770031002E0042006100
      6E00640073005B0031005D002E00430061007000740069006F006E0001004400
      6900660066000100010001000D000A0067007200640054007200610064006900
      6E00670041006E0061006C0079007A00650044004200420061006E0064006500
      64005400610062006C006500560069006500770031002E00420061006E006400
      73005B0032005D002E00430061007000740069006F006E0001004600F6007200
      7300E4006C006A006E0069006E0067000100010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A0054006600540072006100640069006E00670041006E0061006C0079007A00
      65000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A00640078004200610072004D0061006E0061006700
      6500720031000100440045004600410055004C0054005F004300480041005200
      5300450054000100010001000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720031000100440045004600410055004C00
      54005F0043004800410052005300450054000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B0031000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A00630078005300740079006C00650031000100440045004600410055004C00
      54005F0043004800410052005300450054000100010001000D000A0063007800
      5300740079006C00650032000100440045004600410055004C0054005F004300
      4800410052005300450054000100010001000D000A0063007800530074007900
      6C00650033000100440045004600410055004C0054005F004300480041005200
      5300450054000100010001000D000A00630078005300740079006C0065003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100010001000D000A00630078005300740079006C0065003500010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      0D000A00630078005300740079006C0065003600010044004500460041005500
      4C0054005F0043004800410052005300450054000100010001000D000A006300
      78005300740079006C00650037000100440045004600410055004C0054005F00
      43004800410052005300450054000100010001000D000A006300780053007400
      79006C00650038000100440045004600410055004C0054005F00430048004100
      52005300450054000100010001000D000A00630078005300740079006C006500
      39000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A00630078005300740079006C006500310030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A00630078005300740079006C00650031003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      0D000A00}
  end
end
