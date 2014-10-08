object fConfirm: TfConfirm
  Left = 383
  Top = 191
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Bekr'#228'fta'
  ClientHeight = 255
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 255
    Align = alClient
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 16
      Top = 136
      Width = 145
      Height = 105
      Caption = 'Ja'
      Colors.Default = clGreen
      Colors.DefaultText = clWhite
      Colors.Pressed = clBlue
      Colors.PressedText = clWhite
      ModalResult = 6
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 168
      Top = 136
      Width = 137
      Height = 105
      Cancel = True
      Caption = 'Nej'
      Colors.Default = clRed
      Colors.DefaultText = clWhite
      Colors.Pressed = clBlue
      Colors.PressedText = clWhite
      ModalResult = 7
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 16
      Caption = 'cxLabel1'
      Constraints.MaxWidth = 297
      Constraints.MinWidth = 297
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Width = 297
    end
  end
  object siLangLinked_fConfirm: TsiLangLinked
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
    Left = 152
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660043006F006E006600690072006D00010042006500
      6B007200E400660074006100010001000D000A00630078004200750074007400
      6F006E00310001004A006100010001000D000A00630078004200750074007400
      6F006E00320001004E0065006A00010001000D000A00630078004C0061006200
      65006C0031000100630078004C006100620065006C003100010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A005400660043006F006E00
      6600690072006D0001004D0053002000530061006E0073002000530065007200
      69006600010001000D000A006300780042007500740074006F006E0031000100
      560065007200640061006E006100010001000D000A0063007800420075007400
      74006F006E0032000100560065007200640061006E006100010001000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660043006F00
      6E006600690072006D000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A006300780042007500740074006F00
      6E0031000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006300780042007500740074006F006E0032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00}
  end
end
