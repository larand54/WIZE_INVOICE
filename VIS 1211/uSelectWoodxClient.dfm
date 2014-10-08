object fSelectWoodxClient: TfSelectWoodxClient
  Left = 229
  Top = 107
  ActiveControl = lcVisClientName
  Caption = 'V'#228'lj vis klient'
  ClientHeight = 191
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object teWoodx_Name1: TcxDBTextEdit
    Left = 104
    Top = 48
    DataBinding.DataField = 'WoodX_ClientName'
    DataBinding.DataSource = dm_ImportWoodx.ds_mtClient
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 305
  end
  object tePartyIdentifier: TcxDBTextEdit
    Left = 104
    Top = 72
    DataBinding.DataField = 'PartyIdentifier'
    DataBinding.DataSource = dm_ImportWoodx.ds_mtClient
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 305
  end
  object lcVisClientName: TcxDBLookupComboBox
    Left = 104
    Top = 104
    DataBinding.DataField = 'VisClientName'
    DataBinding.DataSource = dm_ImportWoodx.ds_mtClient
    Properties.ListColumns = <>
    TabOrder = 2
    Width = 305
  end
  object Panel1: TPanel
    Left = 0
    Top = 150
    Width = 438
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 161
    ExplicitWidth = 446
    object BitBtn1: TBitBtn
      Left = 128
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object cxLabel3: TcxLabel
    Left = 32
    Top = 76
    Caption = 'Er identifier:'
  end
  object cxLabel1: TcxLabel
    Left = 32
    Top = 52
    Caption = 'Ert namn:'
  end
  object cxLabel2: TcxLabel
    Left = 32
    Top = 108
    Caption = 'VIS namn:'
  end
  object siLangLinked_fSelectWoodxClient: TsiLangLinked
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
    Left = 216
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C0065006300740057006F006F006400
      780043006C00690065006E00740001005600E4006C006A002000760069007300
      20006B006C00690065006E007400010001000D000A0042006900740042007400
      6E00310001004F004B00010001000D000A00420069007400420074006E003200
      0100430061006E00630065006C00010001000D000A00630078004C0061006200
      65006C00330001004500720020006900640065006E0074006900660069006500
      72003A00010001000D000A00630078004C006100620065006C00310001004500
      7200740020006E0061006D006E003A00010001000D000A00630078004C006100
      620065006C003200010056004900530020006E0061006D006E003A0001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066005300
      65006C0065006300740057006F006F006400780043006C00690065006E007400
      01004D0053002000530061006E00730020005300650072006900660001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A007300740053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      530065006C0065006300740057006F006F006400780043006C00690065006E00
      74000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00}
  end
end
