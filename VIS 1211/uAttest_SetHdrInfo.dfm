object fAttest_SetHdrInfo: TfAttest_SetHdrInfo
  Left = 359
  Top = 295
  ActiveControl = teSupplier_InvoiceNo
  Caption = 'Godk'#228'nn'
  ClientHeight = 373
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object meSupplier_InvoiceDate: TcxMaskEdit
    Left = 112
    Top = 168
    Properties.EditMask = '!99/99/00;1;_'
    Properties.MaxLength = 0
    TabOrder = 2
    Text = '  -  -  '
    Width = 121
  end
  object teSupplier_InvoiceNo: TcxTextEdit
    Left = 112
    Top = 120
    TabOrder = 1
    Width = 273
  end
  object memoNote: TcxMemo
    Left = 112
    Top = 216
    TabOrder = 3
    Height = 73
    Width = 329
  end
  object cxLabel1: TcxLabel
    Left = 112
    Top = 104
    Caption = 'Leverant'#246'rens fakturanr'
  end
  object cxLabel2: TcxLabel
    Left = 112
    Top = 152
    Caption = 'Leverant'#246'rens fakturadatum('#229'r-mm-dd)'
  end
  object cxLabel3: TcxLabel
    Left = 112
    Top = 200
    Caption = 'Intern'
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 320
    Width = 84
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 7
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 320
    Width = 84
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 8
    OnClick = BitBtn2Click
  end
  object cxLabel4: TcxLabel
    Left = 112
    Top = 8
    Caption = 'Belopp:'
  end
  object labelAmount: TcxLabel
    Left = 160
    Top = 8
    Caption = '0.0'
  end
  object lcShipper: TcxDBLookupComboBox
    Left = 112
    Top = 64
    DataBinding.DataField = 'Shipper'
    DataBinding.DataSource = dsMemSped
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 0
    Width = 321
  end
  object cxLabel5: TcxLabel
    Left = 112
    Top = 48
    Caption = 'Spedit'#246'r'
  end
  object MemSped: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 32
    Top = 48
    object MemSpedShipperNO: TIntegerField
      FieldName = 'ShipperNO'
    end
    object MemSpedShipper: TStringField
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupDataSet = dmsContact.cds_ActShippers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ShipperNO'
      Size = 80
      Lookup = True
    end
  end
  object dsMemSped: TDataSource
    DataSet = MemSped
    Left = 32
    Top = 80
  end
end
