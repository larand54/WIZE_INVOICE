object fScanLoadPkgNo: TfScanLoadPkgNo
  Left = 291
  Top = 335
  ActiveControl = ePktNr
  Caption = 'L'#228's paketnummer med streckkodsl'#228'sare'
  ClientHeight = 161
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 96
    Width = 393
    Height = 13
    AutoSize = False
  end
  object ePktNr: TEdit
    Left = 103
    Top = 48
    Width = 193
    Height = 21
    TabOrder = 0
    OnKeyPress = ePktNrKeyPress
  end
  object bbOK: TBitBtn
    Left = 152
    Top = 128
    Width = 97
    Height = 33
    Caption = 'Klar'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 1
  end
  object cbEgenLevKod: TCheckBox
    Left = 56
    Top = 16
    Width = 305
    Height = 17
    Caption = 'Scanna endast in paket med leverant'#246'rskod '
    TabOrder = 2
  end
  object siLangLinked_fScanLoadPkgNo: TsiLangLinked
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
    Left = 200
    Top = 88
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005300630061006E004C006F006100640050006B00
      67004E006F0001004C00E40073002000700061006B00650074006E0075006D00
      6D006500720020006D00650064002000730074007200650063006B006B006F00
      640073006C00E40073006100720065000100010001000D000A00620062004F00
      4B0001004B006C00610072000100010001000D000A0063006200450067006500
      6E004C00650076004B006F00640001005300630061006E006E00610020006500
      6E006400610073007400200069006E002000700061006B006500740020006D00
      6500640020006C00650076006500720061006E007400F600720073006B006F00
      640020000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A00540066005300630061006E004C006F006100640050006B0067004E00
      6F0001004D0053002000530061006E0073002000530065007200690066000100
      4D0053002000530061006E007300200053006500720069006600010054006100
      68006F006D0061000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00540066005300630061006E004C006F006100640050006B0067004E00
      6F000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00}
  end
end
