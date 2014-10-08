object fSelectAttBeskrivning: TfSelectAttBeskrivning
  Left = 372
  Top = 328
  ActiveControl = cbDescription
  Caption = 'V'#228'lj beskrivning'
  ClientHeight = 216
  ClientWidth = 462
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
  object Beskrivning: TcxLabel
    Left = 88
    Top = 76
    Caption = 'Beskrivning'
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 462
    Height = 65
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 162
    ExplicitWidth = 470
    object BitBtn1: TBitBtn
      Left = 168
      Top = 16
      Width = 97
      Height = 27
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object cbDescription: TcxDBComboBox
    Left = 168
    Top = 72
    DataBinding.DataField = 'Description'
    DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
    Properties.ImmediatePost = True
    Properties.Items.Strings = (
      'Arbete'
      'Vara')
    TabOrder = 2
    Width = 149
  end
  object siLangLinked_fSelectAttBeskrivning: TsiLangLinked
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
    Left = 224
    Top = 112
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004100740074004200
      650073006B007200690076006E0069006E00670001005600E4006C006A002000
      6200650073006B007200690076006E0069006E006700010001000D000A004200
      650073006B007200690076006E0069006E00670001004200650073006B007200
      690076006E0069006E006700010001000D000A00420069007400420074006E00
      310001004F004B00010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A0054006600530065006C0065006300740041007400740042006500
      73006B007200690076006E0069006E00670001004D0053002000530061006E00
      7300200053006500720069006600010001000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A00630062004400650073006300720069007000740069006F006E002E005000
      72006F0070006500720074006900650073002E004900740065006D0073000100
      4100720062006500740065002C005600610072006100010001000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A0054006600530065006C00650063007400410074007400
      4200650073006B007200690076006E0069006E00670001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A00}
  end
end
