object fSelectPrintDevice: TfSelectPrintDevice
  Left = 602
  Top = 276
  BorderStyle = bsDialog
  Caption = 'V'#228'lj enhet'
  ClientHeight = 347
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object bSkrivare: TcxButton
    Left = 24
    Top = 48
    Width = 200
    Height = 81
    Caption = 'Skrivare'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = bSkrivareClick
  end
  object bBildskarm: TcxButton
    Left = 24
    Top = 144
    Width = 200
    Height = 81
    Caption = 'Bildsk'#228'rm'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = bBildskarmClick
  end
  object bAngra: TcxButton
    Left = 24
    Top = 240
    Width = 200
    Height = 81
    Caption = #197'ngra'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = bAngraClick
  end
  object seNoOfCopies: TcxDBSpinEdit
    Left = 104
    Top = 8
    DataBinding.DataField = 'CopyPcs'
    DataBinding.DataSource = dmcOrder.ds_Props
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 24
    Top = 16
    Caption = 'Kopior:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object siLangLinked_fSelectPrintDevice: TsiLangLinked
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
    Left = 112
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074005000720069006E00
      740044006500760069006300650001005600E4006C006A00200065006E006800
      65007400010001000D000A00620053006B007200690076006100720065000100
      53006B00720069007600610072006500010001000D000A006200420069006C00
      640073006B00610072006D000100420069006C00640073006B00E40072006D00
      010001000D000A00620041006E006700720061000100C5006E00670072006100
      010001000D000A00630078004C006100620065006C00310001004B006F007000
      69006F0072003A00010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A0054006600530065006C006500630074005000720069006E007400
      44006500760069006300650001004D0053002000530061006E00730020005300
      6500720069006600010001000D000A00620053006B0072006900760061007200
      65000100560065007200640061006E006100010001000D000A00620042006900
      6C00640073006B00610072006D000100560065007200640061006E0061000100
      01000D000A00620041006E006700720061000100560065007200640061006E00
      6100010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A0054006600530065006C006500630074005000720069006E00740044006500
      76006900630065000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00620053006B0072006900760061007200
      65000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A006200420069006C00640073006B00610072006D000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00620041006E006700720061000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00}
  end
end
