object fSelectShipper: TfSelectShipper
  Left = 362
  Top = 175
  ActiveControl = lcShipper
  Caption = 'V'#228'lj fraktf'#246'rare'
  ClientHeight = 116
  ClientWidth = 396
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
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 51
    Height = 13
    Caption = 'Fraktf'#246'rare'
  end
  object lcShipper: TcxDBLookupComboBox
    Left = 96
    Top = 24
    DataBinding.DataField = 'ClientNo'
    DataBinding.DataSource = dsShipper
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'ClientNo'
    Properties.ListColumns = <
      item
        FieldName = 'ClientName'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dmsContact.ds_LocalShipper
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 0
    Width = 233
  end
  object Panel1: TPanel
    Left = 0
    Top = 66
    Width = 396
    Height = 50
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 114
      Top = 13
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 202
      Top = 13
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object mtShipper: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 48
    Top = 32
    object mtShipperClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtShipperShipper: TStringField
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupDataSet = dmsContact.cds_LocalShipper
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
  object dsShipper: TDataSource
    DataSet = mtShipper
    Left = 48
    Top = 64
  end
  object siLangLinked_fSelectShipper: TsiLangLinked
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
    Left = 192
    Top = 64
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074005300680069007000
      70006500720001005600E4006C006A0020006600720061006B0074006600F600
      72006100720065000100010001000D000A004C006100620065006C0031000100
      4600720061006B0074006600F60072006100720065000100010001000D000A00
      420069007400420074006E00310001004F004B000100010001000D000A004200
      69007400420074006E0032000100430061006E00630065006C00010001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A006D00740053006800
      6900700070006500720043006C00690065006E0074004E006F00010043006C00
      690065006E0074004E006F00010001000D000A006D0074005300680069007000
      7000650072005300680069007000700065007200010053006800690070007000
      65007200010001000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A0054006600530065006C006500630074005300
      68006900700070006500720001004D0053002000530061006E00730020005300
      650072006900660001004D0053002000530061006E0073002000530065007200
      6900660001005400610068006F006D0061000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006C00630053006800
      690070007000650072002E00500072006F007000650072007400690065007300
      2E004B00650079004600690065006C0064004E0061006D006500730001004300
      6C00690065006E0074004E006F00010001000D000A006C006300530068006900
      70007000650072002E00500072006F0070006500720074006900650073002E00
      4C006900730074004600690065006C0064004E0061006D006500730001004300
      6C00690065006E0074004E0061006D006500010001000D000A006D0074005300
      6800690070007000650072002E00560065007200730069006F006E0001003700
      2E00360033002E003000300020005300740061006E0064006100720064002000
      450064006900740069006F006E00010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A006C00630053006800690070007000650072002E00500072006F007000
      6500720074006900650073002E004C0069007300740043006F006C0075006D00
      6E0073005B0030005D002E00430061007000740069006F006E00010043006C00
      690065006E0074004E0061006D006500010001000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      54006600530065006C0065006300740053006800690070007000650072000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00}
  end
end
