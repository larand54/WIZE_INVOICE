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
    DefaultLanguage = 2
    NumOfLanguages = 3
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Swedish'
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
      20006B006C00690065006E00740001005600E4006C006A002000760069007300
      20006B006C00690065006E007400010001000D000A0042006900740042007400
      6E00310001004F004B000100010001000D000A00420069007400420074006E00
      32000100430061006E00630065006C000100010001000D000A00630078004C00
      6100620065006C00330001004500720020006900640065006E00740069006600
      6900650072003A000100010001000D000A00630078004C006100620065006C00
      3100010045007200740020006E0061006D006E003A000100010001000D000A00
      630078004C006100620065006C003200010056004900530020006E0061006D00
      6E003A000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A0054006600530065006C0065006300740057006F006F00640078004300
      6C00690065006E00740001004D0053002000530061006E007300200053006500
      72006900660001004D0053002000530061006E00730020005300650072006900
      660001005400610068006F006D0061000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A0054006600530065006C0065006300740057006F00
      6F006400780043006C00690065006E0074000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00}
  end
end
