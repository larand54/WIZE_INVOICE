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
    object grdOrderStockDetailsDBTableView1: TcxGridDBTableView
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
  object siLangLinked_fOrderStockDetails: TsiLangLinked
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
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HelpFile'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'Origin'
      'PropertiesClassName')
    Left = 528
    Top = 312
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004F007200640065007200530074006F0063006B00
      440065007400610069006C00730001004F007200640065007200730074006F00
      63006B00200072006100640069006E0066006F000100010001000D000A006700
      720064004F007200640065007200530074006F0063006B004400650074006100
      69006C007300440042005400610062006C006500560069006500770031004F00
      52004400450052005F004E004F0001004B006F006E007400720061006B007400
      0100010001000D000A006700720064004F007200640065007200530074006F00
      63006B00440065007400610069006C007300440042005400610062006C006500
      560069006500770031004F0072006400650072007200610064006E0072000100
      4F0072006400650072007200610064006E0072000100010001000D000A006700
      720064004F007200640065007200530074006F0063006B004400650074006100
      69006C007300440042005400610062006C006500560069006500770031005300
      74006100740069007300740069006B006C0061006E0064000100530074006100
      740069007300740069006B006C0061006E0064000100010001000D000A006700
      720064004F007200640065007200530074006F0063006B004400650074006100
      69006C007300440042005400610062006C006500560069006500770031005000
      72006F00640075006B0074000100500072006F00640075006B00740001000100
      01000D000A006700720064004F007200640065007200530074006F0063006B00
      440065007400610069006C007300440042005400610062006C00650056006900
      650077003100560061006C007500740061000100560061006C00750074006100
      0100010001000D000A006700720064004F007200640065007200530074006F00
      63006B00440065007400610069006C007300440042005400610062006C006500
      560069006500770031004600720073006C006A006E0069006E00670073007200
      6500670069006F006E0001004600F60072007300E4006C006A006E0069006E00
      6700730072006500670069006F006E000100010001000D000A00670072006400
      4F007200640065007200530074006F0063006B00440065007400610069006C00
      7300440042005400610062006C006500560069006500770031004B0075006E00
      640001004B0075006E0064000100010001000D000A006700720064004F007200
      640065007200530074006F0063006B00440065007400610069006C0073004400
      42005400610062006C006500560069006500770031004F007200640065007200
      4E004D00330069006E00740001004F0072006400650072004E004D0033006900
      6E0074000100010001000D000A006700720064004F0072006400650072005300
      74006F0063006B00440065007400610069006C00730044004200540061006200
      6C006500560069006500770031004C00650076004E004D00330069006E007400
      01004C00650076004E004D00330069006E0074000100010001000D000A006700
      720064004F007200640065007200530074006F0063006B004400650074006100
      69006C007300440042005400610062006C006500560069006500770031004F00
      7200640065007200730074006F0063006B004E004D00330069006E0074000100
      4F007200640065007200730074006F0063006B004E004D00330069006E007400
      0100010001000D000A006700720064004F007200640065007200530074006F00
      63006B00440065007400610069006C007300440042005400610062006C006500
      560069006500770031004F0072006400650072004E004D003300650078007400
      01004F0072006400650072004E004D0033006500780074000100010001000D00
      0A006700720064004F007200640065007200530074006F0063006B0044006500
      7400610069006C007300440042005400610062006C0065005600690065007700
      31004C00650076004E004D00330065007800740001004C00650076004E004D00
      33006500780074000100010001000D000A006700720064004F00720064006500
      7200530074006F0063006B00440065007400610069006C007300440042005400
      610062006C006500560069006500770031004F00720064006500720073007400
      6F0063006B004E004D00330065007800740001004F0072006400650072007300
      74006F0063006B004E004D0033006500780074000100010001000D000A006700
      720064004F007200640065007200530074006F0063006B004400650074006100
      69006C007300440042005400610062006C006500560069006500770031004F00
      7200640065007200730074006F0063006B00560061006C007500740061000100
      4F007200640065007200730074006F0063006B00560061006C00750074006100
      0100010001000D000A006700720064004F007200640065007200530074006F00
      63006B00440065007400610069006C007300440042005400610062006C006500
      560069006500770031004F007200640065007200730074006F0063006B005300
      45004B0001004F007200640065007200730074006F0063006B00530045004B00
      0100010001000D000A006700720064004F007200640065007200530074006F00
      63006B00440065007400610069006C007300440042005400610062006C006500
      56006900650077003100530061006C006500730052006500670069006F006E00
      4E006F000100530061006C006500730052006500670069006F006E004E006F00
      0100010001000D000A006700720064004F007200640065007200530074006F00
      63006B00440065007400610069006C007300440042005400610062006C006500
      5600690065007700310043006F0075006E007400720079004E006F0001004300
      6F0075006E007400720079004E006F000100010001000D000A00670072006400
      4F007200640065007200530074006F0063006B00440065007400610069006C00
      7300440042005400610062006C00650056006900650077003100430075007200
      720065006E00630079004E006F000100430075007200720065006E0063007900
      4E006F000100010001000D000A006700720064004F0072006400650072005300
      74006F0063006B00440065007400610069006C00730044004200540061006200
      6C006500560069006500770031004D0050004E00480001004E00650074007400
      6F0070007200690073002F004E004D0033000100010001000D000A0061006300
      43006C006F0073006500010053007400E4006E0067000100010001000D000A00
      610063005000720069006E007400010053006B00720069007600200075007400
      0100010001000D000A006100630053006100760065004C00610079006F007500
      740001005300700061007200610020006C00610079006F007500740001000100
      01000D000A006400780043006F006D0070006F006E0065006E00740050007200
      69006E0074006500720031004C0069006E006B00310001004E00650077005200
      650070006F00720074000100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A00540066004F007200640065007200530074006F006300
      6B00440065007400610069006C00730001004D0053002000530061006E007300
      20005300650072006900660001004D0053002000530061006E00730020005300
      650072006900660001005400610068006F006D0061000D000A00640078004300
      6F006D0070006F006E0065006E0074005000720069006E007400650072003100
      4C0069006E006B0031000100540069006D006500730020004E00650077002000
      52006F006D0061006E00010001005400610068006F006D0061000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B0031002E00440065007300690067006E006500
      7200430061007000740069006F006E00010046006F0072006D00610074002000
      5200650070006F0072007400010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A00540066004F007200640065007200530074006F006300
      6B00440065007400610069006C0073000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00}
  end
end
