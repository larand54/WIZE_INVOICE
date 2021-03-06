object fPrintTest: TfPrintTest
  Left = 0
  Top = 0
  Caption = 'fPrintTest'
  ClientHeight = 682
  ClientWidth = 1202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lb_Name: TLabel
    Left = 17
    Top = 43
    Width = 63
    Height = 13
    Caption = 'Report Name'
  end
  object lbRPTFilePath: TLabel
    Left = 16
    Top = 89
    Width = 74
    Height = 13
    Caption = 'Report FilePath'
  end
  object lb_ReportOptions: TLabel
    Left = 16
    Top = 177
    Width = 73
    Height = 13
    Caption = 'Report Options'
  end
  object Label1: TLabel
    Left = 16
    Top = 254
    Width = 70
    Height = 13
    Caption = 'PDF StorePath'
  end
  object lb_PrintSetUp: TLabel
    Left = 16
    Top = 313
    Width = 54
    Height = 13
    Caption = 'Print SetUp'
  end
  object lb_Parameters: TLabel
    Left = 16
    Top = 407
    Width = 55
    Height = 13
    Caption = 'Parameters'
  end
  object ServerName: TLabel
    Left = 272
    Top = 48
    Width = 59
    Height = 13
    Caption = 'ServerName'
  end
  object DatabaseName: TLabel
    Left = 272
    Top = 89
    Width = 73
    Height = 13
    Caption = 'DatabaseName'
  end
  object lbUserID: TLabel
    Left = 272
    Top = 137
    Width = 33
    Height = 13
    Caption = 'UserID'
  end
  object lbPassword: TLabel
    Left = 272
    Top = 177
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object cxButton1: TcxButton
    Left = 304
    Top = 251
    Width = 193
    Height = 81
    Caption = 'Print'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object ed_ReportName: TEdit
    Left = 106
    Top = 40
    Width = 167
    Height = 21
    TabOrder = 1
    Text = 'FAKTURA_ENG_VER3'
  end
  object edRPTFilePath: TEdit
    Left = 106
    Top = 86
    Width = 160
    Height = 21
    TabOrder = 2
    Text = 'C:\VIS\CrystalReports\'
  end
  object rg_ReportOptions: TRadioGroup
    Left = 106
    Top = 137
    Width = 117
    Height = 93
    Caption = 'Report Options'
    ItemIndex = 0
    Items.Strings = (
      'View Report'
      'PrintSetUp'
      'Save PDF')
    TabOrder = 3
    OnClick = rg_ReportOptionsClick
  end
  object edStorePath: TEdit
    Left = 105
    Top = 251
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'C:\Users\Public\Documents\'
  end
  object rg_PrintSetUp: TRadioGroup
    Left = 106
    Top = 291
    Width = 117
    Height = 64
    Caption = 'Print SetUp'
    ItemIndex = 1
    Items.Strings = (
      'Default Printer'
      'Choose Printer')
    TabOrder = 5
    OnClick = rg_PrintSetUpClick
  end
  object lbx_Parameters: TListBox
    Left = 105
    Top = 373
    Width = 121
    Height = 97
    ItemHeight = 13
    MultiSelect = True
    TabOrder = 6
  end
  object edServerName: TEdit
    Left = 376
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'carmak-speed\sqlexpress'
  end
  object edDBName: TEdit
    Left = 376
    Top = 86
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'vis_vida'
  end
  object edUserID: TEdit
    Left = 376
    Top = 134
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'sa'
  end
  object edPassword: TEdit
    Left = 376
    Top = 174
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'woods2011'
  end
  object bt_AddParams: TButton
    Left = 106
    Top = 476
    Width = 53
    Height = 25
    Caption = 'Add'
    TabOrder = 11
  end
  object bt_ClearParams: TButton
    Left = 165
    Top = 476
    Width = 58
    Height = 25
    Caption = 'Clear'
    TabOrder = 12
    OnClick = bt_ClearParamsClick
  end
  object chkSecurity: TCheckBox
    Left = 376
    Top = 213
    Width = 121
    Height = 17
    Caption = 'Integrated Security'
    TabOrder = 13
  end
  object DelphiHostPanel: TPanel
    Left = 596
    Top = 0
    Width = 606
    Height = 682
    Align = alRight
    AutoSize = True
    BevelKind = bkSoft
    Caption = 'DelphiHostPanel'
    TabOrder = 14
  end
  object siLangLinked_fPrintTest: TsiLangLinked
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
    Left = 592
    Top = 344
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000720069006E00740054006500730074000100
      66005000720069006E00740054006500730074000100010001000D000A006C00
      62005F004E0061006D00650001005200650070006F007200740020004E006100
      6D0065000100010001000D000A006C006200520050005400460069006C006500
      500061007400680001005200650070006F00720074002000460069006C006500
      50006100740068000100010001000D000A006C0062005F005200650070006F00
      720074004F007000740069006F006E00730001005200650070006F0072007400
      20004F007000740069006F006E0073000100010001000D000A004C0061006200
      65006C00310001005000440046002000530074006F0072006500500061007400
      68000100010001000D000A006C0062005F005000720069006E00740053006500
      74005500700001005000720069006E0074002000530065007400550070000100
      010001000D000A006C0062005F0050006100720061006D006500740065007200
      7300010050006100720061006D00650074006500720073000100010001000D00
      0A005300650072007600650072004E0061006D00650001005300650072007600
      650072004E0061006D0065000100010001000D000A0044006100740061006200
      6100730065004E0061006D006500010044006100740061006200610073006500
      4E0061006D0065000100010001000D000A006C00620055007300650072004900
      440001005500730065007200490044000100010001000D000A006C0062005000
      61007300730077006F00720064000100500061007300730077006F0072006400
      0100010001000D000A006300780042007500740074006F006E00310001005000
      720069006E0074000100010001000D000A00720067005F005200650070006F00
      720074004F007000740069006F006E00730001005200650070006F0072007400
      20004F007000740069006F006E0073000100010001000D000A00720067005F00
      5000720069006E0074005300650074005500700001005000720069006E007400
      2000530065007400550070000100010001000D000A00620074005F0041006400
      640050006100720061006D00730001004100640064000100010001000D000A00
      620074005F0043006C0065006100720050006100720061006D00730001004300
      6C006500610072000100010001000D000A00630068006B005300650063007500
      7200690074007900010049006E00740065006700720061007400650064002000
      530065006300750072006900740079000100010001000D000A00440065006C00
      70006800690048006F0073007400500061006E0065006C000100440065006C00
      70006800690048006F0073007400500061006E0065006C000100010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660050007200
      69006E007400540065007300740001005400610068006F006D00610001005400
      610068006F006D00610001005400610068006F006D0061000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A00720067005F005200650070006F00720074004F0070007400
      69006F006E0073002E004900740065006D007300010022005600690065007700
      20005200650070006F007200740022002C005000720069006E00740053006500
      7400550070002C00220053006100760065002000500044004600220001000100
      0D000A00720067005F005000720069006E007400530065007400550070002E00
      4900740065006D00730001002200440065006600610075006C00740020005000
      720069006E0074006500720022002C002200430068006F006F00730065002000
      5000720069006E007400650072002200010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00650064005F005200650070006F0072007400
      4E0061006D0065002E0054006500780074000100460041004B00540055005200
      41005F0045004E0047005F005600450052003300010001000D000A0065006400
      520050005400460069006C00650050006100740068002E005400650078007400
      010043003A005C005600490053005C004300720079007300740061006C005200
      650070006F007200740073005C00010001000D000A0065006400530074006F00
      7200650050006100740068002E005400650078007400010043003A005C005500
      73006500720073005C005000750062006C00690063005C0044006F0063007500
      6D0065006E00740073005C00010001000D000A00650064005300650072007600
      650072004E0061006D0065002E00540065007800740001006300610072006D00
      61006B002D00730070006500650064005C00730071006C006500780070007200
      650073007300010001000D000A0065006400440042004E0061006D0065002E00
      540065007800740001007600690073005F007600690064006100010001000D00
      0A00650064005500730065007200490044002E00540065007800740001007300
      6100010001000D000A0065006400500061007300730077006F00720064002E00
      5400650078007400010077006F006F0064007300320030003100310001000100
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066005000
      720069006E00740054006500730074000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
end
