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
end
