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
    Left = 376
    Top = 216
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D00440065006C005400650072006D00
      730001004C00650076006500720061006E007300760069006C006C006B006F00
      72000100010001000D000A00420069007400420074006E00310001004F004B00
      0100010001000D000A00420069007400420074006E0032000100430061006E00
      630065006C000100010001000D000A00670072006400440065006C0054006500
      72006D007300440042005400610062006C006500560069006500770031004400
      65006C00690076006500720079005400650072006D0001004C00450056004500
      520041004E005300560049004C004C004B004F0052000100010001000D000A00
      670072006400440065006C005400650072006D00730044004200540061006200
      6C00650056006900650077003100440065007300630072006900700074006900
      6F006E0001004200450053004B005200490056004E0049004E00470001000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054004600
      6F0072006D00440065006C005400650072006D00730001004D00530020005300
      61006E00730020005300650072006900660001004D0053002000530061006E00
      730020005300650072006900660001005400610068006F006D0061000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A00540046006F007200
      6D00440065006C005400650072006D0073000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00}
  end
end
