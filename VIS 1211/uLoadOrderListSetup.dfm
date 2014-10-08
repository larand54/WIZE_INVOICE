object fLoadOrderListSetup: TfLoadOrderListSetup
  Left = 229
  Top = 107
  ActiveControl = lcLengthgrupp
  Caption = 'Lastorder inst'#228'llningar'
  ClientHeight = 252
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 211
    Width = 451
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Caption = '&St'#228'ng'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object lcLengthgrupp: TcxDBLookupComboBox
    Left = 112
    Top = 48
    DataBinding.DataField = 'Lengthgrupp'
    DataBinding.DataSource = dmcOrder.dsProps
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 1
    Width = 145
  end
  object cxLabel1: TcxLabel
    Left = 40
    Top = 52
    Caption = 'L'#228'ngdgrupp:'
  end
  object siLangLinked_fLoadOrderListSetup: TsiLangLinked
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
    Left = 216
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C006F00610064004F0072006400650072004C00
      6900730074005300650074007500700001004C006100730074006F0072006400
      65007200200069006E0073007400E4006C006C006E0069006E00670061007200
      010001000D000A00420069007400420074006E0031000100260053007400E400
      6E006700010001000D000A00630078004C006100620065006C00310001004C00
      E4006E0067006400670072007500700070003A00010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A007300740046006F006E00740073005F00
      55006E00690063006F00640065000D000A00540066004C006F00610064004F00
      72006400650072004C006900730074005300650074007500700001004D005300
      2000530061006E007300200053006500720069006600010001000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00540066004C006F006100
      64004F0072006400650072004C00690073007400530065007400750070000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00}
  end
end
