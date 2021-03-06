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
    UseDefaultLanguage = True
    NumOfLanguages = 4
    LangDispatcher = siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English'
      'VE_Svenska')
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
      'Version')
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
      6E0069006E00670001005700610072006E0069006E0067000100560061007200
      6E0069006E0067000100010001000D000A004500720072006F00720001004500
      720072006F0072000100460065006C000100010001000D000A0049006E006600
      6F0072006D006100740069006F006E00010049006E0066006F0072006D006100
      740069006F006E000100010049006E0066006F0072006D006100740069006F00
      6E00010001000D000A0043006F006E006600690072006D00010043006F006E00
      6600690072006D000100420065006B007200E400660074006100010001000100
      0D000A005900650073000100260059006500730001004A006100010001000100
      0D000A004E006F00010026004E006F0001004E0065006A000100010001000D00
      0A004F004B0001004F004B00010001004F004B00010001000D000A0043006100
      6E00630065006C000100430061006E00630065006C0001004100760062007200
      790074000100010001000D000A00410062006F00720074000100260041006200
      6F007200740001004100760062007200790074000100430061006E0063006500
      6C00010001000D000A0052006500740072007900010026005200650074007200
      7900010055007000700064006100740065007200610001005500700064006100
      74006500010001000D000A00490067006E006F00720065000100260049006700
      6E006F00720065000100490067006E006F007200650072006100010001000100
      0D000A0041006C006C000100260041006C006C000100260041006C006C006100
      0100010001000D000A004E006F00200054006F00200041006C006C0001004E00
      26006F00200074006F00200041006C006C0001004E0065006A00200074006900
      6C006C00200041006C006C0061000100010001000D000A005900650073002000
      54006F00200041006C006C000100590065007300200074006F00200026004100
      6C006C0001004A0061002000740069006C006C002000260041006C006C006100
      0100010001000D000A00480065006C00700001002600480065006C0070000100
      48006A00E4006C0070000100010001000D000A00730074005300740072006900
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
    NumOfLanguages = 4
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English'
      'VE_Svenska')
    Language = 'Origin'
    UseDefaultLanguage = True
    OnLanguageChanged = siLangDispatcher1LanguageChanged
    Left = 120
    Top = 40
  end
end
