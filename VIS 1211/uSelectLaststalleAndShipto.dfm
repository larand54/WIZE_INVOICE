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
    Left = 192
    Top = 96
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C00610073007400
      5300740061006C006C00650041006E006400530068006900700054006F000100
      5600E4006C006A0020006C0061007300740073007400E4006C006C0065002000
      260026002000640065007300740069006E006100740069006F006E0001000100
      01000D000A004C006100620065006C00310001004C0061007300740073007400
      E4006C006C0065003A000100010001000D000A004C006100620065006C003200
      0100440065007300740069006E006100740069006F006E003A00010001000100
      0D000A00420069007400420074006E00310001004F004B000100010001000D00
      0A00420069007400420074006E0032000100430061006E00630065006C000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A006D007400
      53006800690070007000650072004C006F00630061006C004C006F0061006400
      69006E0067004C006F0063006100740069006F006E0001004C006F0063006100
      6C004C006F006100640069006E0067004C006F0063006100740069006F006E00
      010001000D000A006D00740053006800690070007000650072004C006F006300
      61006C00440065007300740069006E006100740069006F006E004E006F000100
      4C006F00630061006C00440065007300740069006E006100740069006F006E00
      4E006F00010001000D000A006D00740053006800690070007000650072004C00
      6100730074007300740061006C006C00650001004C0061007300740073007400
      61006C006C006500010001000D000A006D007400530068006900700070006500
      7200440065007300740069006E006100740069006F006E000100440065007300
      740069006E006100740069006F006E00010001000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066005300
      65006C006500630074004C006100730074005300740061006C006C0065004100
      6E006400530068006900700054006F0001004D0053002000530061006E007300
      20005300650072006900660001004D0053002000530061006E00730020005300
      650072006900660001005400610068006F006D0061000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A006D007400
      53006800690070007000650072002E00560065007200730069006F006E000100
      37002E00360033002E003000300020005300740061006E006400610072006400
      2000450064006900740069006F006E00010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A0054006600530065006C006500630074004C00
      6100730074005300740061006C006C00650041006E0064005300680069007000
      54006F000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00}
  end
end
