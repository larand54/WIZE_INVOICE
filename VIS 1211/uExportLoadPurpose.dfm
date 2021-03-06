object fExportLoadPurpose: TfExportLoadPurpose
  Left = 405
  Top = 190
  ClientHeight = 252
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rgPurpose: TcxRadioGroup
    Left = 48
    Top = 32
    Caption = 'V'#228'lj typ av indlagring'
    Properties.Items = <
      item
        Caption = 'Indlagres uden behandling'
        Value = 0
      end
      item
        Caption = 'Inlagres for behandling'
        Value = 1
      end>
    TabOrder = 0
    Height = 113
    Width = 353
  end
  object Panel1: TPanel
    Left = 0
    Top = 197
    Width = 445
    Height = 55
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 136
      Top = 8
      Width = 75
      Height = 33
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 8
      Width = 75
      Height = 33
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object siLangLinked_fExportLoadPurpose: TsiLangLinked
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
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A007200670050007500720070006F007300650001005600E400
      6C006A002000740079007000200061007600200069006E0064006C0061006700
      720069006E006700010001000D000A00420069007400420074006E0031000100
      4F004B00010001000D000A00420069007400420074006E003200010043006100
      6E00630065006C00010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A00540066004500780070006F00720074004C006F00610064005000
      7500720070006F007300650001004D0053002000530061006E00730020005300
      650072006900660001004D0053002000530061006E0073002000530065007200
      6900660001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00720067005000
      7500720070006F00730065002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0030005D002E0043006100700074006900
      6F006E00010049006E0064006C00610067007200650073002000750064006500
      6E00200062006500680061006E0064006C0069006E006700010001000D000A00
      7200670050007500720070006F00730065002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0031005D002E0043006100
      7000740069006F006E00010049006E006C006100670072006500730020006600
      6F007200200062006500680061006E0064006C0069006E006700010001000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A00540066004500780070006F00720074004C006F006100
      640050007500720070006F00730065000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00}
  end
end
