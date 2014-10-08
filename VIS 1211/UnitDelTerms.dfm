object FormDelTerms: TFormDelTerms
  Left = 192
  Top = 114
  ActiveControl = grdDelTerms
  Caption = 'Leveransvillkor'
  ClientHeight = 426
  ClientWidth = 769
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
    Top = 384
    Width = 769
    Height = 42
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 395
    ExplicitWidth = 777
    object BitBtn1: TBitBtn
      Left = 296
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdDelTerms: TcxGrid
    Left = 0
    Top = 0
    Width = 769
    Height = 384
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    ExplicitWidth = 777
    ExplicitHeight = 395
    object grdDelTermsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsContact.dsDelTerms
      DataController.KeyFieldNames = 'DeliveryTerm_No'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdDelTermsDBTableView1DeliveryTerm: TcxGridDBColumn
        Caption = 'LEVERANSVILLKOR'
        DataBinding.FieldName = 'DeliveryTerm'
        Width = 148
      end
      object grdDelTermsDBTableView1Description: TcxGridDBColumn
        Caption = 'BESKRIVNING'
        DataBinding.FieldName = 'Description'
        Width = 621
      end
    end
    object grdDelTermsLevel1: TcxGridLevel
      GridView = grdDelTermsDBTableView1
    end
  end
  object siLangLinked_FormDelTerms: TsiLangLinked
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
    Left = 376
    Top = 216
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D00440065006C005400650072006D00
      730001004C00650076006500720061006E007300760069006C006C006B006F00
      7200010001000D000A00420069007400420074006E00310001004F004B000100
      01000D000A00420069007400420074006E0032000100430061006E0063006500
      6C00010001000D000A00670072006400440065006C005400650072006D007300
      440042005400610062006C00650056006900650077003100440065006C006900
      76006500720079005400650072006D0001004C00450056004500520041004E00
      5300560049004C004C004B004F005200010001000D000A006700720064004400
      65006C005400650072006D007300440042005400610062006C00650056006900
      6500770031004400650073006300720069007000740069006F006E0001004200
      450053004B005200490056004E0049004E004700010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A007300740046006F006E00740073005F00
      55006E00690063006F00640065000D000A00540046006F0072006D0044006500
      6C005400650072006D00730001004D0053002000530061006E00730020005300
      6500720069006600010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      73007400430068006100720053006500740073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D00440065006C005400650072006D00
      73000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00}
  end
end
