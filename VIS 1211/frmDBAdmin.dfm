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
    Left = 200
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540064006C00670044004200410064006D0069006E000100
      440061007400610062006100730065002000410064006D0069006E0069007300
      740072006100740069006F006E00010001000D000A00470072006F0075007000
      42006F00780031000100560065007200690074007900200049006E0066006F00
      72006D006100740069006F006E003A002000010001000D000A004C0061006200
      65006C0032000100640062002000550073006500720020004E0061006D006500
      3A00010001000D000A004C006100620065006C00310001006400620020005000
      61007300730077006F00720064003A00010001000D000A004C00610062006500
      6C0033000100520065006D006F00740065002000440061007400610062006100
      730065003A00010001000D000A004C006100620065006C003600010028004500
      780061006D0070006C0065003A0020006D00650072006C0069006E0031003200
      3A00760069006400610064006100740061002900010001000D000A004C006100
      620065006C003500010028004500780061006D0070006C0065003A0020003100
      320033002900010001000D000A004C006100620065006C003400010028004500
      780061006D0070006C0065003A002000730061002900010001000D000A004C00
      6100620065006C0037000100410064006D0069006E0020005000610073007300
      77006F00720064003A00010001000D000A004C006100620065006C0038000100
      28004300680061006E00670065002000610064006D0069006E00200070006100
      7300730077006F00720064002900010001000D000A00620074006E004F004B00
      010026004F004B00010001000D000A00620074006E00430061006E0063006500
      6C0001002600430061006E00630065006C00010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A00540064006C0067004400420041006400
      6D0069006E0001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A004C006100620065006C00360001004D00530020005300
      61006E007300200053006500720069006600010001000D000A004C0061006200
      65006C00350001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A004C006100620065006C00340001004D00530020005300
      61006E007300200053006500720069006600010001000D000A004C0061006200
      65006C00380001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00540064006C00670044004200410064006D0069006E000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      4C006100620065006C0036000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A004C006100620065006C003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A004C006100620065006C003400010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A004C006100
      620065006C0038000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00}
  end
end
