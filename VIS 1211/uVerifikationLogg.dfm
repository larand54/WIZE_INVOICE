object fVerifikationLogg: TfVerifikationLogg
  Left = 197
  Top = 107
  Caption = 'Verifikatlogg'
  ClientHeight = 618
  ClientWidth = 982
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
    Width = 982
    Height = 57
    Align = alTop
    TabOrder = 0
    DesignSize = (
      982
      57)
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 89
      Height = 43
      Action = acPrint
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 889
      Top = 8
      Width = 88
      Height = 43
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 565
    Width = 982
    Height = 53
    Align = alBottom
    TabOrder = 1
  end
  object grdVerifikationLogg: TcxGrid
    Left = 0
    Top = 57
    Width = 982
    Height = 508
    Align = alClient
    TabOrder = 2
    object grdVerifikationLoggDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dmVidaInvoice.ds_VerLogg
      DataController.KeyFieldNames = 'RadOrder'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'Debet'
          Column = grdVerifikationLoggDBTableView1Debet
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'Kredit'
          Column = grdVerifikationLoggDBTableView1Kredit
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'UtlandsBelopp'
          Column = grdVerifikationLoggDBTableView1UtlandsBelopp
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdVerifikationLoggDBTableView1Konto: TcxGridDBColumn
        DataBinding.FieldName = 'Konto'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 87
      end
      object grdVerifikationLoggDBTableView1Namn: TcxGridDBColumn
        DataBinding.FieldName = 'Namn'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 126
      end
      object grdVerifikationLoggDBTableView1Valuta: TcxGridDBColumn
        DataBinding.FieldName = 'Valuta'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 54
      end
      object grdVerifikationLoggDBTableView1Kurs: TcxGridDBColumn
        DataBinding.FieldName = 'Kurs'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 61
      end
      object grdVerifikationLoggDBTableView1UtlandsBelopp: TcxGridDBColumn
        DataBinding.FieldName = 'UtlandsBelopp'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###,###,###.00'
        Options.Sorting = False
        Width = 82
      end
      object grdVerifikationLoggDBTableView1Debet: TcxGridDBColumn
        DataBinding.FieldName = 'Debet'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###,###,###.00'
        Options.Sorting = False
        Width = 81
      end
      object grdVerifikationLoggDBTableView1Kredit: TcxGridDBColumn
        DataBinding.FieldName = 'Kredit'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###,###,###.00'
        Options.Sorting = False
        Width = 96
      end
      object grdVerifikationLoggDBTableView1Text: TcxGridDBColumn
        DataBinding.FieldName = 'Text'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 265
      end
      object grdVerifikationLoggDBTableView1RadOrder: TcxGridDBColumn
        DataBinding.FieldName = 'RadOrder'
        PropertiesClassName = 'TcxLabelProperties'
        SortIndex = 0
        SortOrder = soAscending
        Width = 91
      end
      object grdVerifikationLoggDBTableView1VatCode: TcxGridDBColumn
        DataBinding.FieldName = 'VatCode'
      end
      object grdVerifikationLoggDBTableView1Avdelning: TcxGridDBColumn
        DataBinding.FieldName = 'Avdelning'
      end
      object grdVerifikationLoggDBTableView1Volym: TcxGridDBColumn
        DataBinding.FieldName = 'Volym'
      end
    end
    object grdVerifikationLoggLevel1: TcxGridLevel
      GridView = grdVerifikationLoggDBTableView1
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 408
    Top = 136
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
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdVerifikationLogg
    PopupMenus = <>
    Left = 600
    Top = 96
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 240
    Top = 160
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdVerifikationLogg
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
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Verifikatlogg')
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
    Left = 264
    Top = 384
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005600650072006900660069006B00610074006900
      6F006E004C006F006700670001005600650072006900660069006B0061007400
      6C006F00670067000100010001000D000A006700720064005600650072006900
      660069006B006100740069006F006E004C006F00670067004400420054006100
      62006C006500560069006500770031004B006F006E0074006F0001004B006F00
      6E0074006F000100010001000D000A0067007200640056006500720069006600
      69006B006100740069006F006E004C006F006700670044004200540061006200
      6C006500560069006500770031004E0061006D006E0001004E0061006D006E00
      0100010001000D000A006700720064005600650072006900660069006B006100
      740069006F006E004C006F0067006700440042005400610062006C0065005600
      6900650077003100560061006C007500740061000100560061006C0075007400
      61000100010001000D000A006700720064005600650072006900660069006B00
      6100740069006F006E004C006F0067006700440042005400610062006C006500
      560069006500770031004B0075007200730001004B0075007200730001000100
      01000D000A006700720064005600650072006900660069006B00610074006900
      6F006E004C006F0067006700440042005400610062006C006500560069006500
      77003100550074006C0061006E0064007300420065006C006F00700070000100
      550074006C0061006E0064007300420065006C006F0070007000010001000100
      0D000A006700720064005600650072006900660069006B006100740069006F00
      6E004C006F0067006700440042005400610062006C0065005600690065007700
      3100440065006200650074000100440065006200650074000100010001000D00
      0A006700720064005600650072006900660069006B006100740069006F006E00
      4C006F0067006700440042005400610062006C00650056006900650077003100
      4B007200650064006900740001004B0072006500640069007400010001000100
      0D000A006700720064005600650072006900660069006B006100740069006F00
      6E004C006F0067006700440042005400610062006C0065005600690065007700
      31005400650078007400010054006500780074000100010001000D000A006700
      720064005600650072006900660069006B006100740069006F006E004C006F00
      67006700440042005400610062006C0065005600690065007700310052006100
      64004F00720064006500720001005200610064004F0072006400650072000100
      010001000D000A006700720064005600650072006900660069006B0061007400
      69006F006E004C006F0067006700440042005400610062006C00650056006900
      65007700310056006100740043006F0064006500010056006100740043006F00
      640065000100010001000D000A00670072006400560065007200690066006900
      6B006100740069006F006E004C006F0067006700440042005400610062006C00
      65005600690065007700310041007600640065006C006E0069006E0067000100
      41007600640065006C006E0069006E0067000100010001000D000A0067007200
      64005600650072006900660069006B006100740069006F006E004C006F006700
      6700440042005400610062006C0065005600690065007700310056006F006C00
      79006D00010056006F006C0079006D000100010001000D000A00610063004300
      6C006F0073006500010053007400E4006E0067000100010001000D000A006100
      63005000720069006E007400010053006B007200690076002000750074000100
      010001000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B00310001004E0065007700
      5200650070006F00720074000100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A00540066005600650072006900660069006B006100
      740069006F006E004C006F006700670001004D0053002000530061006E007300
      2000530065007200690066000100010001000D000A006400780043006F006D00
      70006F006E0065006E0074005000720069006E0074006500720031004C006900
      6E006B0031000100540069006D006500730020004E0065007700200052006F00
      6D0061006E000100010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      31002E00440065007300690067006E0065007200430061007000740069006F00
      6E00010046006F0072006D006100740020005200650070006F00720074000100
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      66005600650072006900660069006B006100740069006F006E004C006F006700
      67000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      01000D000A00}
  end
end
