object fMultiplaShippers: TfMultiplaShippers
  Left = 192
  Top = 107
  Caption = 'AVR'#196'KNA FRAKTKOSTNADER'
  ClientHeight = 509
  ClientWidth = 739
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
    Top = 456
    Width = 739
    Height = 53
    Align = alBottom
    TabOrder = 0
    object bbOK: TBitBtn
      Left = 240
      Top = 13
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bbOKClick
    end
    object bbCancel: TBitBtn
      Left = 352
      Top = 13
      Width = 75
      Height = 25
      Caption = #197'ngra'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 89
    Align = alTop
    TabOrder = 1
    object bTaBortRad: TButton
      Left = 24
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Ta bort'
      TabOrder = 0
      OnClick = bTaBortRadClick
    end
    object Memo1: TMemo
      Left = 264
      Top = 8
      Width = 457
      Height = 73
      Lines.Strings = (
        'Mata in spedit'#246'rens fakturanr.'
        
          'Om du '#229'ngrar en avr'#228'kning f'#246'r en spedit'#246'r, markera och klicka p'#229 +
          ' ta bort knappen.'
        ''
        'Klicka p'#229' OK f'#246'r att skapa avr'#228'kningar.'
        'Klicka p'#229' '#229'ngra f'#246'r att avbryta.')
      TabOrder = 1
    end
  end
  object grdSpedsInvoice: TcxGrid
    Left = 0
    Top = 89
    Width = 739
    Height = 367
    Align = alClient
    TabOrder = 2
    object grdSpedsInvoiceDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmModule1.dsShippers
      DataController.KeyFieldNames = 'AvrakningsNr'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdSpedsInvoiceDBTableView1Shipper: TcxGridDBColumn
        DataBinding.FieldName = 'Shipper'
      end
      object grdSpedsInvoiceDBTableView1ShippersInvoiceNo: TcxGridDBColumn
        DataBinding.FieldName = 'ShippersInvoiceNo'
      end
      object grdSpedsInvoiceDBTableView1ShipperNo: TcxGridDBColumn
        DataBinding.FieldName = 'ShipperNo'
      end
      object grdSpedsInvoiceDBTableView1AvrakningsNr: TcxGridDBColumn
        DataBinding.FieldName = 'AvrakningsNr'
      end
    end
    object grdSpedsInvoiceLevel1: TcxGridLevel
      GridView = grdSpedsInvoiceDBTableView1
    end
  end
  object siLangLinked_fMultiplaShippers: TsiLangLinked
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
    Left = 360
    Top = 256
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004D0075006C007400690070006C00610053006800
      6900700070006500720073000100410056005200C4004B004E00410020004600
      520041004B0054004B004F00530054004E004100440045005200010001000100
      0D000A00620062004F004B0001004F004B000100010001000D000A0062006200
      430061006E00630065006C000100C5006E006700720061000100010001000D00
      0A0062005400610042006F007200740052006100640001005400610020006200
      6F00720074000100010001000D000A0067007200640053007000650064007300
      49006E0076006F00690063006500440042005400610062006C00650056006900
      6500770031005300680069007000700065007200010053007000650064006900
      7400F60072000100010001000D000A0067007200640053007000650064007300
      49006E0076006F00690063006500440042005400610062006C00650056006900
      6500770031005300680069007000700065007200730049006E0076006F006900
      630065004E006F000100530070006500640069007400F600720065006E007300
      2000660061006B0074007500720061006E0072000100010001000D000A006700
      720064005300700065006400730049006E0076006F0069006300650044004200
      5400610062006C00650056006900650077003100530068006900700070006500
      72004E006F00010053006800690070007000650072004E006F00010001000100
      0D000A006700720064005300700065006400730049006E0076006F0069006300
      6500440042005400610062006C00650056006900650077003100410076007200
      61006B006E0069006E00670073004E0072000100410076007200E4006B006E00
      69006E00670073004E0072000100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A00540066004D0075006C007400690070006C006100
      5300680069007000700065007200730001004D0053002000530061006E007300
      20005300650072006900660001004D0053002000530061006E00730020005300
      650072006900660001005400610068006F006D0061000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A004D0065006D006F0031002E004C0069006E006500730001002200
      4D00610074006100200069006E002000730070006500640069007400F6007200
      65006E0073002000660061006B0074007500720061006E0072002E0022002C00
      22004F006D002000640075002000E5006E006700720061007200200065006E00
      2000610076007200E4006B006E0069006E00670020006600F600720020006500
      6E002000730070006500640069007400F60072002C0020006D00610072006B00
      65007200610020006F006300680020006B006C00690063006B00610020007000
      E500200074006100200062006F007200740020006B006E006100700070006500
      6E002E0022002C002C0022004B006C00690063006B00610020007000E5002000
      4F004B0020006600F60072002000610074007400200073006B00610070006100
      2000610076007200E4006B006E0069006E006700610072002E0022002C002200
      4B006C00690063006B00610020007000E5002000E5006E006700720061002000
      6600F60072002000610074007400200061007600620072007900740061002E00
      2200010001000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00540066004D0075006C00
      7400690070006C00610053006800690070007000650072007300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
