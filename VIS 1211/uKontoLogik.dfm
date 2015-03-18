object fKontoLogik: TfKontoLogik
  Left = 216
  Top = 165
  Caption = 'Kontostyrning'
  ClientHeight = 632
  ClientWidth = 1139
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 433
      Height = 57
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 431
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel4: TPanel
      Left = 1059
      Top = 0
      Width = 80
      Height = 57
      Align = alRight
      TabOrder = 1
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 78
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel5: TPanel
      Left = 433
      Top = 0
      Width = 626
      Height = 57
      Align = alClient
      TabOrder = 2
      object cxLabel1: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'Kontostyrning'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        AnchorX = 313
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 1139
    Height = 575
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object grdKontoLogik: TcxGrid
      Left = 1
      Top = 1
      Width = 1137
      Height = 573
      Align = alClient
      TabOrder = 0
      object grdKontoLogikDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmVidaInvoice.ds_KontoLogik
        DataController.KeyFieldNames = 
          'CustomerCountryNo;PO_CountryNo;POFromCountry;SalesmangroupNo;Tra' +
          'ding;VarugruppNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdKontoLogikDBTableView1SalesmangroupNo: TcxGridDBColumn
          DataBinding.FieldName = 'SalesmangroupNo'
        end
        object grdKontoLogikDBTableView1SalesregionNo: TcxGridDBColumn
          DataBinding.FieldName = 'SalesregionNo'
        end
        object grdKontoLogikDBTableView1CustomerCountryNo: TcxGridDBColumn
          DataBinding.FieldName = 'CustomerCountryNo'
        end
        object grdKontoLogikDBTableView1Trading: TcxGridDBColumn
          DataBinding.FieldName = 'Trading'
        end
        object grdKontoLogikDBTableView1PO_CountryNo: TcxGridDBColumn
          DataBinding.FieldName = 'PO_CountryNo'
        end
        object grdKontoLogikDBTableView1VarugruppNo: TcxGridDBColumn
          DataBinding.FieldName = 'VarugruppNo'
        end
        object grdKontoLogikDBTableView1ForsaljningsKonto: TcxGridDBColumn
          DataBinding.FieldName = 'ForsaljningsKonto'
        end
        object grdKontoLogikDBTableView1FraktKonto: TcxGridDBColumn
          DataBinding.FieldName = 'FraktKonto'
        end
        object grdKontoLogikDBTableView1VatCode: TcxGridDBColumn
          DataBinding.FieldName = 'VatCode'
        end
        object grdKontoLogikDBTableView1MomsKonto: TcxGridDBColumn
          DataBinding.FieldName = 'MomsKonto'
        end
        object grdKontoLogikDBTableView1Salesgroup: TcxGridDBColumn
          DataBinding.FieldName = 'Salesgroup'
        end
        object grdKontoLogikDBTableView1Salesregion: TcxGridDBColumn
          DataBinding.FieldName = 'Salesregion'
        end
        object grdKontoLogikDBTableView1SalesToCountry: TcxGridDBColumn
          DataBinding.FieldName = 'SalesToCountry'
        end
        object grdKontoLogikDBTableView1POFromCountry: TcxGridDBColumn
          DataBinding.FieldName = 'POFromCountry'
        end
        object grdKontoLogikDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
        end
        object grdKontoLogikDBTableView1DateModified: TcxGridDBColumn
          DataBinding.FieldName = 'DateModified'
        end
        object grdKontoLogikDBTableView1CreatedUser: TcxGridDBColumn
          DataBinding.FieldName = 'CreatedUser'
        end
        object grdKontoLogikDBTableView1ModifiedUser: TcxGridDBColumn
          DataBinding.FieldName = 'ModifiedUser'
        end
      end
      object grdKontoLogikDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnEditKeyDown = grdKontoLogikDBBandedTableView1EditKeyDown
        DataController.DataSource = daMoLM1.ds_KontoLogik
        DataController.KeyFieldNames = 
          'CustomerCountryNo;PO_CountryNo;SalesmangroupNo;Trading;Varugrupp' +
          'No;Moms;SalesregionNo;ForsaljningsKonto'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '######'
            Kind = skCount
            FieldName = 'ForsaljningsKonto'
            Column = grdKontoLogikDBBandedTableView1ForsaljningsKonto
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'F'#246'rs'#228'ljning'
            Width = 598
          end
          item
            Caption = 'Trading'
            Width = 208
          end
          item
            Caption = 'Konton'
            Width = 325
          end>
        object grdKontoLogikDBBandedTableView1SalesmangroupNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesmangroupNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 82
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1SalesregionNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesregionNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 33
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1CustomerCountryNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CustomerCountryNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 32
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Trading: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Trading'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 92
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1PO_Country: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_Country'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CountryNo'
          Properties.ListColumns = <
            item
              FieldName = 'CountryName'
            end>
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1PO_CountryNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_CountryNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          VisibleForCustomization = False
          Width = 93
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Artikel: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Artikel'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ArticleNo'
          Properties.ListColumns = <
            item
              FieldName = 'ArticleName'
            end>
          Width = 109
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Salesgroup: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Salesgroup'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'SalesGroupNo'
          Properties.ListColumns = <
            item
              FieldName = 'SalesGroupName'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 103
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Salesregion: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Salesregion'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 155
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1SalesToCountry: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesToCountry'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CountryNo'
          Properties.ListColumns = <
            item
              FieldName = 'CountryName'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 97
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1DateCreated: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DateCreated'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1DateModified: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DateModified'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1CreatedUser: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CreatedUser'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 23
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ModifiedUser'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 24
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1ForsaljningsKonto: TcxGridDBBandedColumn
          Caption = 'Kontonr'
          DataBinding.FieldName = 'ForsaljningsKonto'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 94
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1FraktKonto: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FraktKonto'
          PropertiesClassName = 'TcxTextEditProperties'
          Visible = False
          Width = 78
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1VatCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VatCode'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 76
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1MomsKonto: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MomsKonto'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 77
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Moms: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Moms'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1VarugruppNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VarugruppNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
      end
      object grdKontoLogikLevel1: TcxGridLevel
        GridView = grdKontoLogikDBBandedTableView1
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmsConnector.imglistActions
    ImageOptions.LargeImages = dmsConnector.imglistActions
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 408
    Top = 198
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Main'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 179
      FloatTop = 166
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
          ItemName = 'dxBarLargeButton7'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Exit'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 179
      FloatTop = 166
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acAdd
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acDelete
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acExit
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acPrint
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acAvdelning
      Category = 0
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 232
    Top = 126
    object acExit: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acExitExecute
    end
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 15
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acDelete: TAction
      Caption = 'Ta bort F5'
      ImageIndex = 6
      ShortCut = 116
      OnExecute = acDeleteExecute
      OnUpdate = acDeleteUpdate
    end
    object acAdd: TAction
      Caption = 'L'#228'gg till F2'
      ImageIndex = 8
      ShortCut = 113
      OnExecute = acAddExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = acPrintExecute
      OnUpdate = acPrintUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra F4'
      ImageIndex = 10
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acAvdelning: TAction
      Caption = 'Avdelning'
      ImageIndex = 3
      OnExecute = acAvdelningExecute
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 192
    Top = 193
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdKontoLogik
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
  object siLangLinked_fKontoLogik: TsiLangLinked
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
      'ListField')
    Left = 560
    Top = 320
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004B006F006E0074006F004C006F00670069006B00
      01004B006F006E0074006F0073007400790072006E0069006E00670001000100
      01000D000A00630078004C006100620065006C00310001004B006F006E007400
      6F0073007400790072006E0069006E0067000100010001000D000A0050006100
      6E0065006C0032000100500061006E0065006C0032000100010001000D000A00
      6700720064004B006F006E0074006F004C006F00670069006B00440042005400
      610062006C00650056006900650077003100530061006C00650073006D006100
      6E00670072006F00750070004E006F0001004600F60072007300E4006C006A00
      6E0069006E0067007300670072007500700070000100010001000D000A006700
      720064004B006F006E0074006F004C006F00670069006B004400420054006100
      62006C00650056006900650077003100530061006C0065007300720065006700
      69006F006E004E006F0001004600F60072007300E4006C006A006E0069006E00
      6700730072006500670069006F006E000100010001000D000A00670072006400
      4B006F006E0074006F004C006F00670069006B00440042005400610062006C00
      65005600690065007700310043007500730074006F006D006500720043006F00
      75006E007400720079004E006F000100460061006B0074007500720065007200
      69006E00670073006C0061006E0064000100010001000D000A00670072006400
      4B006F006E0074006F004C006F00670069006B00440042005400610062006C00
      650056006900650077003100540072006100640069006E006700010054007200
      6100640069006E0067000100010001000D000A006700720064004B006F006E00
      74006F004C006F00670069006B00440042005400610062006C00650056006900
      65007700310050004F005F0043006F0075006E007400720079004E006F000100
      49006E006B00F600700073006C0061006E0064000100010001000D000A006700
      720064004B006F006E0074006F004C006F00670069006B004400420054006100
      62006C0065005600690065007700310056006100720075006700720075007000
      70004E006F000100560061007200750073006C00610067000100010001000D00
      0A006700720064004B006F006E0074006F004C006F00670069006B0044004200
      5400610062006C0065005600690065007700310046006F007200730061006C00
      6A006E0069006E00670073004B006F006E0074006F0001004600F60072007300
      E4006C006A006E0069006E00670073006B006F006E0074006F00010001000100
      0D000A006700720064004B006F006E0074006F004C006F00670069006B004400
      42005400610062006C006500560069006500770031004600720061006B007400
      4B006F006E0074006F0001004600720061006B0074006B006F006E0074006F00
      0100010001000D000A006700720064004B006F006E0074006F004C006F006700
      69006B00440042005400610062006C0065005600690065007700310056006100
      740043006F006400650001004D006F006D0073006B006F006400010001000100
      0D000A006700720064004B006F006E0074006F004C006F00670069006B004400
      42005400610062006C006500560069006500770031004D006F006D0073004B00
      6F006E0074006F0001004D006F006D0073006B006F006E0074006F0001000100
      01000D000A006700720064004B006F006E0074006F004C006F00670069006B00
      440042005400610062006C00650056006900650077003100530061006C006500
      7300670072006F00750070000100530061006C0065007300670072006F007500
      70000100010001000D000A006700720064004B006F006E0074006F004C006F00
      670069006B00440042005400610062006C006500560069006500770031005300
      61006C006500730072006500670069006F006E000100530061006C0065007300
      72006500670069006F006E000100010001000D000A006700720064004B006F00
      6E0074006F004C006F00670069006B00440042005400610062006C0065005600
      6900650077003100530061006C006500730054006F0043006F0075006E007400
      720079000100530061006C006500730054006F0043006F0075006E0074007200
      79000100010001000D000A006700720064004B006F006E0074006F004C006F00
      670069006B00440042005400610062006C006500560069006500770031005000
      4F00460072006F006D0043006F0075006E00740072007900010050004F004600
      72006F006D0043006F0075006E007400720079000100010001000D000A006700
      720064004B006F006E0074006F004C006F00670069006B004400420054006100
      62006C0065005600690065007700310044006100740065004300720065006100
      7400650064000100440061007400650043007200650061007400650064000100
      010001000D000A006700720064004B006F006E0074006F004C006F0067006900
      6B00440042005400610062006C00650056006900650077003100440061007400
      65004D006F00640069006600690065006400010044006100740065004D006F00
      6400690066006900650064000100010001000D000A006700720064004B006F00
      6E0074006F004C006F00670069006B00440042005400610062006C0065005600
      6900650077003100430072006500610074006500640055007300650072000100
      430072006500610074006500640055007300650072000100010001000D000A00
      6700720064004B006F006E0074006F004C006F00670069006B00440042005400
      610062006C006500560069006500770031004D006F0064006900660069006500
      6400550073006500720001004D006F0064006900660069006500640055007300
      650072000100010001000D000A006700720064004B006F006E0074006F004C00
      6F00670069006B0044004200420061006E006400650064005400610062006C00
      650056006900650077003100530061006C00650073006D0061006E0067007200
      6F00750070004E006F0001004600F60072007300E4006C006A006E0069006E00
      670073006700720075007000700020006E0072000100010001000D000A006700
      720064004B006F006E0074006F004C006F00670069006B004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053006100
      6C006500730072006500670069006F006E004E006F0001004600F60072007300
      E4006C006A006E0069006E006700730072006500670069006F006E0020006E00
      72000100010001000D000A006700720064004B006F006E0074006F004C006F00
      670069006B0044004200420061006E006400650064005400610062006C006500
      5600690065007700310043007500730074006F006D006500720043006F007500
      6E007400720079004E006F000100460061006B00740075007200650072006900
      6E00670073006C0061006E0064000100010001000D000A006700720064004B00
      6F006E0074006F004C006F00670069006B0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310054007200610064006900
      6E0067000100540072006100640069006E0067000100010001000D000A006700
      720064004B006F006E0074006F004C006F00670069006B004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050004F00
      5F0043006F0075006E00740072007900010049006E006B00F600700073006C00
      61006E0064000100010001000D000A006700720064004B006F006E0074006F00
      4C006F00670069006B0044004200420061006E00640065006400540061006200
      6C0065005600690065007700310050004F005F0043006F0075006E0074007200
      79004E006F00010049006E006B00F600700073006C0061006E00640001000100
      01000D000A006700720064004B006F006E0074006F004C006F00670069006B00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310041007200740069006B0065006C00010041007200740069006B006500
      6C000100010001000D000A006700720064004B006F006E0074006F004C006F00
      670069006B0044004200420061006E006400650064005400610062006C006500
      56006900650077003100530061006C0065007300670072006F00750070000100
      4600F60072007300E4006C006A006E0069006E00670073006700720075007000
      70000100010001000D000A006700720064004B006F006E0074006F004C006F00
      670069006B0044004200420061006E006400650064005400610062006C006500
      56006900650077003100530061006C006500730072006500670069006F006E00
      01004600F60072007300E4006C006A006E0069006E0067007300720065006700
      69006F006E000100010001000D000A006700720064004B006F006E0074006F00
      4C006F00670069006B0044004200420061006E00640065006400540061006200
      6C00650056006900650077003100530061006C006500730054006F0043006F00
      75006E007400720079000100460061006B007400750072006500720069006E00
      670073006C0061006E0064000100010001000D000A006700720064004B006F00
      6E0074006F004C006F00670069006B0044004200420061006E00640065006400
      5400610062006C00650056006900650077003100440061007400650043007200
      6500610074006500640001005200650067006900730074007200650072006100
      64000100010001000D000A006700720064004B006F006E0074006F004C006F00
      670069006B0044004200420061006E006400650064005400610062006C006500
      5600690065007700310044006100740065004D006F0064006900660069006500
      64000100C4006E0064007200610064000100010001000D000A00670072006400
      4B006F006E0074006F004C006F00670069006B0044004200420061006E006400
      650064005400610062006C006500560069006500770031004300720065006100
      7400650064005500730065007200010052006500670069007300740072006500
      7200610064002000610076000100010001000D000A006700720064004B006F00
      6E0074006F004C006F00670069006B0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004D006F006400690066006900
      6500640055007300650072000100C4006E006400720061006400200061007600
      0100010001000D000A006700720064004B006F006E0074006F004C006F006700
      69006B0044004200420061006E006400650064005400610062006C0065005600
      690065007700310046006F007200730061006C006A006E0069006E0067007300
      4B006F006E0074006F0001004B006F006E0074006F006E007200010001000100
      0D000A006700720064004B006F006E0074006F004C006F00670069006B004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004600720061006B0074004B006F006E0074006F0001004600720061006B00
      74006B006F006E0074006F000100010001000D000A006700720064004B006F00
      6E0074006F004C006F00670069006B0044004200420061006E00640065006400
      5400610062006C0065005600690065007700310056006100740043006F006400
      650001004D006F006D0073006B006F0064000100010001000D000A0067007200
      64004B006F006E0074006F004C006F00670069006B0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004D006F006D00
      73004B006F006E0074006F0001004D006F006D0073006B006F006E0074006F00
      0100010001000D000A006700720064004B006F006E0074006F004C006F006700
      69006B0044004200420061006E006400650064005400610062006C0065005600
      69006500770031004D006F006D00730001004D006F006D007300010001000100
      0D000A006700720064004B006F006E0074006F004C006F00670069006B004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31005600610072007500670072007500700070004E006F000100560061007200
      750073006C00610067000100010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200310001004D00610069006E00
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      720031004200610072003200010045007800690074000100010001000D000A00
      610063004500780069007400010053007400E4006E0067000100010001000D00
      0A00610063005300610076006500010053007000610072006100200046003300
      0100010001000D000A0061006300440065006C00650074006500010054006100
      200062006F00720074002000460035000100010001000D000A00610063004100
      6400640001004C00E400670067002000740069006C006C002000460032000100
      010001000D000A00610063005000720069006E007400010053006B0072006900
      76002000750074002000460038000100010001000D000A006100630043006100
      6E00630065006C004300680061006E006700650073000100C5006E0067007200
      61002000460034000100010001000D000A006100630041007600640065006C00
      6E0069006E006700010041007600640065006C006E0069006E00670001000100
      01000D000A006400780043006F006D0070006F006E0065006E00740050007200
      69006E0074006500720031004C0069006E006B00310001004E00650077005200
      650070006F00720074000100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A00540066004B006F006E0074006F004C006F0067006900
      6B0001004D0053002000530061006E0073002000530065007200690066000100
      4D0053002000530061006E007300200053006500720069006600010054006100
      68006F006D0061000D000A00640078004200610072004D0061006E0061006700
      65007200310001005300650067006F0065002000550049000100010054006100
      68006F006D0061000D000A00640078004200610072004D0061006E0061006700
      650072003100420061007200310001005300650067006F006500200055004900
      010001005400610068006F006D0061000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200320001005300650067006F00
      6500200055004900010001005400610068006F006D0061000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0031000100540069006D006500730020004E0065007700
      200052006F006D0061006E00010001005400610068006F006D0061000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A00640078004200610072004D0061006E0061006700
      6500720031002E00430061007400650067006F00720069006500730001004400
      65006600610075006C007400010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A006700720064004B006F006E0074006F004C006F006700
      69006B0044004200420061006E006400650064005400610062006C0065005600
      6900650077003100530061006C00650073006D0061006E00670072006F007500
      70004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      64004B006F006E0074006F004C006F00670069006B0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530061006C00
      6500730072006500670069006F006E004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A006700720064004B006F006E0074006F004C006F006700
      69006B0044004200420061006E006400650064005400610062006C0065005600
      690065007700310043007500730074006F006D006500720043006F0075006E00
      7400720079004E006F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      6700720064004B006F006E0074006F004C006F00670069006B00440042004200
      61006E006400650064005400610062006C006500560069006500770031005400
      72006100640069006E0067002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      01005400720075006500010001000D000A006700720064004B006F006E007400
      6F004C006F00670069006B0044004200420061006E0064006500640054006100
      62006C00650056006900650077003100540072006100640069006E0067002E00
      500072006F0070006500720074006900650073002E0044006900730070006C00
      6100790055006E0063006800650063006B00650064000100460061006C007300
      6500010001000D000A006700720064004B006F006E0074006F004C006F006700
      69006B0044004200420061006E006400650064005400610062006C0065005600
      6900650077003100540072006100640069006E0067002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780043006800650063006B0042006F007800500072006F0070006500
      72007400690065007300010001000D000A006700720064004B006F006E007400
      6F004C006F00670069006B0044004200420061006E0064006500640054006100
      62006C0065005600690065007700310050004F005F0043006F0075006E007400
      720079002E00500072006F0070006500720074006900650073002E004B006500
      79004600690065006C0064004E0061006D0065007300010043006F0075006E00
      7400720079004E006F00010001000D000A006700720064004B006F006E007400
      6F004C006F00670069006B0044004200420061006E0064006500640054006100
      62006C0065005600690065007700310050004F005F0043006F0075006E007400
      720079002E00500072006F0070006500720074006900650073002E004C006900
      730074004600690065006C0064004E0061006D0065007300010043006F007500
      6E007400720079004E0061006D006500010001000D000A006700720064004B00
      6F006E0074006F004C006F00670069006B0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310050004F005F0043006F00
      75006E007400720079002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C006F006F00
      6B007500700043006F006D0062006F0042006F007800500072006F0070006500
      72007400690065007300010001000D000A006700720064004B006F006E007400
      6F004C006F00670069006B0044004200420061006E0064006500640054006100
      62006C0065005600690065007700310050004F005F0043006F0075006E007400
      720079004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      720064004B006F006E0074006F004C006F00670069006B004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041007200
      740069006B0065006C002E00500072006F007000650072007400690065007300
      2E004B00650079004600690065006C0064004E0061006D006500730001004100
      72007400690063006C0065004E006F00010001000D000A006700720064004B00
      6F006E0074006F004C006F00670069006B0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310041007200740069006B00
      65006C002E00500072006F0070006500720074006900650073002E004C006900
      730074004600690065006C0064004E0061006D00650073000100410072007400
      690063006C0065004E0061006D006500010001000D000A006700720064004B00
      6F006E0074006F004C006F00670069006B0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310041007200740069006B00
      65006C002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006F006F006B0075007000
      43006F006D0062006F0042006F007800500072006F0070006500720074006900
      65007300010001000D000A006700720064004B006F006E0074006F004C006F00
      670069006B0044004200420061006E006400650064005400610062006C006500
      56006900650077003100530061006C0065007300670072006F00750070002E00
      500072006F0070006500720074006900650073002E004B006500790046006900
      65006C0064004E0061006D00650073000100530061006C006500730047007200
      6F00750070004E006F00010001000D000A006700720064004B006F006E007400
      6F004C006F00670069006B0044004200420061006E0064006500640054006100
      62006C00650056006900650077003100530061006C0065007300670072006F00
      750070002E00500072006F0070006500720074006900650073002E004C006900
      730074004600690065006C0064004E0061006D00650073000100530061006C00
      65007300470072006F00750070004E0061006D006500010001000D000A006700
      720064004B006F006E0074006F004C006F00670069006B004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053006100
      6C0065007300670072006F00750070002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006F006F006B007500700043006F006D0062006F0042006F00780050007200
      6F007000650072007400690065007300010001000D000A006700720064004B00
      6F006E0074006F004C006F00670069006B0044004200420061006E0064006500
      64005400610062006C00650056006900650077003100530061006C0065007300
      72006500670069006F006E002E00500072006F00700065007200740069006500
      73002E004B00650079004600690065006C0064004E0061006D00650073000100
      43006C00690065006E0074004E006F00010001000D000A006700720064004B00
      6F006E0074006F004C006F00670069006B0044004200420061006E0064006500
      64005400610062006C00650056006900650077003100530061006C0065007300
      72006500670069006F006E002E00500072006F00700065007200740069006500
      73002E004C006900730074004600690065006C0064004E0061006D0065007300
      010043006C00690065006E0074004E0061006D006500010001000D000A006700
      720064004B006F006E0074006F004C006F00670069006B004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053006100
      6C006500730072006500670069006F006E002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006F006F006B007500700043006F006D0062006F0042006F0078005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4B006F006E0074006F004C006F00670069006B0044004200420061006E006400
      650064005400610062006C00650056006900650077003100530061006C006500
      730054006F0043006F0075006E007400720079002E00500072006F0070006500
      720074006900650073002E004B00650079004600690065006C0064004E006100
      6D0065007300010043006F0075006E007400720079004E006F00010001000D00
      0A006700720064004B006F006E0074006F004C006F00670069006B0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      530061006C006500730054006F0043006F0075006E007400720079002E005000
      72006F0070006500720074006900650073002E004C0069007300740046006900
      65006C0064004E0061006D0065007300010043006F0075006E00740072007900
      4E0061006D006500010001000D000A006700720064004B006F006E0074006F00
      4C006F00670069006B0044004200420061006E00640065006400540061006200
      6C00650056006900650077003100530061006C006500730054006F0043006F00
      75006E007400720079002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C006F006F00
      6B007500700043006F006D0062006F0042006F007800500072006F0070006500
      72007400690065007300010001000D000A006700720064004B006F006E007400
      6F004C006F00670069006B0044004200420061006E0064006500640054006100
      62006C0065005600690065007700310044006100740065004300720065006100
      7400650064002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      64004B006F006E0074006F004C006F00670069006B0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100440061007400
      65004D006F006400690066006900650064002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064004B006F006E0074006F004C006F0067006900
      6B0044004200420061006E006400650064005400610062006C00650056006900
      650077003100430072006500610074006500640055007300650072002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004B006F006E007400
      6F004C006F00670069006B0044004200420061006E0064006500640054006100
      62006C006500560069006500770031004D006F00640069006600690065006400
      55007300650072002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      720064004B006F006E0074006F004C006F00670069006B004400420042006100
      6E006400650064005400610062006C0065005600690065007700310046006F00
      7200730061006C006A006E0069006E00670073004B006F006E0074006F002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800540065007800740045006400690074005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4B006F006E0074006F004C006F00670069006B0044004200420061006E006400
      650064005400610062006C006500560069006500770031004600720061006B00
      74004B006F006E0074006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780054006500
      780074004500640069007400500072006F007000650072007400690065007300
      010001000D000A006700720064004B006F006E0074006F004C006F0067006900
      6B0044004200420061006E006400650064005400610062006C00650056006900
      65007700310056006100740043006F00640065002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780054006500780074004500640069007400500072006F00700065007200
      7400690065007300010001000D000A006700720064004B006F006E0074006F00
      4C006F00670069006B0044004200420061006E00640065006400540061006200
      6C006500560069006500770031004D006F006D0073004B006F006E0074006F00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780054006500780074004500640069007400
      500072006F007000650072007400690065007300010001000D000A0067007200
      64004B006F006E0074006F004C006F00670069006B0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004D006F006D00
      73002E00500072006F0070006500720074006900650073002E00440069007300
      70006C006100790043006800650063006B006500640001005400720075006500
      010001000D000A006700720064004B006F006E0074006F004C006F0067006900
      6B0044004200420061006E006400650064005400610062006C00650056006900
      6500770031004D006F006D0073002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790055006E006300680065006300
      6B00650064000100460061006C0073006500010001000D000A00670072006400
      4B006F006E0074006F004C006F00670069006B0044004200420061006E006400
      650064005400610062006C006500560069006500770031004D006F006D007300
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780043006800650063006B0042006F007800
      500072006F007000650072007400690065007300010001000D000A0067007200
      64004B006F006E0074006F004C006F00670069006B0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100560061007200
      7500670072007500700070004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006400780043006F006D0070006F006E0065006E00740050007200
      69006E0074006500720031004C0069006E006B0031002E004400650073006900
      67006E0065007200430061007000740069006F006E00010046006F0072006D00
      6100740020005200650070006F0072007400010001000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A006700720064004B006F006E0074006F004C006F0067006900
      6B0044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0030005D002E00430061007000
      740069006F006E0001004600F60072007300E4006C006A006E0069006E006700
      010001000D000A006700720064004B006F006E0074006F004C006F0067006900
      6B0044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0031005D002E00430061007000
      740069006F006E000100540072006100640069006E006700010001000D000A00
      6700720064004B006F006E0074006F004C006F00670069006B00440042004200
      61006E006400650064005400610062006C006500560069006500770031002E00
      420061006E00640073005B0032005D002E00430061007000740069006F006E00
      01004B006F006E0074006F006E00010001000D000A006700720064004B006F00
      6E0074006F004C006F00670069006B0044004200420061006E00640065006400
      5400610062006C0065005600690065007700310050004F005F0043006F007500
      6E007400720079002E00500072006F0070006500720074006900650073002E00
      4C0069007300740043006F006C0075006D006E0073005B0030005D002E004300
      61007000740069006F006E00010043006F0075006E007400720079004E006100
      6D006500010001000D000A006700720064004B006F006E0074006F004C006F00
      670069006B0044004200420061006E006400650064005400610062006C006500
      5600690065007700310041007200740069006B0065006C002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001004100
      72007400690063006C0065004E0061006D006500010001000D000A0067007200
      64004B006F006E0074006F004C006F00670069006B0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530061006C00
      65007300670072006F00750070002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003000
      5D002E00430061007000740069006F006E000100530061006C00650073004700
      72006F00750070004E0061006D006500010001000D000A006700720064004B00
      6F006E0074006F004C006F00670069006B0044004200420061006E0064006500
      64005400610062006C00650056006900650077003100530061006C0065007300
      72006500670069006F006E002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E00010043006C00690065006E0074004E00
      61006D006500010001000D000A006700720064004B006F006E0074006F004C00
      6F00670069006B0044004200420061006E006400650064005400610062006C00
      650056006900650077003100530061006C006500730054006F0043006F007500
      6E007400720079002E00500072006F0070006500720074006900650073002E00
      4C0069007300740043006F006C0075006D006E0073005B0030005D002E004300
      61007000740069006F006E00010043006F0075006E007400720079004E006100
      6D006500010001000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00540066004B006F006E007400
      6F004C006F00670069006B000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00640078004200610072004D0061006E00
      610067006500720031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00640078004300
      6F006D0070006F006E0065006E0074005000720069006E007400650072003100
      4C0069006E006B0031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00}
  end
end
