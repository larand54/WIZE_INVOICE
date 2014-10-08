object FormEnterInvoiceNo: TFormEnterInvoiceNo
  Left = 592
  Top = 542
  ActiveControl = eFakturanr
  Caption = 'Enter Invoice Number'
  ClientHeight = 127
  ClientWidth = 337
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
  object BitBtn1: TBitBtn
    Left = 88
    Top = 96
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 96
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
  object eFakturanr: TcxMaskEdit
    Left = 104
    Top = 8
    Properties.MaxLength = 10
    TabOrder = 0
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 40
    Top = 14
    Caption = 'Fakturanr:'
  end
  object ePrefix: TcxMaskEdit
    Left = 104
    Top = 40
    TabOrder = 1
    Visible = False
    Width = 121
  end
  object LPrefix: TcxLabel
    Left = 40
    Top = 46
    Caption = 'Prefix:'
    Visible = False
  end
  object siLangLinked_FormEnterInvoiceNo: TsiLangLinked
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
    Left = 160
    Top = 72
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D0045006E0074006500720049006E00
      76006F006900630065004E006F00010045006E00740065007200200049006E00
      76006F0069006300650020004E0075006D00620065007200010001000D000A00
      420069007400420074006E00310001004F004B00010001000D000A0042006900
      7400420074006E0032000100430061006E00630065006C00010001000D000A00
      630078004C006100620065006C0031000100460061006B007400750072006100
      6E0072003A00010001000D000A004C0050007200650066006900780001005000
      720065006600690078003A00010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A00540046006F0072006D0045006E007400650072004900
      6E0076006F006900630065004E006F0001004D0053002000530061006E007300
      200053006500720069006600010001000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A00540046006F0072006D0045006E00740065007200
      49006E0076006F006900630065004E006F000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00}
  end
end
