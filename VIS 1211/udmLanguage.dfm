object dmLanguage: TdmLanguage
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object siLang1: TsiLang
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    LangDispatcher = siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
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
    Left = 16
    Top = 8
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740044006C006700730043006100700074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00570061007200
      6E0069006E00670001005700610072006E0069006E0067000100010001000D00
      0A004500720072006F00720001004500720072006F0072000100010001000D00
      0A0049006E0066006F0072006D006100740069006F006E00010049006E006600
      6F0072006D006100740069006F006E000100010001000D000A0043006F006E00
      6600690072006D00010043006F006E006600690072006D000100010001000D00
      0A00590065007300010026005900650073000100010001000D000A004E006F00
      010026004E006F000100010001000D000A004F004B0001004F004B0001000100
      01000D000A00430061006E00630065006C000100430061006E00630065006C00
      0100010001000D000A00410062006F007200740001002600410062006F007200
      74000100010001000D000A005200650074007200790001002600520065007400
      720079000100010001000D000A00490067006E006F0072006500010026004900
      67006E006F00720065000100010001000D000A0041006C006C00010026004100
      6C006C000100010001000D000A004E006F00200054006F00200041006C006C00
      01004E0026006F00200074006F00200041006C006C000100010001000D000A00
      590065007300200054006F00200041006C006C00010059006500730020007400
      6F002000260041006C006C000100010001000D000A00480065006C0070000100
      2600480065006C0070000100010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00730074004C006F00630061006C00650073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A00}
  end
  object siLangDispatcher1: TsiLangDispatcher
    ActiveLanguage = 1
    NumOfLanguages = 3
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
    OnLanguageChanged = siLangDispatcher1LanguageChanged
    Left = 96
    Top = 16
  end
end