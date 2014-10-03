object fSelectShipper: TfSelectShipper
  Left = 362
  Top = 175
  Width = 412
  Height = 154
  ActiveControl = lcShipper
  Caption = 'V'#228'lj fraktf'#246'rare'
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
    Top = 77
    Width = 404
    Height = 50
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 114
      Top = 13
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 202
      Top = 13
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
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
    Version = '5.50'
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
end
