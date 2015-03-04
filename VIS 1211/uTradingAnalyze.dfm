inherited fTradingAnalyze: TfTradingAnalyze
  Caption = 'fTradingAnalyze'
  ClientHeight = 719
  ClientWidth = 1130
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 1146
  ExplicitHeight = 757
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1130
    ExplicitWidth = 1130
    inherited Panel2: TPanel
      Width = 599
      ExplicitWidth = 599
      inherited dxBarDockControl1: TdxBarDockControl
        Width = 597
        ExplicitWidth = 597
      end
    end
    inherited Panel3: TPanel
      Left = 1060
      ExplicitLeft = 1060
    end
    inherited Panel4: TPanel
      Left = 599
      Width = 461
      ExplicitLeft = 599
      ExplicitWidth = 461
      object deStartPeriod: TcxDBDateEdit
        Left = 104
        Top = 24
        DataBinding.DataField = 'StartPeriod'
        DataBinding.DataSource = ds_Props
        Properties.ImmediatePost = True
        TabOrder = 0
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 48
        Top = 28
        Caption = 'Period:'
      end
      object deEndPeriod: TcxDBDateEdit
        Left = 248
        Top = 24
        DataBinding.DataField = 'EndPeriod'
        DataBinding.DataSource = ds_Props
        Properties.ImmediatePost = True
        TabOrder = 2
        Width = 121
      end
      object cxLabel2: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'Trading analys'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        AnchorX = 231
      end
    end
  end
  inherited Panel5: TPanel
    Width = 1130
    Height = 660
    ExplicitWidth = 1130
    ExplicitHeight = 660
    object grdTradingAnalyze: TcxGrid
      Left = 1
      Top = 1
      Width = 1128
      Height = 658
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
    PixelsPerInch = 96
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
      'ListField')
    Left = 616
    Top = 259
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
