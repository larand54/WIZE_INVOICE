object fSelectLastStalleAndShipTo: TfSelectLastStalleAndShipTo
  Left = 362
  Top = 175
  ActiveControl = lcLaststalle
  Caption = 'V'#228'lj lastst'#228'lle && destination'
  ClientHeight = 174
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
    Width = 47
    Height = 13
    Caption = 'Lastst'#228'lle:'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 56
    Height = 13
    Caption = 'Destination:'
  end
  object lcLaststalle: TcxDBLookupComboBox
    Left = 96
    Top = 24
    DataBinding.DataField = 'Laststalle'
    DataBinding.DataSource = dsShipper
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 0
    Width = 233
  end
  object Panel1: TPanel
    Left = 0
    Top = 124
    Width = 396
    Height = 50
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 135
    ExplicitWidth = 404
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
  object lcDestination: TcxDBLookupComboBox
    Left = 96
    Top = 56
    DataBinding.DataField = 'Destination'
    DataBinding.DataSource = dsShipper
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dmsContact.ds_LocalShipper
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 1
    Width = 233
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
    Left = 344
    Top = 56
    object mtShipperLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
    end
    object mtShipperLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
    end
    object mtShipperLaststalle: TStringField
      FieldKind = fkLookup
      FieldName = 'Laststalle'
      LookupDataSet = dmsContact.cdsCities
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'LocalLoadingLocation'
      Size = 50
      Lookup = True
    end
    object mtShipperDestination: TStringField
      FieldKind = fkLookup
      FieldName = 'Destination'
      LookupDataSet = dmsContact.cdsCities
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'LocalDestinationNo'
      Size = 50
      Lookup = True
    end
  end
  object dsShipper: TDataSource
    DataSet = mtShipper
    Left = 344
    Top = 88
  end
  object siLangLinked_fSelectLastStalleAndShipTo: TsiLangLinked
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
    Left = 192
    Top = 96
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C00610073007400
      5300740061006C006C00650041006E006400530068006900700054006F000100
      5600E4006C006A0020006C0061007300740073007400E4006C006C0065002000
      260026002000640065007300740069006E006100740069006F006E0001000100
      0D000A004C006100620065006C00310001004C0061007300740073007400E400
      6C006C0065003A00010001000D000A004C006100620065006C00320001004400
      65007300740069006E006100740069006F006E003A00010001000D000A004200
      69007400420074006E00310001004F004B00010001000D000A00420069007400
      420074006E0032000100430061006E00630065006C00010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A006D00740053006800690070007000
      650072004C006F00630061006C004C006F006100640069006E0067004C006F00
      63006100740069006F006E0001004C006F00630061006C004C006F0061006400
      69006E0067004C006F0063006100740069006F006E00010001000D000A006D00
      740053006800690070007000650072004C006F00630061006C00440065007300
      740069006E006100740069006F006E004E006F0001004C006F00630061006C00
      440065007300740069006E006100740069006F006E004E006F00010001000D00
      0A006D00740053006800690070007000650072004C0061007300740073007400
      61006C006C00650001004C006100730074007300740061006C006C0065000100
      01000D000A006D00740053006800690070007000650072004400650073007400
      69006E006100740069006F006E000100440065007300740069006E0061007400
      69006F006E00010001000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A0054006600530065006C00650063007400
      4C006100730074005300740061006C006C00650041006E006400530068006900
      700054006F0001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A006D00740053006800690070007000650072002E00
      560065007200730069006F006E00010037002E00360033002E00300030002000
      5300740061006E0064006100720064002000450064006900740069006F006E00
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      6600530065006C006500630074004C006100730074005300740061006C006C00
      650041006E006400530068006900700054006F00010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A00}
  end
end
