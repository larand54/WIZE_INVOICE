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
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
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
    Left = 600
    Top = 299
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600540072006100640069006E00670041006E006100
      6C0079007A00650001006600540072006100640069006E00670041006E006100
      6C0079007A006500010001000D000A00640078004200610072004D0061006E00
      61006700650072003100420061007200310001004D00610069006E0001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      61007200320001004500780069007400010001000D000A006100630052006500
      6600720065007300680001005500700070006400610074006500720061002000
      46003600010001000D000A006100630043006C006F0073006500010053007400
      E4006E0067002000460031003200010001000D000A00610063004E0065007700
      01004C00E400670067002000740069006C006C00010001000D000A0061006300
      5000720069006E007400010053006B0072006900760020007500740020004600
      3800010001000D000A0061006300530061007600650001005300700061007200
      6100010001000D000A00610063004500780070006F007200740058004C005300
      01004500780070006F0072007400650072006100200058004C00530020004600
      31003100010001000D000A00630078004C006100620065006C00310001005000
      6500720069006F0064003A00010001000D000A00630078004C00610062006500
      6C0032000100540072006100640069006E006700200061006E0061006C007900
      7300010001000D000A00670072006400540072006100640069006E0067004100
      6E0061006C0079007A00650044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C006500760001004C00650076006500
      720061006E007400F6007200010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C0065005600690065007700310050004F005F00
      4B006F006E007400720061006B0074006E00720001004B006F006E0074007200
      61006B007400010001000D000A00670072006400540072006100640069006E00
      670041006E0061006C0079007A00650044004200420061006E00640065006400
      5400610062006C0065005600690065007700310050004F005F00460061006B00
      74007500720061006E0072000100460061006B0074007500720061006E007200
      010001000D000A00670072006400540072006100640069006E00670041006E00
      61006C0079007A00650044004200420061006E00640065006400540061006200
      6C0065005600690065007700310050004F005000720065006600690078000100
      500072006500660069007800010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C0065005600690065007700310050004F005F00
      460061006B00740075007200610064006100740075006D000100460061006B00
      7400750072006500720061006400010001000D000A0067007200640054007200
      6100640069006E00670041006E0061006C0079007A0065004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050004F00
      5F00560061006C007500740061000100560061006C0075007400610001000100
      0D000A00670072006400540072006100640069006E00670041006E0061006C00
      79007A00650044004200420061006E006400650064005400610062006C006500
      5600690065007700310050004F005F00420065006C006F00700070005F005600
      61006C007500740061000100420065006C006F00700070002000760061006C00
      750074006100010001000D000A00670072006400540072006100640069006E00
      670041006E0061006C0079007A00650044004200420061006E00640065006400
      5400610062006C0065005600690065007700310050004F005F00420065006C00
      6F00700070005F00530045004B000100420065006C006F007000700020005300
      45004B00010001000D000A00670072006400540072006100640069006E006700
      41006E0061006C0079007A00650044004200420061006E006400650064005400
      610062006C0065005600690065007700310050004F005F00500072006F006400
      75006B00740056007200640065005F00560061006C0075007400610001005000
      72006F00640075006B0074007600E4007200640065002000760061006C007500
      74006100010001000D000A00670072006400540072006100640069006E006700
      41006E0061006C0079007A00650044004200420061006E006400650064005400
      610062006C0065005600690065007700310050004F005F0041004D0033000100
      41004D003300010001000D000A00670072006400540072006100640069006E00
      670041006E0061006C0079007A00650044004200420061006E00640065006400
      5400610062006C0065005600690065007700310050004F0049006E0074004900
      6E0076004E006F00010050004F0049006E00740049006E0076004E006F000100
      01000D000A00670072006400540072006100640069006E00670041006E006100
      6C0079007A00650044004200420061006E006400650064005400610062006C00
      65005600690065007700310046005200010046005200010001000D000A006700
      72006400540072006100640069006E00670041006E0061006C0079007A006500
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100530061006C00650073005F00560061006C0075007400610001005600
      61006C00750074006100010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C00650056006900650077003100530061006C006500
      73005F00500072006F00640075006B00740056007200640065005F0056006100
      6C007500740061000100500072006F00640075006B0074007600E40072006400
      65002000760061006C00750074006100010001000D000A006700720064005400
      72006100640069006E00670041006E0061006C0079007A006500440042004200
      61006E006400650064005400610062006C006500560069006500770031005300
      61006C00650073005F0041004D003300010041004D003300010001000D000A00
      670072006400540072006100640069006E00670041006E0061006C0079007A00
      650044004200420061006E006400650064005400610062006C00650056006900
      650077003100530061006C00650073005F00420065006C006F00700070005F00
      560061006C007500740061000100420065006C006F0070007000200076006100
      6C00750074006100010001000D000A0067007200640054007200610064006900
      6E00670041006E0061006C0079007A00650044004200420061006E0064006500
      64005400610062006C00650056006900650077003100530061006C0065007300
      5F00420065006C006F00700070005F00530045004B000100420065006C006F00
      700070002000530045004B00010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C006500560069006500770031004B0075006E00
      640001004B0075006E006400010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530061006C00
      650073005F00460061006B0074007500720061006E0072000100460061006B00
      74007500720061006E007200010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530061006C00
      650073005F00460061006B00740075007200610064006100740075006D000100
      460061006B007400750072006500720061006400010001000D000A0067007200
      6400540072006100640069006E00670041006E0061006C0079007A0065004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100530061006C006500730049006E00740049006E0076004E006F0001005300
      61006C006500730049006E00740049006E0076004E006F00010001000D000A00
      670072006400540072006100640069006E00670041006E0061006C0079007A00
      650044004200420061006E006400650064005400610062006C00650056006900
      65007700310044006900660066005F00530045004B0001004400690066006600
      2000530045004B00010001000D000A0067007200640054007200610064006900
      6E00670041006E0061006C0079007A00650044004200420061006E0064006500
      64005400610062006C0065005600690065007700310044006900660066004F00
      6600530061006C00650073000100250020006100760020006600F60072007300
      E4006C006A002E00010001000D000A006100630053006100760065004C006100
      79006F007500740001005300700061007200610020006C00610079006F007500
      7400010001000D000A00610063004F00700065006E0050004F0049006E007600
      6F006900630065000100D600700070006E006100200049006E006B00F6007000
      7300660061006B007400750072006100010001000D000A00610063004F007000
      65006E00530061006C006500730049006E0076006F006900630065000100D600
      700070006E00610020006600F60072007300E4006C006A006E0069006E006700
      7300660061006B007400750072006100010001000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B00310001004E00650077005200650070006F007200740001000100
      0D000A0047007200690064005400610062006C00650056006900650077005300
      740079006C006500530068006500650074004D00610070006C00650001004D00
      610070006C006500010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A006300640073005F00500072006F007000730055007300650072004900
      44000100550073006500720049004400010001000D000A006300640073005F00
      500072006F007000730046006F0072006D00010046006F0072006D0001000100
      0D000A006300640073005F00500072006F00700073005600650072006B004E00
      6F0001005600650072006B004E006F00010001000D000A006300640073005F00
      500072006F00700073004F0077006E00650072004E006F0001004F0077006E00
      650072004E006F00010001000D000A006300640073005F00500072006F007000
      73005000490050004E006F0001005000490050004E006F00010001000D000A00
      6300640073005F00500072006F00700073004C00490050004E006F0001004C00
      490050004E006F00010001000D000A006300640073005F00500072006F007000
      730049006E007000750074004F007000740069006F006E00010049006E007000
      750074004F007000740069006F006E00010001000D000A006300640073005F00
      500072006F007000730052006500670050006F0069006E0074004E006F000100
      52006500670050006F0069006E0074004E006F00010001000D000A0063006400
      73005F00500072006F0070007300520065006700440061007400650001005200
      650067004400610074006500010001000D000A006300640073005F0050007200
      6F007000730043006F0070007900500063007300010043006F00700079005000
      63007300010001000D000A006300640073005F00500072006F00700073005200
      75006E004E006F000100520075006E004E006F00010001000D000A0063006400
      73005F00500072006F0070007300500072006F00640075006300650072004E00
      6F000100500072006F00640075006300650072004E006F00010001000D000A00
      6300640073005F00500072006F00700073004100750074006F0043006F006C00
      5700690064007400680001004100750074006F0043006F006C00570069006400
      74006800010001000D000A006300640073005F00500072006F00700073005300
      7500700070006C0069006500720043006F006400650001005300750070007000
      6C0069006500720043006F0064006500010001000D000A006300640073005F00
      500072006F00700073004C0065006E006700740068004F007000740069006F00
      6E0001004C0065006E006700740068004F007000740069006F006E0001000100
      0D000A006300640073005F00500072006F00700073004C0065006E0067007400
      6800470072006F00750070004E006F0001004C0065006E006700740068004700
      72006F00750070004E006F00010001000D000A006300640073005F0050007200
      6F00700073004E00650077004900740065006D0052006F00770001004E006500
      77004900740065006D0052006F007700010001000D000A006300640073005F00
      500072006F0070007300530061006C006500730052006500670069006F006E00
      4E006F000100530061006C006500730052006500670069006F006E004E006F00
      010001000D000A006300640073005F00500072006F00700073004D0061007200
      6B006500740052006500670069006F006E004E006F0001004D00610072006B00
      6500740052006500670069006F006E004E006F00010001000D000A0063006400
      73005F00500072006F00700073004F0072006400650072005400790070006500
      4E006F0001004F00720064006500720054007900700065004E006F0001000100
      0D000A006300640073005F00500072006F007000730053007400610074007500
      73000100530074006100740075007300010001000D000A006300640073005F00
      500072006F0070007300460069006C007400650072004F007200640065007200
      44006100740065000100460069006C007400650072004F007200640065007200
      4400610074006500010001000D000A006300640073005F00500072006F007000
      73005300740061007200740050006500720069006F0064000100530074006100
      7200740050006500720069006F006400010001000D000A006300640073005F00
      500072006F007000730045006E00640050006500720069006F00640001004500
      6E00640050006500720069006F006400010001000D000A006300640073005F00
      500072006F007000730043006C00690065006E0074004E006F00010043006C00
      690065006E0074004E006F00010001000D000A006300640073005F0050007200
      6F0070007300530061006C006500730050006500720073006F006E004E006F00
      0100530061006C006500730050006500720073006F006E004E006F0001000100
      0D000A006300640073005F00500072006F00700073005600650072006B005300
      7500700070006C006900650072004E006F0001005600650072006B0053007500
      700070006C006900650072004E006F00010001000D000A006300640073005F00
      500072006F00700073005600650072006B004B0075006E0064004E006F000100
      5600650072006B004B0075006E0064004E006F00010001000D000A0063006400
      73005F00500072006F00700073004C004F004F0062006A006500630074005400
      79007000650001004C004F004F0062006A006500630074005400790070006500
      010001000D000A006300640073005F00500072006F0070007300420061007200
      43006F00640065004E006F00010042006100720043006F00640065004E006F00
      010001000D000A006300640073005F00500072006F0070007300470072006100
      640065005300740061006D0070004E006F000100470072006100640065005300
      740061006D0070004E006F00010001000D000A006300640073005F0050007200
      6F007000730056006F006C0075006D00650055006E00690074004E006F000100
      56006F006C0075006D00650055006E00690074004E006F00010001000D000A00
      6300640073005F00500072006F00700073004C0065006E006700740068004600
      6F0072006D00610074004E006F0001004C0065006E0067007400680046006F00
      72006D00610074004E006F00010001000D000A006300640073005F0050007200
      6F00700073004C0065006E0067007400680056006F006C0055006E0069007400
      4E006F0001004C0065006E0067007400680056006F006C0055006E0069007400
      4E006F00010001000D000A006300640073005F00500072006F00700073004700
      72006F00750070004200790042006F0078000100470072006F00750070004200
      790042006F007800010001000D000A006300640073005F00500072006F007000
      7300470072006F0075007000530075006D006D00610072007900010047007200
      6F0075007000530075006D006D00610072007900010001000D000A0063006400
      73005F00500072006F00700073004100670065006E0074004E006F0001004100
      670065006E0074004E006F00010001000D000A006300640073005F0050007200
      6F00700073004C006F006100640069006E0067004C006F006300610074006900
      6F006E004E006F0001004C006F006100640069006E0067004C006F0063006100
      740069006F006E004E006F00010001000D000A006300640073005F0050007200
      6F007000730053006800690070007000650072004E006F000100530068006900
      70007000650072004E006F00010001000D000A006300640073005F0050007200
      6F007000730042006F006F006B0069006E00670054007900700065004E006F00
      010042006F006F006B0069006E00670054007900700065004E006F0001000100
      0D000A006300640073005F00500072006F007000730043007500730074006F00
      6D00650072004E006F00010043007500730074006F006D00650072004E006F00
      010001000D000A006300640073005F00500072006F0070007300530068006F00
      7700500072006F0064007500630074000100530068006F007700500072006F00
      6400750063007400010001000D000A006300640073005F00500072006F007000
      73004D00610072006B006E006100640001004D00610072006B006E0061006400
      010001000D000A006300640073005F00500072006F00700073004B0075006E00
      640001004B0075006E006400010001000D000A006300640073005F0050007200
      6F007000730053005200010053005200010001000D000A006300640073005F00
      500072006F0070007300530061006C006A006700720075007000700001005300
      61006C006A0067007200750070007000010001000D000A006300640073005F00
      500072006F00700073005600650072006B0001005600650072006B0001000100
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A0054006600540072006100640069006E00670041006E0061006C00
      79007A00650001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A00640078004200610072004D0061006E00610067006500
      7200310001005300650067006F006500200055004900010001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003100
      01005300650067006F006500200055004900010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200320001005300
      650067006F006500200055004900010001000D000A006400780043006F006D00
      70006F006E0065006E0074005000720069006E0074006500720031004C006900
      6E006B0031000100540069006D006500730020004E0065007700200052006F00
      6D0061006E00010001000D000A00630078005300740079006C00650031000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001000D000A00630078005300740079006C0065003200
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C006500330001005400610068006F006D006100010001000D000A0063007800
      5300740079006C006500340001004D006900630072006F0073006F0066007400
      2000530061006E007300200053006500720069006600010001000D000A006300
      78005300740079006C006500350001004D006900630072006F0073006F006600
      74002000530061006E007300200053006500720069006600010001000D000A00
      630078005300740079006C006500360001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001000D00
      0A00630078005300740079006C006500370001004D006900630072006F007300
      6F00660074002000530061006E00730020005300650072006900660001000100
      0D000A00630078005300740079006C006500380001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01000D000A00630078005300740079006C006500390001004D00690063007200
      6F0073006F00660074002000530061006E007300200053006500720069006600
      010001000D000A00630078005300740079006C0065003100300001004D006900
      630072006F0073006F00660074002000530061006E0073002000530065007200
      69006600010001000D000A00630078005300740079006C006500310031000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0064007800
      4200610072004D0061006E00610067006500720031002E004300610074006500
      67006F0072006900650073000100440065006600610075006C00740001000100
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00630064007300
      5F00500072006F00700073002E0043006F006E006E0065006300740069006F00
      6E004E0061006D0065000100560049005300010001000D000A00630064007300
      5F00500072006F00700073005500730065007200490044002E004F0072006900
      670069006E000100550073006500720049004400010001000D000A0063006400
      73005F00500072006F007000730046006F0072006D002E004F00720069006700
      69006E00010046006F0072006D00010001000D000A006300640073005F005000
      72006F00700073004E0061006D0065002E004F0072006900670069006E000100
      4E0061006D006500010001000D000A006300640073005F00500072006F007000
      73005600650072006B004E006F002E004F0072006900670069006E0001005600
      650072006B004E006F00010001000D000A006300640073005F00500072006F00
      700073004F0077006E00650072004E006F002E004F0072006900670069006E00
      01004F0077006E00650072004E006F00010001000D000A006300640073005F00
      500072006F00700073005000490050004E006F002E004F007200690067006900
      6E0001005000490050004E006F00010001000D000A006300640073005F005000
      72006F00700073004C00490050004E006F002E004F0072006900670069006E00
      01004C00490050004E006F00010001000D000A006300640073005F0050007200
      6F007000730049006E007000750074004F007000740069006F006E002E004F00
      72006900670069006E00010049006E007000750074004F007000740069006F00
      6E00010001000D000A006300640073005F00500072006F007000730052006500
      670050006F0069006E0074004E006F002E004F0072006900670069006E000100
      52006500670050006F0069006E0074004E006F00010001000D000A0063006400
      73005F00500072006F007000730052006500670044006100740065002E004F00
      72006900670069006E0001005200650067004400610074006500010001000D00
      0A006300640073005F00500072006F007000730043006F007000790050006300
      73002E004F0072006900670069006E00010043006F0070007900500063007300
      010001000D000A006300640073005F00500072006F0070007300520075006E00
      4E006F002E004F0072006900670069006E000100520075006E004E006F000100
      01000D000A006300640073005F00500072006F0070007300500072006F006400
      75006300650072004E006F002E004F0072006900670069006E00010050007200
      6F00640075006300650072004E006F00010001000D000A006300640073005F00
      500072006F00700073004100750074006F0043006F006C005700690064007400
      68002E004F0072006900670069006E0001004100750074006F0043006F006C00
      57006900640074006800010001000D000A006300640073005F00500072006F00
      7000730053007500700070006C0069006500720043006F00640065002E004F00
      72006900670069006E00010053007500700070006C0069006500720043006F00
      64006500010001000D000A006300640073005F00500072006F00700073004C00
      65006E006700740068004F007000740069006F006E002E004F00720069006700
      69006E0001004C0065006E006700740068004F007000740069006F006E000100
      01000D000A006300640073005F00500072006F00700073004C0065006E006700
      74006800470072006F00750070004E006F002E004F0072006900670069006E00
      01004C0065006E00670074006800470072006F00750070004E006F0001000100
      0D000A006300640073005F00500072006F00700073004E006500770049007400
      65006D0052006F0077002E004F0072006900670069006E0001004E0065007700
      4900740065006D0052006F007700010001000D000A006300640073005F005000
      72006F0070007300530061006C006500730052006500670069006F006E004E00
      6F002E004F0072006900670069006E000100530061006C006500730052006500
      670069006F006E004E006F00010001000D000A006300640073005F0050007200
      6F00700073004D00610072006B006500740052006500670069006F006E004E00
      6F002E004F0072006900670069006E0001004D00610072006B00650074005200
      6500670069006F006E004E006F00010001000D000A006300640073005F005000
      72006F00700073004F00720064006500720054007900700065004E006F002E00
      4F0072006900670069006E0001004F0072006400650072005400790070006500
      4E006F00010001000D000A006300640073005F00500072006F00700073005300
      740061007400750073002E004F0072006900670069006E000100530074006100
      740075007300010001000D000A006300640073005F00500072006F0070007300
      460069006C007400650072004F00720064006500720044006100740065002E00
      4F0072006900670069006E000100460069006C007400650072004F0072006400
      650072004400610074006500010001000D000A006300640073005F0050007200
      6F00700073005300740061007200740050006500720069006F0064002E004F00
      72006900670069006E0001005300740061007200740050006500720069006F00
      6400010001000D000A006300640073005F00500072006F007000730045006E00
      640050006500720069006F0064002E004F0072006900670069006E0001004500
      6E00640050006500720069006F006400010001000D000A006300640073005F00
      500072006F007000730043006C00690065006E0074004E006F002E004F007200
      6900670069006E00010043006C00690065006E0074004E006F00010001000D00
      0A006300640073005F00500072006F0070007300530061006C00650073005000
      6500720073006F006E004E006F002E004F0072006900670069006E0001005300
      61006C006500730050006500720073006F006E004E006F00010001000D000A00
      6300640073005F00500072006F00700073005600650072006B00530075007000
      70006C006900650072004E006F002E004F0072006900670069006E0001005600
      650072006B0053007500700070006C006900650072004E006F00010001000D00
      0A006300640073005F00500072006F00700073005600650072006B004B007500
      6E0064004E006F002E004F0072006900670069006E0001005600650072006B00
      4B0075006E0064004E006F00010001000D000A006300640073005F0050007200
      6F00700073004C004F004F0062006A0065006300740054007900700065002E00
      4F0072006900670069006E0001004C004F004F0062006A006500630074005400
      790070006500010001000D000A006300640073005F00500072006F0070007300
      42006100720043006F00640065004E006F002E004F0072006900670069006E00
      010042006100720043006F00640065004E006F00010001000D000A0063006400
      73005F00500072006F0070007300470072006100640065005300740061006D00
      70004E006F002E004F0072006900670069006E00010047007200610064006500
      5300740061006D0070004E006F00010001000D000A006300640073005F005000
      72006F007000730056006F006C0075006D00650055006E00690074004E006F00
      2E004F0072006900670069006E00010056006F006C0075006D00650055006E00
      690074004E006F00010001000D000A006300640073005F00500072006F007000
      73004C0065006E0067007400680046006F0072006D00610074004E006F002E00
      4F0072006900670069006E0001004C0065006E0067007400680046006F007200
      6D00610074004E006F00010001000D000A006300640073005F00500072006F00
      700073004C0065006E0067007400680056006F006C0055006E00690074004E00
      6F002E004F0072006900670069006E0001004C0065006E006700740068005600
      6F006C0055006E00690074004E006F00010001000D000A006300640073005F00
      500072006F0070007300470072006F00750070004200790042006F0078002E00
      4F0072006900670069006E000100470072006F00750070004200790042006F00
      7800010001000D000A006300640073005F00500072006F007000730047007200
      6F0075007000530075006D006D006100720079002E004F007200690067006900
      6E000100470072006F0075007000530075006D006D0061007200790001000100
      0D000A006300640073005F00500072006F00700073004100670065006E007400
      4E006F002E004F0072006900670069006E0001004100670065006E0074004E00
      6F00010001000D000A006300640073005F00500072006F00700073004C006F00
      6100640069006E0067004C006F0063006100740069006F006E004E006F002E00
      4F0072006900670069006E0001004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F00010001000D000A006300640073005F00
      500072006F007000730053006800690070007000650072004E006F002E004F00
      72006900670069006E00010053006800690070007000650072004E006F000100
      01000D000A006300640073005F00500072006F007000730042006F006F006B00
      69006E00670054007900700065004E006F002E004F0072006900670069006E00
      010042006F006F006B0069006E00670054007900700065004E006F0001000100
      0D000A006300640073005F00500072006F007000730043007500730074006F00
      6D00650072004E006F002E004F0072006900670069006E000100430075007300
      74006F006D00650072004E006F00010001000D000A006300640073005F005000
      72006F0070007300530068006F007700500072006F0064007500630074002E00
      4F0072006900670069006E000100530068006F007700500072006F0064007500
      63007400010001000D000A00670072006400540072006100640069006E006700
      41006E0061006C0079007A00650044004200420061006E006400650064005400
      610062006C006500560069006500770031004C00650076002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00670072006400540072006100640069006E00
      670041006E0061006C0079007A00650044004200420061006E00640065006400
      5400610062006C0065005600690065007700310050004F005F004B006F006E00
      7400720061006B0074006E0072002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400540072006100640069006E00670041006E0061006C00
      79007A00650044004200420061006E006400650064005400610062006C006500
      5600690065007700310050004F005F00460061006B0074007500720061006E00
      72002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005400
      72006100640069006E00670041006E0061006C0079007A006500440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      4F005000720065006600690078002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400540072006100640069006E00670041006E0061006C00
      79007A00650044004200420061006E006400650064005400610062006C006500
      5600690065007700310050004F005F00460061006B0074007500720061006400
      6100740075006D002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400540072006100640069006E00670041006E0061006C0079007A006500
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310050004F005F00560061006C007500740061002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      540063007800430061006C0063004500640069007400500072006F0070006500
      72007400690065007300010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C0065005600690065007700310050004F005F004200
      65006C006F00700070005F00560061006C007500740061002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      0100540063007800430061006C0063004500640069007400500072006F007000
      650072007400690065007300010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C0065005600690065007700310050004F005F00
      420065006C006F00700070005F00530045004B002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      63007800430075007200720065006E0063007900450064006900740050007200
      6F007000650072007400690065007300010001000D000A006700720064005400
      72006100640069006E00670041006E0061006C0079007A006500440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      4F005F00500072006F00640075006B00740056007200640065005F0056006100
      6C007500740061002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D0065000100540063007800430061006C006300
      4500640069007400500072006F00700065007200740069006500730001000100
      0D000A00670072006400540072006100640069006E00670041006E0061006C00
      79007A00650044004200420061006E006400650064005400610062006C006500
      5600690065007700310050004F005F0041004D0033002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      540063007800430061006C0063004500640069007400500072006F0070006500
      72007400690065007300010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C0065005600690065007700310050004F0049006E00
      740049006E0076004E006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00670072006400540072006100640069006E00670041006E0061006C007900
      7A00650044004200420061006E006400650064005400610062006C0065005600
      6900650077003100460052002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00670072006400540072006100640069006E00670041006E0061006C007900
      7A00650044004200420061006E006400650064005400610062006C0065005600
      6900650077003100530061006C00650073005F00560061006C00750074006100
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D0065000100540063007800430061006C0063004500640069007400
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400540072006100640069006E00670041006E0061006C0079007A0065004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100530061006C00650073005F00500072006F00640075006B00740056007200
      640065005F00560061006C007500740061002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      7800430061006C0063004500640069007400500072006F007000650072007400
      690065007300010001000D000A00670072006400540072006100640069006E00
      670041006E0061006C0079007A00650044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530061006C00650073005F00
      41004D0033002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D0065000100540063007800430061006C0063004500
      640069007400500072006F007000650072007400690065007300010001000D00
      0A00670072006400540072006100640069006E00670041006E0061006C007900
      7A00650044004200420061006E006400650064005400610062006C0065005600
      6900650077003100530061006C00650073005F00420065006C006F0070007000
      5F00560061006C007500740061002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      61006C0063004500640069007400500072006F00700065007200740069006500
      7300010001000D000A00670072006400540072006100640069006E0067004100
      6E0061006C0079007A00650044004200420061006E0064006500640054006100
      62006C00650056006900650077003100530061006C00650073005F0042006500
      6C006F00700070005F00530045004B002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      430075007200720065006E00630079004500640069007400500072006F007000
      650072007400690065007300010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C006500560069006500770031004B0075006E00
      64002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005400
      72006100640069006E00670041006E0061006C0079007A006500440042004200
      61006E006400650064005400610062006C006500560069006500770031005300
      61006C00650073005F00460061006B0074007500720061006E0072002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C00650056006900650077003100530061006C006500
      73005F00460061006B00740075007200610064006100740075006D002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064005400720061006400
      69006E00670041006E0061006C0079007A00650044004200420061006E006400
      650064005400610062006C00650056006900650077003100530061006C006500
      730049006E00740049006E0076004E006F002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A00670072006400540072006100640069006E00670041006E00
      61006C0079007A00650044004200420061006E00640065006400540061006200
      6C0065005600690065007700310044006900660066005F00530045004B002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00670072006400540072006100
      640069006E00670041006E0061006C0079007A00650044004200420061006E00
      6400650064005400610062006C00650056006900650077003100440069006600
      66004F006600530061006C00650073002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006400780043006F006D0070006F006E0065006E00740050007200
      69006E0074006500720031004C0069006E006B0031002E004400650073006900
      67006E0065007200430061007000740069006F006E00010046006F0072006D00
      6100740020005200650070006F0072007400010001000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A00670072006400540072006100640069006E00670041006E00
      61006C0079007A00650044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0030005D00
      2E00430061007000740069006F006E00010049006E006B00F600700001000100
      0D000A00670072006400540072006100640069006E00670041006E0061006C00
      79007A00650044004200420061006E006400650064005400610062006C006500
      560069006500770031002E00420061006E00640073005B0031005D002E004300
      61007000740069006F006E0001004400690066006600010001000D000A006700
      72006400540072006100640069006E00670041006E0061006C0079007A006500
      44004200420061006E006400650064005400610062006C006500560069006500
      770031002E00420061006E00640073005B0032005D002E004300610070007400
      69006F006E0001004600F60072007300E4006C006A006E0069006E0067000100
      01000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A0054006600540072006100640069006E006700
      41006E0061006C0079007A0065000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0064007800420061007200
      4D0061006E00610067006500720031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720032000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00630078005300740079006C0065003100010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0063007800
      5300740079006C00650032000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00630078005300740079006C00
      650033000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00630078005300740079006C006500340001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00630078005300740079006C0065003500010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0063007800
      5300740079006C00650036000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00630078005300740079006C00
      650037000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00630078005300740079006C006500380001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00630078005300740079006C0065003900010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0063007800
      5300740079006C006500310030000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0063007800530074007900
      6C006500310031000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00}
  end
end
