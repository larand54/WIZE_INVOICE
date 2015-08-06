object fSelectLIP: TfSelectLIP
  Left = 243
  Top = 107
  ActiveControl = lcPIP
  BorderStyle = bsDialog
  Caption = 'V'#228'lj lager'
  ClientHeight = 222
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 16
    Top = 32
    Caption = 'Lagerst'#228'lle:'
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 64
    Caption = 'Lagergrupp:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 181
    Width = 449
    Height = 41
    Align = alBottom
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object lcPIP: TcxDBLookupComboBox
    Left = 88
    Top = 24
    DataBinding.DataField = 'PIP'
    DataBinding.DataSource = dsProps
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 0
    Width = 345
  end
  object lcLIP: TcxDBLookupComboBox
    Left = 88
    Top = 56
    DataBinding.DataField = 'LIP'
    DataBinding.DataSource = dsProps
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 1
    Width = 345
  end
  object mtProps: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 89
    Top = 85
    object mtPropsFakturanr: TIntegerField
      FieldName = 'Fakturanr'
    end
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtPropsPIPNoChange
    end
    object mtPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPropsPIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = dm_UserProps.cds_PIP2
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = dm_UserProps.cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 89
    Top = 133
  end
  object siLangLinked_fSelectLIP: TsiLangLinked
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
    Left = 216
    Top = 112
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C00490050000100
      5600E4006C006A0020006C0061006700650072000100010001000D000A006300
      78004C006100620065006C00310001004C00610067006500720073007400E400
      6C006C0065003A000100010001000D000A00630078004C006100620065006C00
      320001004C006100670065007200670072007500700070003A00010001000100
      0D000A00420069007400420074006E00310001004F004B000100010001000D00
      0A00420069007400420074006E0032000100430061006E00630065006C000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A006D007400
      500072006F0070007300460061006B0074007500720061006E00720001004600
      61006B0074007500720061006E007200010001000D000A006D00740050007200
      6F00700073005000490050004E006F0001005000490050004E006F0001000100
      0D000A006D007400500072006F00700073004C00490050004E006F0001004C00
      490050004E006F00010001000D000A006D007400500072006F00700073005000
      490050000100500049005000010001000D000A006D007400500072006F007000
      73004C004900500001004C0049005000010001000D000A006D00740050007200
      6F00700073004F0077006E00650072004E006F0001004F0077006E0065007200
      4E006F00010001000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A0054006600530065006C006500630074004C00
      4900500001004D0053002000530061006E007300200053006500720069006600
      01004D0053002000530061006E00730020005300650072006900660001005400
      610068006F006D0061000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A006D007400500072006F00700073002E00
      560065007200730069006F006E00010037002E00360033002E00300030002000
      5300740061006E0064006100720064002000450064006900740069006F006E00
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      6600530065006C006500630074004C0049005000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A00}
  end
end
