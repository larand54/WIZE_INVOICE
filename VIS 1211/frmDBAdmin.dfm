object dlgDBAdmin: TdlgDBAdmin
  Left = 273
  Top = 252
  BorderStyle = bsDialog
  Caption = 'Database Administration'
  ClientHeight = 204
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 393
    Height = 145
    Caption = 'Verity Information: '
    TabOrder = 0
    object Label2: TLabel
      Left = 33
      Top = 32
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'db User Name:'
    end
    object Label1: TLabel
      Left = 41
      Top = 56
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'db Password:'
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Remote Database:'
    end
    object Label6: TLabel
      Left = 240
      Top = 72
      Width = 135
      Height = 13
      Caption = '(Example: merlin12:vidadata)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 240
      Top = 48
      Width = 70
      Height = 13
      Caption = '(Example: 123)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 240
      Top = 24
      Width = 63
      Height = 13
      Caption = '(Example: sa)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 104
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Admin Password:'
    end
    object Label8: TLabel
      Left = 240
      Top = 104
      Width = 122
      Height = 13
      Caption = '(Change admin password)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object editUserName: TEdit
      Left = 112
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = RemoveHighlight
    end
    object editPassword: TEdit
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object editRemoteDataBase: TEdit
      Left = 112
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = RemoveHighlight
    end
    object editUserKey: TEdit
      Left = 112
      Top = 104
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
    end
  end
  object btnOK: TButton
    Left = 256
    Top = 168
    Width = 65
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 328
    Top = 168
    Width = 65
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object siLangLinked_dlgDBAdmin: TsiLangLinked
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
    Left = 200
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540064006C00670044004200410064006D0069006E000100
      440061007400610062006100730065002000410064006D0069006E0069007300
      740072006100740069006F006E000100010001000D000A00470072006F007500
      700042006F00780031000100560065007200690074007900200049006E006600
      6F0072006D006100740069006F006E003A0020000100010001000D000A004C00
      6100620065006C0032000100640062002000550073006500720020004E006100
      6D0065003A000100010001000D000A004C006100620065006C00310001006400
      62002000500061007300730077006F00720064003A000100010001000D000A00
      4C006100620065006C0033000100520065006D006F0074006500200044006100
      7400610062006100730065003A000100010001000D000A004C00610062006500
      6C003600010028004500780061006D0070006C0065003A0020006D0065007200
      6C0069006E00310032003A007600690064006100640061007400610029000100
      010001000D000A004C006100620065006C003500010028004500780061006D00
      70006C0065003A00200031003200330029000100010001000D000A004C006100
      620065006C003400010028004500780061006D0070006C0065003A0020007300
      610029000100010001000D000A004C006100620065006C003700010041006400
      6D0069006E002000500061007300730077006F00720064003A00010001000100
      0D000A004C006100620065006C003800010028004300680061006E0067006500
      2000610064006D0069006E002000700061007300730077006F00720064002900
      0100010001000D000A00620074006E004F004B00010026004F004B0001000100
      01000D000A00620074006E00430061006E00630065006C000100260043006100
      6E00630065006C000100010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A00540064006C00670044004200410064006D0069006E000100
      4D0053002000530061006E00730020005300650072006900660001004D005300
      2000530061006E00730020005300650072006900660001005400610068006F00
      6D0061000D000A004C006100620065006C00360001004D005300200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      0D000A004C006100620065006C00350001004D0053002000530061006E007300
      200053006500720069006600010001005400610068006F006D0061000D000A00
      4C006100620065006C00340001004D0053002000530061006E00730020005300
      6500720069006600010001005400610068006F006D0061000D000A004C006100
      620065006C00380001004D0053002000530061006E0073002000530065007200
      69006600010001005400610068006F006D0061000D000A00730074004D007500
      6C00740069004C0069006E00650073005F0055006E00690063006F0064006500
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A00540064006C0067004400420041006400
      6D0069006E000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A004C006100620065006C00360001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C0035000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A004C006100620065006C00340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C0038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00}
  end
end
